package com.android.launcher3.model;

import java.util.List;

/* loaded from: classes.dex */
public class NetworkInfo {
    public String domain;
    public List<Integer> portList;
    public List<String> result;

    public String getDomain() {
        return this.domain;
    }

    public List<Integer> getPortList() {
        return this.portList;
    }

    public List<String> getResult() {
        return this.result;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setPortList(List<Integer> list) {
        this.portList = list;
    }

    public void setResult(List<String> list) {
        this.result = list;
    }
}
