package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class landing_page extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_landing_page);
        Button button10 = findViewById(R.id.button10);
        Button button12 = findViewById(R.id.button12);

        button10.setOnClickListener(view -> startActivity(new Intent(landing_page.this, Login.class)));
        button12.setOnClickListener(view -> startActivity(new Intent(landing_page.this, SignUp.class)));
    }


}