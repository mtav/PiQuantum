package com.example.piquantum;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Set;
import java.util.UUID;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private BluetoothAdapter adapter;
    private BluetoothSocket socket;
    private BluetoothDevice device;
    private TextView paired;
    private TextView discovered;
    private TextView connecting;
    private TextView uuids;
    private Button connect;
    //private Connect connect;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Buttons and textviews
        paired = (TextView) findViewById(R.id.paired);
        discovered = (TextView) findViewById(R.id.discovered);
        connecting = (TextView) findViewById(R.id.connecting);
        uuids = (TextView) findViewById(R.id.uuids);
        connect = (Button) findViewById(R.id.connect);

        // Register for broadcasts when a device is discovered.
        IntentFilter discovery_filter = new IntentFilter(BluetoothDevice.ACTION_FOUND);
        registerReceiver(discovery, discovery_filter);

        // Register for broadcasts when features are returned
        IntentFilter uuid_filter = new IntentFilter(BluetoothDevice.ACTION_UUID);
        registerReceiver(features, uuid_filter);

        // Get the device bluetooth adapter
        adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter == null) {
            // Device doesn't support Bluetooth
        }

        // A code which gets passed to the intent
        int REQUEST_ENABLE_BT = 1; // Must be greater than 0

        // Enable the bluetooth adapter
        if (!adapter.isEnabled()) {
            Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(enableBtIntent, REQUEST_ENABLE_BT);
        }

    }

    // Create a BroadcastReceiver for ACTION_FOUND.
    private final BroadcastReceiver discovery = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {

            String action = intent.getAction();
            if (BluetoothDevice.ACTION_FOUND.equals(action)) {
                // Discovery has found a device. Get the BluetoothDevice
                // object and its info from the Intent.
                device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                String deviceName = device.getName();
                String deviceHardwareAddress = device.getAddress(); // MAC address
                // Write device
                discovered.append(deviceName + ", " + deviceHardwareAddress + "\n");
                if(deviceHardwareAddress.equals(/*"B8:27:EB:2E:F1:3F"*//*"B8:27:EB:BD:A5:BF"*/"84:A6:C8:31:F9:F6")) {
                    boolean result = adapter.cancelDiscovery();
                    if(result == true) {
                        discovered.append("Cancelled device discovery\n");
                    }
                    // Get ready to requestb UUIDs
                    uuids.setText("UUIDs for: " + device.getName() +"\n");
                    // Start a feature request
                    device.fetchUuidsWithSdp();
                    // Enable the connect button
                    connect.setVisibility(View.VISIBLE);
                }


            }
        }
    };

    // Create a BroadcastReceiver for ACTION_UUID.
    private final BroadcastReceiver features = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {

            String action = intent.getAction();
            if (BluetoothDevice.ACTION_UUID.equals(action)) {
                // Found a feature
                if(!intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE).equals(device)) {
                    uuids.setText("Feature returned for wrong device\n");
                }
                Parcelable[] u = intent.getParcelableArrayExtra(BluetoothDevice.EXTRA_UUID);
                for(Parcelable uuid : u) {
                    uuids.append(uuid.toString() + "\n");
                }
            }
        }

    };

    public void connect(View view) {
        connecting.setText("Connecting to device: " + device.getName() + "\n");
        try {
            device.fetchUuidsWithSdp();

        } catch (Exception e) {
            connecting.append(e.getMessage());
        }
        //for (ParcelUuid uuid : uuids) {
        //    connecting.append("UUID: " + uuid.getUuid().toString());
        //}
        // UUID for serial protocol
        UUID uuid = UUID.fromString("00005005-0000-1000-8000-0002ee000001"/*"00000000-0000-0000-0000-0000cdab0000"*//*"0000110e-0000-1000-8000-00805F9B34FB"*/);
        // Connect to the device
        try {
            // Get a BluetoothSocket to connect with the given BluetoothDevice.
            // MY_UUID is the app's UUID string, also used in the server code.
            socket = device.createRfcommSocketToServiceRecord(uuid);
            if(socket == null) {
                connecting.append("Failed to make socket\n");
                return;
            }
        } catch (IOException e) {
            // Unable to connect; close the socket and return.
            connecting.append(e.getMessage() + "\n");
            Log.e(TAG, "Socket's create() method failed", e);
        }

        try {
            if(!socket.isConnected()) connecting.append("Socket not connected\n");
            // Connect to the remote device through the socket. This call blocks
            // until it succeeds or throws an exception.
            socket.connect();
        } catch (IOException connectException) {
            // Unable to connect; close the socket and return.
            connecting.append("Failed to connect to device: "
                            + connectException.getMessage() + "\n");
            try {
                socket.close();
            } catch (IOException closeException) {
                Log.e(TAG, "Could not close the client socket", closeException);
                connecting.append("Could not close socket: "
                        + connectException.getMessage() + "\n");
            }
            return;
        }
        // Connecting to device
        connecting.append("Successfully connected to device\n");
    }

    /** Called when the user touches the button */
    public void scan_bluetooth(View view) {

        Set<BluetoothDevice> pairedDevices = adapter.getBondedDevices();

        paired.setText("Paired devices:\n");

        // List the paired devices
        if (pairedDevices.size() > 0) {
            // There are paired devices. Get the name and address of each paired device.
            for (BluetoothDevice dev : pairedDevices) {
                // Get the device details
                String deviceName = dev.getName();
                String deviceHardwareAddress = dev.getAddress(); // MAC address
                paired.append(deviceName + ", " + deviceHardwareAddress + "\n");

                if(deviceHardwareAddress.equals("B8:27:EB:BD:A5:BF")) {
                    // Enable the connect button
                    connect.setVisibility(View.VISIBLE);
                    // Return -- must be a better way
                    return;
                }

            }
        }

        // Start discovery
        adapter.startDiscovery();
        discovered.setText("Discovered devices:\n");

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // Don't forget to unregister the ACTION_FOUND receiver.
        unregisterReceiver(discovery);
        unregisterReceiver(features);
    }

}

