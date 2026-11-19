package com.huawei.updatesdk.p048b.p053c;

import android.app.UiModeManager;
import android.content.Context;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.b.c.b */
/* loaded from: classes.dex */
public class C1617b {

    /* renamed from: a */
    public static final Map<Integer, Class<? extends AbstractC1618c>> f4684a;

    /* renamed from: b */
    public static AbstractC1618c f4685b;

    /* renamed from: c */
    public static int f4686c;

    static {
        HashMap map = new HashMap();
        f4684a = map;
        f4686c = -1;
        map.put(3, C1616a.class);
        f4684a.put(1, C1620e.class);
        f4684a.put(2, C1621f.class);
        f4684a.put(0, C1619d.class);
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
    public static AbstractC1618c m3690a() {
        AbstractC1618c abstractC1618c = f4685b;
        if (abstractC1618c != null) {
            return abstractC1618c;
        }
        Context contextM3592a = C1598a.m3591c().m3592a();
        if (f4686c < 0) {
            f4686c = m3689a(contextM3592a);
        }
        StringBuilder sbM1765j = C0948f6.m1765j("deviceType: ");
        sbM1765j.append(f4686c);
        C1581a.m3501b("DeviceImplFactory", sbM1765j.toString());
        Class<? extends AbstractC1618c> cls = f4684a.get(Integer.valueOf(f4686c));
        if (cls == null) {
            C1619d c1619d = new C1619d();
            f4685b = c1619d;
            return c1619d;
        }
        try {
            f4685b = cls.newInstance();
        } catch (Throwable unused) {
            f4685b = new C1619d();
            C1581a.m3500a("DeviceImplFactory", "createDeviceInfo error and create default phone deviceinfo");
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
        StringBuilder sbM1765j = C0948f6.m1765j("UI mode: ");
        sbM1765j.append(uiModeManager.getCurrentModeType());
        C1581a.m3501b("DeviceImplFactory", sbM1765j.toString());
        return uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: d */
    public static boolean m3693d(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }
}
