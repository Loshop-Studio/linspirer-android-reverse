package com.alibaba.sdk.android.sender;

import com.alibaba.sdk.android.logger.BaseSdkLogApi;
import com.alibaba.sdk.android.logger.ILog;
import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* loaded from: classes.dex */
public class SenderLog {

    /* renamed from: com.alibaba.sdk.android.sender.SenderLog$a */
    public static class SenderLogApiHolder {

        /* renamed from: a */
        public static final BaseSdkLogApi f1361a = new BaseSdkLogApi("Sender", false);
    }

    public static void addILogger(ILogger iLogger) {
        SenderLogApiHolder.f1361a.addILogger(iLogger);
    }

    public static void enable(boolean z) {
        SenderLogApiHolder.f1361a.enable(z);
    }

    public static ILog getLogger(Object obj) {
        return SenderLogApiHolder.f1361a.getLogger(obj);
    }

    public static void removeILogger(ILogger iLogger) {
        SenderLogApiHolder.f1361a.removeILogger(iLogger);
    }

    public static void setILogger(ILogger iLogger) {
        SenderLogApiHolder.f1361a.setILogger(iLogger);
    }

    public static void setLevel(LogLevel logLevel) {
        SenderLogApiHolder.f1361a.setLevel(logLevel);
    }
}
