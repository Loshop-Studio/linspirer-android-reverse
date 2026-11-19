package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import com.huawei.android.app.admin.DeviceP2PManager;

/* compiled from: HuaweiEmui8Impl.java */
/* renamed from: com.huawei.hem.vd */
/* loaded from: classes.dex */
public class C1357vd extends C1207pd {

    /* renamed from: o */
    public static C1357vd f3950o;

    /* renamed from: p */
    public static DeviceP2PManager f3951p;

    public C1357vd(Context context, Class cls) {
        super(context, cls);
    }

    /* renamed from: a1 */
    public static C1357vd m2870a1(Context context, Class cls) {
        if (f3950o == null) {
            f3950o = new C1357vd(context, cls);
            f3951p = new DeviceP2PManager();
        }
        return f3950o;
    }

    @Override // com.huawei.hem.C1207pd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        mo2616V0(str, null);
        super.mo1313O(str, str2);
        C0850bc.m1403m("huawei_emui8----system init start");
        try {
            C1232qd.f3525f.setDefaultLauncher(C1232qd.f3522c, str, str2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui8"));
        }
        try {
            C0850bc.m1403m("huawei_emui8-setWifiP2PDisabled-start");
            f3951p.setWifiP2PDisabled(C1232qd.f3522c, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui8-setWifiP2PDisabled-error:"));
        }
        Log.i("huawei_emui8", "sysyem init end");
        C0850bc.m1411u("huawei_emui8", "sysyem init end");
    }
}
