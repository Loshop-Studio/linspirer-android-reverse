package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.LogLevel;

/* renamed from: com.alibaba.sdk.android.logger.b.b */
/* loaded from: classes.dex */
public class SdkLogLevelControl {

    /* renamed from: a */
    public static final LogLevel f969a = LogLevel.WARN;

    /* renamed from: b */
    public boolean f970b = true;

    /* renamed from: c */
    public LogLevel f971c = f969a;

    /* renamed from: a */
    public void m678a(LogLevel logLevel) {
        this.f971c = logLevel;
    }

    /* renamed from: a */
    public void m679a(boolean z) {
        this.f970b = z;
    }

    /* renamed from: b */
    public boolean m680b(LogLevel logLevel) {
        return this.f970b && logLevel.ordinal() >= this.f971c.ordinal();
    }
}
