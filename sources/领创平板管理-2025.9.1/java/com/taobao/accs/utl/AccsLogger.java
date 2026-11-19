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
    public static class AccsLogApiHolder {

        /* renamed from: a */
        public static final BaseSdkLogApi f6384a = new BaseSdkLogApi("EMASNAccs", false);
    }

    public static void addILogger(ILogger iLogger) {
        AccsLogApiHolder.f6384a.addILogger(iLogger);
    }

    public static void enable(boolean z) {
        AccsLogApiHolder.f6384a.enable(z);
    }

    public static ILog getLogger(Object obj) {
        return AccsLogApiHolder.f6384a.getLogger(obj);
    }

    public static void removeILogger(ILogger iLogger) {
        AccsLogApiHolder.f6384a.removeILogger(iLogger);
    }

    public static void setILogger(ILogger iLogger) {
        AccsLogApiHolder.f6384a.setILogger(iLogger);
    }

    public static void setLevel(LogLevel logLevel) {
        AccsLogApiHolder.f6384a.setLevel(logLevel);
    }
}
