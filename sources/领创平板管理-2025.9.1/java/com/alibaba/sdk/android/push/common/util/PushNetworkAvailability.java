package com.alibaba.sdk.android.push.common.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.push.common.util.p020b.PushConnectivityConstants;

/* renamed from: com.alibaba.sdk.android.push.common.util.a */
/* loaded from: classes.dex */
public class PushNetworkAvailability {
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
    public static PushConnectivityConstants.a m765b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 1) {
                return PushConnectivityConstants.a.WIFI;
            }
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return PushConnectivityConstants.a.G2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return PushConnectivityConstants.a.G3;
                case 13:
                    return PushConnectivityConstants.a.G4;
                default:
                    return PushConnectivityConstants.a.UNKNOWN;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return PushConnectivityConstants.a.UNKNOWN;
        }
    }
}
