package com.taobao.accs.utl;

import anet.channel.util.ALog;
import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.a */
/* loaded from: classes.dex */
public final class C1973a implements ILogger {

    /* renamed from: a */
    public final /* synthetic */ ALog.ILog f6386a;

    public C1973a(ALog.ILog iLog) {
        this.f6386a = iLog;
    }

    @Override // com.alibaba.sdk.android.logger.ILogger
    public void print(LogLevel logLevel, String str, String str2) {
        try {
            int i = C1974b.f6387a[logLevel.ordinal()];
            if (i == 1) {
                this.f6386a.mo80d(str, str2);
            } else if (i == 2) {
                this.f6386a.mo83i(str, str2);
            } else if (i == 3) {
                this.f6386a.mo84w(str, str2);
            } else if (i == 4) {
                this.f6386a.mo81e(str, str2);
            }
        } catch (Throwable unused) {
        }
    }
}
