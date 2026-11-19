package com.huawei.updatesdk.p034a.p035a.p040d;

import com.huawei.hem.CompilerOutline;
import java.util.List;

/* renamed from: com.huawei.updatesdk.a.a.d.e */
/* loaded from: classes.dex */
public class UpdateStringJoiner {
    /* renamed from: a */
    public static String m3528a(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: a */
    public static String m3529a(List<String> list, String str) {
        return m3530a(list, str, (String) null, (String) null);
    }

    /* renamed from: a */
    public static String m3530a(List<String> list, String str, String str2, String str3) {
        return (list == null || list.isEmpty()) ? "" : m3532a((String[]) list.toArray(new String[0]), str, str2, str3);
    }

    /* renamed from: a */
    public static String m3531a(String[] strArr, String str) {
        return m3532a(strArr, str, (String) null, (String) null);
    }

    /* renamed from: a */
    public static String m3532a(String[] strArr, String str, String str2, String str3) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        String strM3528a = m3528a(str);
        String strM3528a2 = m3528a(str2);
        String strM3528a3 = m3528a(str3);
        StringBuilder sbM1765j = CompilerOutline.m1765j(strM3528a2);
        sbM1765j.append(strArr[0]);
        sbM1765j.append(strM3528a3);
        for (int i = 1; i < strArr.length; i++) {
            sbM1765j.append(strM3528a);
            sbM1765j.append(strM3528a2);
            sbM1765j.append(strArr[i]);
            sbM1765j.append(strM3528a3);
        }
        return sbM1765j.toString();
    }
}
