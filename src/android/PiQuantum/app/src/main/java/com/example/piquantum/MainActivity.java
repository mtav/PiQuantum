package com.example.piquantum;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.lang.reflect.Type;
import java.util.Set;

public class MainActivity extends AppCompatActivity {

    private LinearLayout.LayoutParams lp;
    private LinearLayout layout;
    private BluetoothAdapter bluetoothAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Register for broadcasts when a device is discovered.
        IntentFilter filter = new IntentFilter(BluetoothDevice.ACTION_FOUND);
        registerReceiver(receiver, filter);

        // Get the activity layout
        layout = findViewById(R.id.layout);

        // Useful layout parameters
        lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );

        // Get the device bluetooth adapter
        bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothAdapter == null) {
            // Device doesn't support Bluetooth
        }

        // A code which gets passed to the intent
        int REQUEST_ENABLE_BT = 1; // Must be greater than 0

        // Enable the bluetooth adapter
        if (!bluetoothAdapter.isEnabled()) {
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
                BluetoothDevice device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                String deviceName = device.getName();
                String deviceHardwareAddress = device.getAddress(); // MAC address

                // Make a new textbox
                TextView tv = new TextView(context);
                if(deviceHardwareAddress.equals("B8:27:EB:BD:A5:BF")) {
                    tv.setTextColor(Color.parseColor("#7CFC00"));
                }
                tv.setText(deviceName + ", " + deviceHardwareAddress);
                layout.addView(tv);
                if(deviceHardwareAddress.equals("B8:27:EB:BD:A5:BF")) {
                    //set the properties for button
                    Button btnTag = new Button(context);
                    btnTag.setLayoutParams(lp);
                    btnTag.setText("Connect");
                    btnTag.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View v) {
                            // Connect to the device


                        }
                    });
                    layout.addView(btnTag);
                }


            }
        }
    };


    /** Called when the user touches the button */
    public void scan_bluetooth(View view) {

        Set<BluetoothDevice> pairedDevices = bluetoothAdapter.getBondedDevices();

        // Make a new textbox
        TextView tv = new TextView(this);
        tv.setLayoutParams(lp);
        tv.setTypeface(null, Typeface.BOLD);
        tv.setText("Paired devices:");
        layout.addView(tv);

        // List the paired devices
        if (pairedDevices.size() > 0) {
            // There are paired devices. Get the name and address of each paired device.
            for (BluetoothDevice device : pairedDevices) {
                // Get the device details
                String deviceName = device.getName();
                String deviceHardwareAddress = device.getAddress(); // MAC address

                // Make a new textbox
                TextView valueTV = new TextView(this);
                valueTV.setLayoutParams(lp);
                valueTV.setText(deviceName + ", " + deviceHardwareAddress);
                layout.addView(valueTV);
            }
        }

        // Start discovery
        bluetoothAdapter.startDiscovery();

        // Make a new textbox
        TextView dis = new TextView(this);
        dis.setText("Discovered devices:");
        tv.setLayoutParams(lp);
        dis.setTypeface(null, Typeface.BOLD);
        layout.addView(dis);

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // Don't forget to unregister the ACTION_FOUND receiver.
        unregisterReceiver(receiver);
    }

}

