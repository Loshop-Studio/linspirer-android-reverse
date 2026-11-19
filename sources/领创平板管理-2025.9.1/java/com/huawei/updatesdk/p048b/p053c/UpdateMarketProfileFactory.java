package com.huawei.updatesdk.p048b.p053c;

import android.app.UiModeManager;
import android.content.Context;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.b.c.b */
/* loaded from: classes.dex */
public class UpdateMarketProfileFactory {

    /* renamed from: a */
    public static final Map<Integer, Class<? extends UpdateMarketProfile>> f4684a;

    /* renamed from: b */
    public static UpdateMarketProfile f4685b;

    /* renamed from: c */
    public static int f4686c;

    static {
        HashMap map = new HashMap();
        f4684a = map;
        f4686c = -1;
        map.put(3, CarMarketProfile.class);
        f4684a.put(1, TelevisionMarketProfile.class);
        f4684a.put(2, WearMarketProfile.class);
        f4684a.put(0, PhoneMarketProfile.class);
    }

    /* renamed from: a */
    public static int m3689a(Context context) {
        if (m3692c(context)) {
            return 1;
        }
        if (m3693d(context)) {
            return 2;
        }
        return m3691b(context) ? 3 : 0;
    }

    /* renamed from: a */
    public static UpdateMarketProfile m3690a() {
        UpdateMarketProfile abstractC1618c = f4685b;
        if (abstractC1618c != null) {
            return abstractC1618c;
        }
        Context contextM3592a = UpdateApplicationContext.m3591c().m3592a();
        if (f4686c < 0) {
            f4686c = m3689a(contextM3592a);
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("deviceType: ");
        sbM1765j.append(f4686c);
        UpdateSdkLog.m3501b("DeviceImplFactory", sbM1765j.toString());
        Class<? extends UpdateMarketProfile> cls = f4684a.get(Integer.valueOf(f4686c));
        if (cls == null) {
            PhoneMarketProfile c1619d = new PhoneMarketProfile();
            f4685b = c1619d;
            return c1619d;
        }
        try {
            f4685b = cls.newInstance();
        } catch (Throwable unused) {
            f4685b = new PhoneMarketProfile();
            UpdateSdkLog.m3500a("DeviceImplFactory", "createDeviceInfo error and create default phone deviceinfo");
        }
        return f4685b;
    }

    /* renamed from: b */
    public static boolean m3691b(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    /* renamed from: c */
    public static boolean m3692c(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        StringBuilder sbM1765j = CompilerOutline.m1765j("UI mode: ");
        sbM1765j.append(uiModeManager.getCurrentModeType());
        UpdateSdkLog.m3501b("DeviceImplFactory", sbM1765j.toString());
        return uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: d */
    public static boolean m3693d(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }
}
