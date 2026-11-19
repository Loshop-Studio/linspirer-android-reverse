package com.alibaba.sdk.android.tool;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class ResourceConfigUtils {
    /* renamed from: a */
    public static int m1004a(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str)) {
            return 0;
        }
        return context.getResources().getIdentifier(str, str2, context.getPackageName());
    }

    public static int getColorFromRes(Context context, String str) {
        int iM1004a = m1004a(context, str, "color");
        if (iM1004a == 0) {
            return -1;
        }
        try {
            return context.getResources().getColor(iM1004a);
        } catch (Exception e) {
            SdkToolLogger.m1022b("Res-Config", e.getMessage());
            return -1;
        }
    }

    public static String[] getStringArrayFromRes(Context context, String str) {
        int iM1004a = m1004a(context, str, "array");
        if (iM1004a == 0) {
            return null;
        }
        try {
            return context.getResources().getStringArray(iM1004a);
        } catch (Exception e) {
            SdkToolLogger.m1022b("Res-Config", e.getMessage());
            return null;
        }
    }

    public static String getStringFromRes(Context context, String str) {
        int iM1004a = m1004a(context, str, "string");
        if (iM1004a == 0) {
            return null;
        }
        try {
            return context.getResources().getString(iM1004a);
        } catch (Exception e) {
            SdkToolLogger.m1022b("Res-Config", e.getMessage());
            return null;
        }
    }
}
