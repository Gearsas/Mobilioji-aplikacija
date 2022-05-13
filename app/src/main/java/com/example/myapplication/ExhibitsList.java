package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class ExhibitsList extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_exhibits_list);
        Button button2 = findViewById(R.id.button4);
        TextView museumName = findViewById(R.id.textView2);
        museumName.setText(getIntent().getStringExtra("museum"));

        button2.setOnClickListener(view -> startActivity(new Intent(ExhibitsList.this, ExhibitScan.class)));
    }
}