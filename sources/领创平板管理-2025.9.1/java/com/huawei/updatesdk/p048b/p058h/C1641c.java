package com.huawei.updatesdk.p048b.p058h;

import android.content.Context;
import android.content.res.Resources;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import org.android.agoo.common.AgooConstants;

/* renamed from: com.huawei.updatesdk.b.h.c */
/* loaded from: classes.dex */
public final class C1641c {

    /* renamed from: a */
    public static String f4726a;

    /* renamed from: b */
    public static Resources f4727b;

    /* renamed from: a */
    public static int m3770a(Context context, String str) {
        return m3771a(context, str, AgooConstants.MESSAGE_ID);
    }

    /* renamed from: a */
    public static int m3771a(Context context, String str, String str2) {
        if (f4727b == null) {
            f4727b = context.getResources();
        }
        return f4727b.getIdentifier(str, str2, m3772a(context));
    }

    /* renamed from: a */
    public static String m3772a(Context context) {
        if (f4726a == null) {
            f4726a = context.getPackageName();
        }
        return f4726a;
    }

    /* renamed from: b */
    public static int m3773b(Context context, String str) {
        return m3771a(context, str, "layout");
    }

    /* renamed from: c */
    public static int m3774c(Context context, String str) {
        return m3771a(context, str, "string");
    }

    /* renamed from: d */
    public static String m3775d(Context context, String str) {
        try {
            return context.getResources().getString(m3771a(context, str, "string"));
        } catch (Resources.NotFoundException unused) {
            C1581a.m3500a("UpdateSDK", "recource get error name: " + str);
            return "";
        }
    }
}
