package com.huawei.hem;

import java.util.ArrayList;
import java.util.List;

/* compiled from: SupperAppHelper.java */
/* renamed from: com.huawei.hem.a5 */
/* loaded from: classes.dex */
public class SupperAppHelper {

    /* renamed from: a */
    public ArrayList<String> f2173a;

    /* compiled from: SupperAppHelper.java */
    /* renamed from: com.huawei.hem.a5$b */
    public static final class b {

        /* renamed from: a */
        public static final SupperAppHelper f2174a = new SupperAppHelper(null);
    }

    public SupperAppHelper(a aVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f2173a = arrayList;
        arrayList.add("com.android.launcher3");
        this.f2173a.add("com.ndwill.swd.appstore");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("com.zykj.manage");
        if (MobileSdkPlatformUtilities.m2273N(arrayList2)) {
            return;
        }
        this.f2173a.addAll(arrayList2);
    }

    /* renamed from: a */
    public final void m1296a(ArrayList<String> arrayList) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("SupperAppHelper total super:");
        sbM1765j.append(arrayList.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        if (DeviceTypeUtil.m1514g(LauncherDeviceUtils.m1589f()) || DeviceTypeUtil.m1529v() || DeviceTypeUtil.m1513f(LauncherDeviceUtils.m1589f()) || DeviceTypeUtil.m1530w()) {
            LTKDateUtil.f2294f.mo1506d(arrayList);
            return;
        }
        List<String> listMo1507u = LTKDateUtil.f2294f.mo1507u();
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("SupperAppHelper read already set super:");
        sbM1765j2.append(MobileSdkPlatformUtilities.m2273N(listMo1507u) ? null : listMo1507u.toString());
        LTKDateUtil.m1403m(sbM1765j2.toString());
        ArrayList arrayList2 = new ArrayList();
        if (!MobileSdkPlatformUtilities.m2273N(listMo1507u)) {
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (String str : listMo1507u) {
                if (arrayList.contains(str)) {
                    arrayList2.add(str);
                } else {
                    arrayList3.add(str);
                }
            }
            LTKDateUtil.f2294f.mo2055P0(arrayList3);
            LTKDateUtil.m1403m("SupperAppHelper  removed apps :" + arrayList3.toString());
        }
        StringBuilder sbM1765j3 = CompilerOutline.m1765j("SupperAppHelper  exist apps :");
        sbM1765j3.append(arrayList2.toString());
        LTKDateUtil.m1403m(sbM1765j3.toString());
        arrayList.removeAll(arrayList2);
        if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
            LTKDateUtil.m1403m("SupperAppHelper  have same app data no need set");
            return;
        }
        LTKDateUtil.f2294f.mo1506d(arrayList);
        LTKDateUtil.m1403m("SupperAppHelper  set super apps: " + arrayList.toString());
    }
}
