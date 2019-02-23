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

    }

}
