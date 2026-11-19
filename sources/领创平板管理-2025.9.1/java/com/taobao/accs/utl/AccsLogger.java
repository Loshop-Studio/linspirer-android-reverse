package com.taobao.accs.utl;

import com.alibaba.sdk.android.logger.BaseSdkLogApi;
import com.alibaba.sdk.android.logger.ILog;
import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsLogger {

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.utl.AccsLogger$a */
    public static class C1972a {

        /* renamed from: a */
        public static final BaseSdkLogApi f6384a = new BaseSdkLogApi("EMASNAccs", false);
    }

    public static void addILogger(ILogger iLogger) {
        C1972a.f6384a.addILogger(iLogger);
    }

    public static void enable(boolean z) {
        C1972a.f6384a.enable(z);
    }

    public static ILog getLogger(Object obj) {
        return C1972a.f6384a.getLogger(obj);
    }

    public static void removeILogger(ILogger iLogger) {
        C1972a.f6384a.removeILogger(iLogger);
    }

    public static void setILogger(ILogger iLogger) {
        C1972a.f6384a.setILogger(iLogger);
    }

    public static void setLevel(LogLevel logLevel) {
        C1972a.f6384a.setLevel(logLevel);
    }
}
