package com.taobao.accs.utl;

import anet.channel.util.ALog;
import com.alibaba.sdk.android.logger.ILog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.l */
/* loaded from: classes.dex */
public class C1984l implements ALog.ILog {

    /* renamed from: a */
    public ILog f6403a = AccsLogger.getLogger("NetworkSdk");

    /* renamed from: a */
    private String m5796a(String str, String str2) {
        return "[" + str + "]" + str2;
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: d */
    public void mo80d(String str, String str2) {
        this.f6403a.mo664d(m5796a(str, str2));
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo81e(String str, String str2) {
        this.f6403a.mo666e(m5796a(str, str2));
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: i */
    public void mo83i(String str, String str2) {
        this.f6403a.mo669i(m5796a(str, str2));
    }

    @Override // anet.channel.util.ALog.ILog
    public boolean isPrintLog(int i) {
        return true;
    }

    @Override // anet.channel.util.ALog.ILog
    public boolean isValid() {
        return true;
    }

    @Override // anet.channel.util.ALog.ILog
    public void setLogLevel(int i) {
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: w */
    public void mo84w(String str, String str2) {
        this.f6403a.mo671w(m5796a(str, str2));
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo82e(String str, String str2, Throwable th) {
        this.f6403a.mo667e(m5796a(str, str2), th);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: w */
    public void mo85w(String str, String str2, Throwable th) {
        this.f6403a.mo672w(m5796a(str, str2), th);
    }
}
