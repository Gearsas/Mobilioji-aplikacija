package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class landing_page extends AppCompatActivity {

    private Button button10;
    private Button button12;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_landing_page);
        button10 = (Button) findViewById(R.id.button10);
        button12 = (Button) findViewById(R.id.button12);

        button10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openLogin();
            }
        });
        button12.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openSignUp();
            }

        });
    }

    public void  openLogin(){
        Intent intent4 = new Intent(this, Login.class ).putExtra("login", getIntent().getStringExtra("login"));
        startActivity(intent4);
    }
    public void  openSignUp(){
        Intent intent5 = new Intent(this, SignUp.class ).putExtra("signup", getIntent().getStringExtra("signup"));
        startActivity(intent5);
    }
}