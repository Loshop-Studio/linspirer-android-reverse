package com.android.launcher3.p027db.model;

import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public class LocationInfo {
    public String address;
    public String email;

    /* renamed from: id */
    public Long f1886id;
    public String lat;
    public String lng;
    public String location_time;
    public String username;

    public LocationInfo() {
    }

    public String getAddress() {
        return this.address;
    }

    public String getEmail() {
        return this.email;
    }

    public Long getId() {
        return this.f1886id;
    }

    public String getLat() {
        return this.lat;
    }

    public String getLng() {
        return this.lng;
    }

    public String getLocation_time() {
        return this.location_time;
    }

    public String getUsername() {
        return this.username;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setId(Long l) {
        this.f1886id = l;
    }

    public void setLat(String str) {
        this.lat = str;
    }

    public void setLng(String str) {
        this.lng = str;
    }

    public void setLocation_time(String str) {
        this.location_time = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("LocationInfo{email='");
        C0948f6.m1781z(sbM1765j, this.email, '\'', ", username='");
        C0948f6.m1781z(sbM1765j, this.username, '\'', ", lat='");
        C0948f6.m1781z(sbM1765j, this.lat, '\'', ", lng='");
        C0948f6.m1781z(sbM1765j, this.lng, '\'', ", address='");
        C0948f6.m1781z(sbM1765j, this.address, '\'', ", location_time='");
        sbM1765j.append(this.location_time);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public LocationInfo(Long l, String str, String str2, String str3, String str4, String str5, String str6) {
        this.f1886id = l;
        this.email = str;
        this.username = str2;
        this.lat = str3;
        this.lng = str4;
        this.address = str5;
        this.location_time = str6;
    }

    public LocationInfo(String str, String str2, String str3, String str4) {
        this.lat = str;
        this.lng = str2;
        this.address = str3;
        this.location_time = str4;
    }
}
