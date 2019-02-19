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
        connect = (Button) findViewById(R.id.connect);

        // Register for broadcasts when a device is discovered.
        IntentFilter filter = new IntentFilter(BluetoothDevice.ACTION_FOUND);
        registerReceiver(receiver, filter);

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
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
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
                if(deviceHardwareAddress.equals("84:A6:C8:31:F9:F6"/*"B8:27:EB:BD:A5:BF"*/)) {
                    adapter.cancelDiscovery();
                    // Enable the connect button
                    connect.setVisibility(View.VISIBLE);
                }


            }
        }
    };

    public void connect(View view) {
        connecting.setText("Connecting to device...");
        // UUID for server
        UUID uuid = UUID.fromString("d364b420-8d71-11e3-baa8-0800200c9a66");
        // Connect to the device
        try {
            // Get a BluetoothSocket to connect with the given BluetoothDevice.
            // MY_UUID is the app's UUID string, also used in the server code.
            socket = device.createInsecureRfcommSocketToServiceRecord(uuid);
        } catch (IOException e) {
            Log.e(TAG, "Socket's create() method failed", e);
        }

        try {
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
            }
            return;
        }
        // Connecting to device
        connecting.append("Successfully connected to device\n");
    }

    /** Called when the user touches the button */
    public void scan_bluetooth(View view) {

        Set<BluetoothDevice> pairedDevices = adapter.getBondedDevices();

        paired.append("Paired devices:\n");

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
        unregisterReceiver(receiver);
    }

}

