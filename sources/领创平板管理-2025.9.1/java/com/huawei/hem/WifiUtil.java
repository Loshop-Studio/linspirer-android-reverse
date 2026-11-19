package com.huawei.hem;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: WifiUtil.java */
/* renamed from: com.huawei.hem.ec */
/* loaded from: classes.dex */
public class WifiUtil {

    /* renamed from: c */
    public static volatile WifiUtil f2537c;

    /* renamed from: d */
    public static Context f2538d;

    /* renamed from: a */
    public WifiManager f2539a;

    /* renamed from: b */
    public WifiInfo f2540b;

    public WifiUtil(Context context) {
        f2538d = context;
        WifiManager wifiManager = (WifiManager) context.getSystemService(UtilityImpl.NET_TYPE_WIFI);
        this.f2539a = wifiManager;
        this.f2540b = wifiManager.getConnectionInfo();
    }

    /* renamed from: a */
    public static WifiUtil m1675a(Context context) {
        if (f2537c == null) {
            synchronized (WifiUtil.class) {
                if (f2537c == null) {
                    f2537c = new WifiUtil(context.getApplicationContext());
                }
            }
        }
        return f2537c;
    }
}
