package com.huawei.updatesdk.p034a.p043b.p046c.p047c;

import com.huawei.hem.CompilerOutline;

/* renamed from: com.huawei.updatesdk.a.b.c.c.d */
/* loaded from: classes.dex */
public class UpdateResponseBean extends UpdateJsonBean {
    public static final int ERROR = 1;
    public static final int NETWORK_ERROR = 3;

    /* renamed from: OK */
    public static final int f4654OK = 0;
    public static final int PROGUARD_ERROR = 6;
    public static final int REQ_PARAM_ERROR = 5;
    public static final int RTN_CODE_OK = 0;
    public static final int TIMEOUT = 2;
    public String reason;
    public int responseCode = 1;
    public int rtnCode_ = 0;
    public a errCause = a.NORMAL;
    public int httpRespondeCode = 0;

    /* renamed from: com.huawei.updatesdk.a.b.c.c.d$a */
    public enum a {
        NORMAL,
        NO_NETWORK,
        JSON_ERROR,
        PARAM_ERROR,
        IO_EXCEPTION,
        CONNECT_EXCEPTION,
        UNKNOWN_EXCEPTION,
        NO_PROGUARD
    }

    /* renamed from: a */
    public a m3632a() {
        return this.errCause;
    }

    /* renamed from: a */
    public void m3633a(int i) {
        this.httpRespondeCode = i;
    }

    /* renamed from: a */
    public void m3634a(a aVar) {
        this.errCause = aVar;
    }

    /* renamed from: a */
    public void m3635a(String str) {
        this.reason = str;
    }

    /* renamed from: b */
    public int m3636b() {
        return this.httpRespondeCode;
    }

    /* renamed from: b */
    public void m3637b(int i) {
        this.responseCode = i;
    }

    /* renamed from: c */
    public String m3638c() {
        return this.reason;
    }

    /* renamed from: d */
    public int m3639d() {
        return this.responseCode;
    }

    /* renamed from: e */
    public int m3640e() {
        return this.rtnCode_;
    }

    /* renamed from: f */
    public boolean m3641f() {
        return m3639d() == 0 && m3640e() == 0;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j(" { \n\tresponseCode: ");
        sbM1765j.append(m3639d());
        sbM1765j.append("\n\trtnCode_: ");
        sbM1765j.append(m3640e());
        sbM1765j.append("\n\terrCause: ");
        sbM1765j.append(m3632a());
        sbM1765j.append("\n}");
        return sbM1765j.toString();
    }
}
