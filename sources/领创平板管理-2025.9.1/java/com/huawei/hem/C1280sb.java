package com.huawei.hem;

/* compiled from: OkHttpException.java */
/* renamed from: com.huawei.hem.sb */
/* loaded from: classes.dex */
public class C1280sb extends Exception {
    public static final String CODE = "code";
    public static final int JSON_ERROR = -200;
    public static final int NETWORK_ERROR = -100;
    public static final int OTHER_ERROR = -300;
    public static final int SUCESS_CODE = 0;
    public int code;
    public Object obj;

    public C1280sb(int i, Object obj) {
        this.code = i;
        this.obj = obj;
    }

    public int getCode() {
        return this.code;
    }

    public Object getObj() {
        return this.obj;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
}
