package com.example.myapplication;

import android.Manifest;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.textfield.TextInputEditText;
import com.karumi.dexter.Dexter;
import com.karumi.dexter.PermissionToken;
import com.karumi.dexter.listener.PermissionDeniedResponse;
import com.karumi.dexter.listener.PermissionGrantedResponse;
import com.karumi.dexter.listener.PermissionRequest;
import com.karumi.dexter.listener.single.PermissionListener;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Objects;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Login extends AppCompatActivity {

    TextInputEditText username, password;
    Button btnLogin;
    boolean check = false;
    TextView btnRegister;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        checkMyPermision();
        username = findViewById(R.id.edUsername);
        password = findViewById(R.id.edPassword);
        btnLogin = findViewById(R.id.btnLogin);
        btnRegister = findViewById(R.id.RegisterText);

        btnLogin.setOnClickListener(view -> {

            if (TextUtils.isEmpty(Objects.requireNonNull(username.getText()).toString()) || TextUtils.isEmpty(Objects.requireNonNull(password.getText()).toString())) {
                Toast.makeText(Login.this, "Username / Password Required", Toast.LENGTH_LONG).show();
            } else {
                //proceed to login
                login();
            }

        });

        btnRegister.setOnClickListener(view -> startActivity(new Intent(Login.this, SignUp.class)));

    }

    public void login() {


        Call<LoginResponse> loginResponseCall = ApiClient.getUserService().userLogin(Objects.requireNonNull(username.getText()).toString(), Objects.requireNonNull(password.getText()).toString());
        loginResponseCall.enqueue(new Callback<LoginResponse>() {
            @Override
            public void onResponse(@NonNull Call<LoginResponse> call, @NonNull Response<LoginResponse> response) {

                if (response.isSuccessful()) {
                    LoginResponse loginResponse = response.body();
                    assert loginResponse != null;
                    byte[] arr1 = loginResponse.getResponse().getBytes(StandardCharsets.UTF_8);
                    String str1 = "Failed";
                    byte[] arr2 = str1.getBytes(StandardCharsets.UTF_8);

                    if (Arrays.equals(arr1, arr2)) {
                        Toast.makeText(Login.this, "blogai įverti vartotojo duomenys", Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(Login.this, "Login Successful", Toast.LENGTH_LONG).show();

                        new Handler().postDelayed(() -> startActivity(new Intent(Login.this, MainPage.class).putExtra("data", loginResponse.getResponse())), 500);
                    }


                } else {
                    Toast.makeText(Login.this, "Login Failed", Toast.LENGTH_LONG).show();

                }

            }

            @Override
            public void onFailure(@NonNull Call<LoginResponse> call, @NonNull Throwable t) {
                Toast.makeText(Login.this, "Throwable " + t.getLocalizedMessage(), Toast.LENGTH_LONG).show();

            }
        });


    }

    private void checkMyPermision() {
        Dexter.withContext(this).withPermission(Manifest.permission.ACCESS_FINE_LOCATION).withListener(new PermissionListener() {
            @Override
            public void onPermissionGranted(PermissionGrantedResponse permissionGrantedResponse) {
                // Toast.makeText(MainActivity.this, "Permission granted", Toast.LENGTH_SHORT).show();
                check = true;
            }

            @Override
            public void onPermissionDenied(PermissionDeniedResponse permissionDeniedResponse) {
                Intent intent = new Intent();
                intent.setAction(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                Uri uri = Uri.fromParts("package", getPackageName(), "");
                intent.setData(uri);
                startActivity(intent);
            }

            @Override
            public void onPermissionRationaleShouldBeShown(PermissionRequest permissionRequest, PermissionToken permissionToken) {
                permissionToken.continuePermissionRequest();
            }
        }).check();
    }
}