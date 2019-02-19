package com.example.piquantum;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.IOException;
import java.util.UUID;

public class Connect implements View.OnClickListener {

    private BluetoothAdapter adapter;
    private BluetoothSocket socket;
    private BluetoothDevice device;
    private LinearLayout layout;
    private LinearLayout.LayoutParams lp;
    private Context context;
    private static final String TAG = "ConnectClass";

    public Connect(BluetoothAdapter adapter,
                   BluetoothDevice device,
                   LinearLayout layout,
                   Context context) {
        this.adapter = adapter;
        this.device = device;
        this.layout = layout;
        this.socket = null;
        this.context = context;

        // Useful layout parameters
        lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
        );

    }

    @Override
    public void onClick(View view) {
        // Connect to device
        TextView tv = new TextView(context);
        tv.setLayoutParams(lp);
        tv.setTypeface(null, Typeface.BOLD);
        tv.setText("Connecting to device...");
        layout.addView(tv);

        // UUID for server
        UUID uuid = UUID.fromString("d364b420-8d71-11e3-baa8-0800200c9a66");
        // Connect to the device
        try {
            // Get a BluetoothSocket to connect with the given BluetoothDevice.
            // MY_UUID is the app's UUID string, also used in the server code.
            socket = device.createRfcommSocketToServiceRecord(uuid);
        } catch (IOException e) {
            Log.e(TAG, "Socket's create() method failed", e);
        }

        try {
            // Connect to the remote device through the socket. This call blocks
            // until it succeeds or throws an exception.
            socket.connect();
        } catch (IOException connectException) {
            // Unable to connect; close the socket and return.
            try {
                socket.close();
            } catch (IOException closeException) {
                Log.e(TAG, "Could not close the client socket", closeException);
            }
            return;
        }
        // Connect to device
        TextView another = new TextView(context);
        another.setLayoutParams(lp);
        another.setText("Successfully connected to device");
        layout.addView(another);



    }

}
