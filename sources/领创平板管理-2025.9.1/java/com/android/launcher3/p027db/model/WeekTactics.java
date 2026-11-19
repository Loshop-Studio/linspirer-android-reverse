package com.android.launcher3.p027db.model;

/* loaded from: classes.dex */
public class WeekTactics {
    public String friday;

    /* renamed from: id */
    public Long f1896id;
    public String monday;
    public String saturday;
    public String sunday;
    public String thursday;
    public String tuesday;
    public String wednesday;

    public WeekTactics(Long l, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f1896id = l;
        this.friday = str;
        this.monday = str2;
        this.sunday = str3;
        this.tuesday = str4;
        this.saturday = str5;
        this.thursday = str6;
        this.wednesday = str7;
    }

    public String getFriday() {
        return this.friday;
    }

    public Long getId() {
        return this.f1896id;
    }

    public String getMonday() {
        return this.monday;
    }

    public String getSaturday() {
        return this.saturday;
    }

    public String getSunday() {
        return this.sunday;
    }

    public String getThursday() {
        return this.thursday;
    }

    public String getTuesday() {
        return this.tuesday;
    }

    public String getWednesday() {
        return this.wednesday;
    }

    public void setFriday(String str) {
        this.friday = str;
    }

    public void setId(Long l) {
        this.f1896id = l;
    }

    public void setMonday(String str) {
        this.monday = str;
    }

    public void setSaturday(String str) {
        this.saturday = str;
    }

    public void setSunday(String str) {
        this.sunday = str;
    }

    public void setThursday(String str) {
        this.thursday = str;
    }

    public void setTuesday(String str) {
        this.tuesday = str;
    }

    public void setWednesday(String str) {
        this.wednesday = str;
    }

    public WeekTactics() {
    }
}
