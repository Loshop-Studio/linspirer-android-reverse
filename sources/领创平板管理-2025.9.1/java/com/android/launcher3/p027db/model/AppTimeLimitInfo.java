package com.android.launcher3.p027db.model;

import com.huawei.hem.C0948f6;
import java.util.List;

/* loaded from: classes.dex */
public class AppTimeLimitInfo {
    public String friday;

    /* renamed from: id */
    public Long f1878id;
    public String monday;
    public String packageNames;
    public List<String> pkgs;
    public String saturday;
    public String sunday;
    public String thursday;
    public String tuesday;
    public String wednesday;

    public AppTimeLimitInfo(Long l, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f1878id = l;
        this.friday = str;
        this.monday = str2;
        this.sunday = str3;
        this.tuesday = str4;
        this.saturday = str5;
        this.thursday = str6;
        this.wednesday = str7;
        this.packageNames = str8;
    }

    public String getFriday() {
        return this.friday;
    }

    public Long getId() {
        return this.f1878id;
    }

    public String getMonday() {
        return this.monday;
    }

    public String getPackageNames() {
        return this.packageNames;
    }

    public List<String> getPkgs() {
        return this.pkgs;
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
        this.f1878id = l;
    }

    public void setMonday(String str) {
        this.monday = str;
    }

    public void setPackageNames(String str) {
        this.packageNames = str;
    }

    public void setPkgs(List<String> list) {
        this.pkgs = list;
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

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("AppTimeLimitInfo{friday='");
        C0948f6.m1781z(sbM1765j, this.friday, '\'', ", monday='");
        C0948f6.m1781z(sbM1765j, this.monday, '\'', ", sunday='");
        C0948f6.m1781z(sbM1765j, this.sunday, '\'', ", tuesday='");
        C0948f6.m1781z(sbM1765j, this.tuesday, '\'', ", saturday='");
        C0948f6.m1781z(sbM1765j, this.saturday, '\'', ", thursday='");
        C0948f6.m1781z(sbM1765j, this.thursday, '\'', ", wednesday='");
        C0948f6.m1781z(sbM1765j, this.wednesday, '\'', ", packageNames='");
        sbM1765j.append(this.packageNames);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public AppTimeLimitInfo() {
    }
}
