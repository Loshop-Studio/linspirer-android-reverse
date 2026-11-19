package com.alibaba.sdk.android.push.common.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.push.common.util.p020b.C0568a;

/* renamed from: com.alibaba.sdk.android.push.common.util.a */
/* loaded from: classes.dex */
public class C0562a {
    /* renamed from: a */
    public static boolean m764a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public static C0568a.a m765b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 1) {
                return C0568a.a.WIFI;
            }
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return C0568a.a.G2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return C0568a.a.G3;
                case 13:
                    return C0568a.a.G4;
                default:
                    return C0568a.a.UNKNOWN;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return C0568a.a.UNKNOWN;
        }
    }
}
