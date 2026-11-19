package com.huawei.hem;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Harmony3Imp.java */
/* renamed from: com.huawei.hem.od */
/* loaded from: classes.dex */
public class Harmony3Imp extends HuaweiEmui11Impl {

    /* renamed from: t */
    public static Harmony3Imp f3384t;

    public Harmony3Imp(Context context, Class cls) {
        super(context, cls);
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A */
    public void mo2042A(ArrayList<String> arrayList) {
        super.mo2042A((ArrayList) m2684e1(arrayList));
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        super.mo1334A0(m2684e1(list));
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        super.mo1336E0(m2684e1(list));
    }

    @Override // com.huawei.hem.C1257rd
    /* renamed from: a1 */
    public void mo2433a1(boolean z, List<String> list) {
        if (!z) {
            list.add("wifi_proxy");
            list.add("wifi_advanced");
        }
        m2620Z0(list);
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            boolean zIsWIFIeditDisabled = HuaweiBaseImpl.f3528i.isWIFIeditDisabled(HuaweiBaseImpl.f3522c);
            LTKDateUtil.m1403m("Harmony3Imp read wifi advance status " + zIsWIFIeditDisabled);
            if (!zIsWIFIeditDisabled) {
                return;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("Harmony3Imp  -- isWIFIeditDisabled exception "));
        }
        try {
            LTKDateUtil.m1403m("Harmony3Imp  -- showWifiAdvanced");
            mo2433a1(true, list);
            HuaweiBaseImpl.f3528i.setWIFIeditDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("Harmony3Imp  -- showWifiAdvanced exception "));
        }
    }

    @Override // com.huawei.hem.C1282sd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        super.mo1506d((ArrayList) m2684e1(arrayList));
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            boolean zIsWIFIeditDisabled = HuaweiBaseImpl.f3528i.isWIFIeditDisabled(HuaweiBaseImpl.f3522c);
            LTKDateUtil.m1403m("Harmony3Imp read wifi advance status " + zIsWIFIeditDisabled);
            if (zIsWIFIeditDisabled) {
                return;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("Harmony3Imp  -- isWIFIeditDisabled exception "));
        }
        try {
            LTKDateUtil.m1403m("Harmony3Imp  -- hideWifiAdvanced");
            mo2433a1(false, list);
            HuaweiBaseImpl.f3528i.setWIFIeditDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("Harmony3Imp  -- hideWifiAdvanced exception "));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r0 */
    public void mo2075r0(ArrayList<String> arrayList) {
        super.mo2075r0((ArrayList) m2684e1(arrayList));
    }
}
