package com.huawei.updatesdk.p034a.p035a.p040d.p042i;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* renamed from: com.huawei.updatesdk.a.a.d.i.a */
/* loaded from: classes.dex */
public class C1597a {

    /* renamed from: a */
    public static ConnectivityManager f4642a;

    /* renamed from: a */
    public static int m3585a(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnected()) {
            int type = networkInfo.getType();
            if (1 == type || 13 == type) {
                return 1;
            }
            if (type == 0) {
                switch (networkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 3;
                    case 13:
                        return 4;
                }
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static NetworkInfo m3586a(Context context) {
        ConnectivityManager connectivityManagerM3587b = m3587b(context);
        if (connectivityManagerM3587b != null) {
            return connectivityManagerM3587b.getActiveNetworkInfo();
        }
        return null;
    }

    /* renamed from: b */
    public static ConnectivityManager m3587b(Context context) {
        if (f4642a == null) {
            f4642a = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        }
        return f4642a;
    }

    /* renamed from: c */
    public static int m3588c(Context context) {
        return m3585a(m3586a(context));
    }

    /* renamed from: d */
    public static boolean m3589d(Context context) {
        ConnectivityManager connectivityManagerM3587b;
        NetworkInfo activeNetworkInfo;
        return (context == null || (connectivityManagerM3587b = m3587b(context)) == null || (activeNetworkInfo = connectivityManagerM3587b.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }
}
