package com.android.launcher3.network.response;

import java.io.Serializable;

/* loaded from: classes.dex */
public class Response implements Serializable {
    public int code;
    public String data;

    public int getCode() {
        return this.code;
    }

    public String getData() {
        return this.data;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setData(String str) {
        this.data = str;
    }
}
