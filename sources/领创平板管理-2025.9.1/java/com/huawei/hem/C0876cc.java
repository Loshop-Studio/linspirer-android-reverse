package com.huawei.hem;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* compiled from: NetWorkUtil.java */
/* renamed from: com.huawei.hem.cc */
/* loaded from: classes.dex */
public class C0876cc {

    /* renamed from: a */
    public NetworkInfo f2337a;

    public C0876cc(Context context) {
        try {
            this.f2337a = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("NetWorkUtilinit network error "));
        }
    }

    /* renamed from: a */
    public boolean m1505a() {
        NetworkInfo networkInfo = this.f2337a;
        if (networkInfo == null) {
            return false;
        }
        return networkInfo.isConnected();
    }
}
