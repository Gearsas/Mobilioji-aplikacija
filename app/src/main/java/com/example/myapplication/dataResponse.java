package com.example.myapplication;

public class dataResponse {

    private String pav;

    private String data;

    private String extra;


    public dataResponse(String pav, String data, String extra) {
        this.pav = pav;
        this.data = data;
        this.extra = extra;
    }

    public String getPav() {
        return pav;
    }

    public void setPav(String pav) {
        this.pav = pav;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getExtra() {
        return extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }
}

