package com.huawei.hem;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: WifiUtil.java */
/* renamed from: com.huawei.hem.ec */
/* loaded from: classes.dex */
public class C0928ec {

    /* renamed from: c */
    public static volatile C0928ec f2537c;

    /* renamed from: d */
    public static Context f2538d;

    /* renamed from: a */
    public WifiManager f2539a;

    /* renamed from: b */
    public WifiInfo f2540b;

    public C0928ec(Context context) {
        f2538d = context;
        WifiManager wifiManager = (WifiManager) context.getSystemService(UtilityImpl.NET_TYPE_WIFI);
        this.f2539a = wifiManager;
        this.f2540b = wifiManager.getConnectionInfo();
    }

    /* renamed from: a */
    public static C0928ec m1675a(Context context) {
        if (f2537c == null) {
            synchronized (C0928ec.class) {
                if (f2537c == null) {
                    f2537c = new C0928ec(context.getApplicationContext());
                }
            }
        }
        return f2537c;
    }
}
