package com.amap.api.location;

import android.content.Context;
import android.os.Handler;
import com.amap.apis.utils.core.DeviceInfo;
import com.loc.CoreUtil;

/* loaded from: classes.dex */
public class UmidtokenInfo {

    /* renamed from: d */
    public static AMapLocationClient f1588d;

    /* renamed from: a */
    public static Handler f1585a = new Handler();

    /* renamed from: b */
    public static String f1586b = null;

    /* renamed from: e */
    public static long f1589e = 30000;

    /* renamed from: c */
    public static boolean f1587c = true;

    /* renamed from: com.amap.api.location.UmidtokenInfo$a */
    public static class C0620a implements AMapLocationListener {
        @Override // com.amap.api.location.AMapLocationListener
        public final void onLocationChanged(AMapLocation aMapLocation) {
            try {
                if (UmidtokenInfo.f1588d != null) {
                    UmidtokenInfo.f1585a.removeCallbacksAndMessages(null);
                    UmidtokenInfo.f1588d.onDestroy();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "UmidListener", "onLocationChanged");
            }
        }
    }

    public static String getUmidtoken() {
        return f1586b;
    }

    public static void setLocAble(boolean z) {
        f1587c = z;
    }

    public static synchronized void setUmidtoken(Context context, String str) {
        try {
            f1586b = str;
            DeviceInfo.f1607d = str;
            if (f1588d == null && f1587c) {
                C0620a c0620a = new C0620a();
                f1588d = new AMapLocationClient(context);
                AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
                aMapLocationClientOption.setOnceLocation(true);
                aMapLocationClientOption.setNeedAddress(false);
                f1588d.setLocationOption(aMapLocationClientOption);
                f1588d.setLocationListener(c0620a);
                f1588d.startLocation();
                f1585a.postDelayed(new Runnable() { // from class: com.amap.api.location.UmidtokenInfo.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (UmidtokenInfo.f1588d != null) {
                                UmidtokenInfo.f1588d.onDestroy();
                            }
                        } catch (Throwable th) {
                            CoreUtil.m5014a(th, "UmidListener", "postDelayed");
                        }
                    }
                }, 30000L);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "UmidListener", "setUmidtoken");
        }
    }
}
