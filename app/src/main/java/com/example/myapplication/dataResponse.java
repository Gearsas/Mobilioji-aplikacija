package com.example.myapplication;

public class dataResponse {

    private String pav;

    private String data;

    private String extra;

    private String museum;


    public dataResponse(String pav, String data, String extra, String museum) {
        this.pav = pav;
        this.data = data;
        this.extra = extra;
        this.museum = museum;
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

    public String getMuseum() { return museum; }

    public void setMuseum(String museum) { this.museum = museum; }

}

