package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TextView;

import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import com.google.android.material.navigation.NavigationView;
import com.journeyapps.barcodescanner.ScanContract;
import com.journeyapps.barcodescanner.ScanOptions;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ExhibitScan extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {

    private DrawerLayout drawer;
    TextView txt;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(" ");
        setContentView(R.layout.activity_exhibit_scan);
        Toolbar toolbar = findViewById(R.id.toolbar1);
        setSupportActionBar(toolbar);
        drawer = findViewById(R.id.drawer_layout1);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawer, toolbar,
                R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        Button button2 = findViewById(R.id.button2);
        NavigationView navigationView = findViewById(R.id.nav_view1);
        navigationView.setNavigationItemSelectedListener(this);
        toggle.syncState();
        TextView museumName = findViewById(R.id.textView6);
        museumName.setText(getIntent().getStringExtra("museum"));

        scanCode();

        // TODO: priskiria kintamajam textview7
        txt = findViewById(R.id.textView7);


        button2.setOnClickListener(view -> scanCode());
    }

    private void scanCode() {
        ScanOptions options = new ScanOptions();
        options.setBeepEnabled(true);
        options.setOrientationLocked(true);
        options.setCaptureActivity(CaptureAct.class);
        barLauncher.launch(options);

    }

    ActivityResultLauncher<ScanOptions> barLauncher = registerForActivityResult(new ScanContract(), result -> {
        if (result.getContents() != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(ExhibitScan.this);
            sendrequest(result.getContents());
        }
    });

    public void sendrequest(String data) {
        Call<dataResponse> loginResponseCall = ApiClient.getUserService().getData(data);
        loginResponseCall.enqueue(new Callback<dataResponse>() {
            @Override
            public void onResponse(@NonNull Call<dataResponse> call, @NonNull Response<dataResponse> response) {
                if (response.isSuccessful()) {
                    dataResponse loginResponse = response.body();

                    // TODO: sitoje vietoje gaunami rezultatai apie eksponata. cia yra pavyzdinis
                    //  kad nustato textview7 teksta getpav gaus pavadinima eksponato, data tai aprasyma,
                    //  o extra idejau kad papildomai jeigu ka sugalvosim
                    //  pavyzdinis variantas https://www.the-qrcode-generator.com/ free text 1 parasykit ir nuskaitykit 
                    //  getpav() grazins eksponato pavadinima
                    //  getdata() grazins nuskaityto eksponato aprasyma
                    //  getextra() alvojau gal siaip reikes tai nereikia implementuot nebent ka sugalvosim


                    assert loginResponse != null;
                    txt.setText(loginResponse.getPav());
                }
            }

            @Override
            public void onFailure(@NonNull Call<dataResponse> call, @NonNull Throwable t) {

            }
        });
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case R.id.nav_map:

                startActivity(new Intent(ExhibitScan.this, MainPage.class));

                break;
            case R.id.nav_qr:
                startActivity(new Intent(ExhibitScan.this, ExhibitScan.class));
                break;
            case R.id.nav_galery:
                startActivity(new Intent(ExhibitScan.this, ExhibitsList.class));
                break;
        }
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}