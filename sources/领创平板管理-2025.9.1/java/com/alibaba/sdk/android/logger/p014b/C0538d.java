package com.alibaba.sdk.android.logger.p014b;

import android.util.Log;
import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* renamed from: com.alibaba.sdk.android.logger.b.d */
/* loaded from: classes.dex */
public class C0538d implements ILogger {

    /* renamed from: com.alibaba.sdk.android.logger.b.d$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f973a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            f973a = iArr;
            try {
                LogLevel logLevel = LogLevel.DEBUG;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f973a;
                LogLevel logLevel2 = LogLevel.INFO;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f973a;
                LogLevel logLevel3 = LogLevel.WARN;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f973a;
                LogLevel logLevel4 = LogLevel.ERROR;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.alibaba.sdk.android.logger.ILogger
    public void print(LogLevel logLevel, String str, String str2) {
        String strSubstring;
        if (str2.length() > 4000) {
            strSubstring = str2.substring(4000);
            str2 = str2.substring(0, 4000);
        } else {
            strSubstring = null;
        }
        int i = AnonymousClass1.f973a[logLevel.ordinal()];
        if (i == 1) {
            Log.d(str, str2);
        } else if (i == 2) {
            Log.i(str, str2);
        } else if (i == 3) {
            Log.w(str, str2);
        } else if (i == 4) {
            Log.e(str, str2);
        }
        if (strSubstring != null) {
            print(logLevel, str, strSubstring);
        }
    }
}
