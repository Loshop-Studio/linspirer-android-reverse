package com.alibaba.sdk.android.crashdefend;

import android.content.Context;

/* loaded from: classes.dex */
public class CrashDefendApi {
    public static void registerCrashDefendSdk(Context context, String str, String str2, int i, int i2, CrashDefendCallback crashDefendCallback) {
        CrashDefendManager.m584a(context).m596a(str, str2, i, i2, crashDefendCallback);
    }
}
