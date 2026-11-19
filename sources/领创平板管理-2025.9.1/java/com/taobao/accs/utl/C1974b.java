package com.taobao.accs.utl;

import com.alibaba.sdk.android.logger.LogLevel;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.b */
/* loaded from: classes.dex */
public /* synthetic */ class C1974b {

    /* renamed from: a */
    public static final /* synthetic */ int[] f6387a;

    /* renamed from: b */
    public static final /* synthetic */ int[] f6388b;

    static {
        int[] iArr = new int[ALog.Level.values().length];
        f6388b = iArr;
        try {
            ALog.Level level = ALog.Level.D;
            iArr[1] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            int[] iArr2 = f6388b;
            ALog.Level level2 = ALog.Level.V;
            iArr2[0] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            int[] iArr3 = f6388b;
            ALog.Level level3 = ALog.Level.I;
            iArr3[2] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            int[] iArr4 = f6388b;
            ALog.Level level4 = ALog.Level.W;
            iArr4[3] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            int[] iArr5 = f6388b;
            ALog.Level level5 = ALog.Level.E;
            iArr5[4] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            int[] iArr6 = f6388b;
            ALog.Level level6 = ALog.Level.L;
            iArr6[5] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr7 = new int[LogLevel.values().length];
        f6387a = iArr7;
        try {
            LogLevel logLevel = LogLevel.DEBUG;
            iArr7[0] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            int[] iArr8 = f6387a;
            LogLevel logLevel2 = LogLevel.INFO;
            iArr8[1] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            int[] iArr9 = f6387a;
            LogLevel logLevel3 = LogLevel.WARN;
            iArr9[2] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            int[] iArr10 = f6387a;
            LogLevel logLevel4 = LogLevel.ERROR;
            iArr10[3] = 4;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
