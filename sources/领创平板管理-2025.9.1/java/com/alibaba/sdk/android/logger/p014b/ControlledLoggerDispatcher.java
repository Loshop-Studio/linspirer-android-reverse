package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.ILoggerWithControl;
import com.alibaba.sdk.android.logger.LogLevel;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alibaba.sdk.android.logger.b.e */
/* loaded from: classes.dex */
public class ControlledLoggerDispatcher implements ILogger {

    /* renamed from: a */
    public static final ILogger f974a = new SdkPlatformLogger();

    /* renamed from: b */
    public ILogger f975b = f974a;

    /* renamed from: c */
    public ArrayList<ILogger> f976c = new ArrayList<>();

    /* renamed from: d */
    public SdkLogLevelControl f977d;

    public ControlledLoggerDispatcher(SdkLogLevelControl c0536b) {
        this.f977d = c0536b;
    }

    /* renamed from: a */
    private boolean m681a(ILogger iLogger, LogLevel logLevel) {
        if (iLogger == null || !(iLogger instanceof ILoggerWithControl)) {
            return this.f977d.m680b(logLevel);
        }
        try {
            if (((ILoggerWithControl) iLogger).isEnabled()) {
                return ((ILoggerWithControl) iLogger).isPrint(logLevel);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: a */
    public void m682a(ILogger iLogger) {
        if (iLogger == null) {
            iLogger = f974a;
        }
        this.f975b = iLogger;
    }

    /* renamed from: a */
    public boolean m683a(LogLevel logLevel) {
        if (m681a(this.f975b, logLevel)) {
            return true;
        }
        try {
            Iterator<ILogger> it = this.f976c.iterator();
            while (it.hasNext()) {
                if (m681a(it.next(), logLevel)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: b */
    public void m684b(ILogger iLogger) {
        if (iLogger != null) {
            this.f976c.add(iLogger);
        }
    }

    /* renamed from: c */
    public void m685c(ILogger iLogger) {
        if (iLogger != null) {
            this.f976c.remove(iLogger);
        }
    }

    @Override // com.alibaba.sdk.android.logger.ILogger
    public void print(LogLevel logLevel, String str, String str2) {
        if (m681a(this.f975b, logLevel)) {
            try {
                this.f975b.print(logLevel, str, str2);
            } catch (Throwable unused) {
            }
        }
        try {
            Iterator<ILogger> it = this.f976c.iterator();
            while (it.hasNext()) {
                ILogger next = it.next();
                if (m681a(next, logLevel)) {
                    try {
                        next.print(logLevel, str, str2);
                    } catch (Throwable unused2) {
                    }
                }
            }
        } catch (Throwable unused3) {
        }
    }
}
