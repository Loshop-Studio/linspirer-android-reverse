package com.huawei.hem;

import java.util.Random;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.w0 */
/* loaded from: classes.dex */
public class C1369w0 extends AbstractC1444z0 {

    /* renamed from: e */
    public static Random f3980e;

    /* renamed from: b */
    public static String m2896b(String str) {
        try {
            Class<?>[] clsArr = {String.class};
            Object[] objArr = {str};
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", clsArr).invoke(cls, objArr);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0105  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification m2897a(android.content.Context r8) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1369w0.m2897a(android.content.Context):android.app.Notification");
    }
}
