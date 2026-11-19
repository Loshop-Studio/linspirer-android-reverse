package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import com.huawei.android.app.admin.DeviceP2PManager;

/* compiled from: HuaweiEmui9Impl.java */
/* renamed from: com.huawei.hem.wd */
/* loaded from: classes.dex */
public class C1382wd extends C1207pd {

    /* renamed from: o */
    public static C1382wd f4018o;

    /* renamed from: p */
    public static DeviceP2PManager f4019p;

    public C1382wd(Context context, Class cls) {
        super(context, cls);
    }

    /* renamed from: a1 */
    public static C1382wd m2908a1(Context context, Class cls) {
        if (f4018o == null) {
            f4018o = new C1382wd(context, cls);
            f4019p = new DeviceP2PManager();
        }
        return f4018o;
    }

    @Override // com.huawei.hem.C1207pd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        mo2616V0(str, null);
        super.mo1313O(str, str2);
        C0850bc.m1403m("huawei_emui9 ----system init start");
        try {
            C0850bc.m1403m("huawei_emui9 ,setDefaultLauncher start");
            C1232qd.f3525f.setDefaultLauncher(C1232qd.f3522c, str, str2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui9 ,setDefaultLauncher error:"));
        }
        try {
            C0850bc.m1403m("huawei_emui9 -setWifiP2PDisabled-start");
            f4019p.setWifiP2PDisabled(C1232qd.f3522c, true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("huawei_emui9 -setWifiP2PDisabled-error:"));
        }
        Log.i("huawei_emui9 ", "sysyem init end");
        C0850bc.m1411u("huawei_emui9 ", "sysyem init end");
    }
}
