package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import com.huawei.android.app.admin.DeviceP2PManager;

/* compiled from: HuaweiEmui9Impl.java */
/* renamed from: com.huawei.hem.wd */
/* loaded from: classes.dex */
public class HuaweiEmui9Impl extends HuaweiBaseChildImpl {

    /* renamed from: o */
    public static HuaweiEmui9Impl f4018o;

    /* renamed from: p */
    public static DeviceP2PManager f4019p;

    public HuaweiEmui9Impl(Context context, Class cls) {
        super(context, cls);
    }

    /* renamed from: a1 */
    public static HuaweiEmui9Impl m2908a1(Context context, Class cls) {
        if (f4018o == null) {
            f4018o = new HuaweiEmui9Impl(context, cls);
            f4019p = new DeviceP2PManager();
        }
        return f4018o;
    }

    @Override // com.huawei.hem.C1207pd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        mo2616V0(str, null);
        super.mo1313O(str, str2);
        LTKDateUtil.m1403m("huawei_emui9 ----system init start");
        try {
            LTKDateUtil.m1403m("huawei_emui9 ,setDefaultLauncher start");
            HuaweiBaseImpl.f3525f.setDefaultLauncher(HuaweiBaseImpl.f3522c, str, str2);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("huawei_emui9 ,setDefaultLauncher error:"));
        }
        try {
            LTKDateUtil.m1403m("huawei_emui9 -setWifiP2PDisabled-start");
            f4019p.setWifiP2PDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("huawei_emui9 -setWifiP2PDisabled-error:"));
        }
        Log.i("huawei_emui9 ", "sysyem init end");
        LTKDateUtil.m1411u("huawei_emui9 ", "sysyem init end");
    }
}
