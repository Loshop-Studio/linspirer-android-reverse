package com.huawei.hem;

import android.text.TextUtils;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PersistentAppHelper.java */
/* renamed from: com.huawei.hem.z4 */
/* loaded from: classes.dex */
public class PersistentAppHelper {

    /* renamed from: a */
    public static List<String> f4269a = new ArrayList();

    /* renamed from: a */
    public static void m3135a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.ndwill.swd.appstore");
        arrayList.add("com.android.launcher3");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("com.zykj.manage");
        if (!AbstractC1102l9.m2273N(arrayList2)) {
            arrayList.addAll(arrayList2);
        }
        f4269a.addAll(arrayList);
        List<String> listMo1352o = LTKDateUtil.f2294f.mo1352o();
        StringBuilder sbM1765j = CompilerOutline.m1765j("PersistentAppHelper read last alive apps:");
        sbM1765j.append(arrayList.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        if (AbstractC1102l9.m2273N(listMo1352o)) {
            String strM3034b = UserInfoUtil.b.f4202a.m3034b();
            if (!TextUtils.isEmpty(strM3034b) && !"null".equals(strM3034b)) {
                arrayList.add(strM3034b);
            }
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("PersistentAppHelper init alive apps:");
            sbM1765j2.append(arrayList.toString());
            LTKDateUtil.m1403m(sbM1765j2.toString());
            LTKDateUtil.f2294f.mo1336E0(arrayList);
            return;
        }
        if (arrayList.toString().equals(listMo1352o)) {
            return;
        }
        LTKDateUtil.m1403m("PersistentAppHelper update all alive apps");
        String strM3034b2 = UserInfoUtil.b.f4202a.m3034b();
        if (!TextUtils.isEmpty(strM3034b2) && !"null".equals(strM3034b2)) {
            arrayList.add(strM3034b2);
        }
        LTKDateUtil.f2294f.mo1336E0(arrayList);
    }

    /* renamed from: b */
    public static void m3136b(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "null";
        }
        String strM3034b = UserInfoUtil.b.f4202a.m3034b();
        if (strM3034b.equals(str)) {
            LTKDateUtil.m1403m("PersistentAppHelper no need update alive apps");
            return;
        }
        if (DeviceTypeUtil.m1510c()) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(f4269a);
            if (!str.equals("null")) {
                arrayList.add(str);
            }
            LTKDateUtil.f2294f.mo1336E0(arrayList);
            return;
        }
        if (!str.equals("null")) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(str);
            LTKDateUtil.f2294f.mo1336E0(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(strM3034b);
        LTKDateUtil.f2294f.removePersistentApp(arrayList3);
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        if (c1424y5.f4132F != str) {
            c1424y5.f4132F = str;
            DeskSPF c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putString("keep_alive_package", str);
            c0824ac.f2200b.commit();
        }
    }
}
