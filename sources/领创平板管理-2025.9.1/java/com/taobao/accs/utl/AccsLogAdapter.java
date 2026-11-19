package com.taobao.accs.utl;

import anet.channel.util.ALog;
import com.huawei.hem.CompilerOutline;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.k */
/* loaded from: classes.dex */
public class AccsLogAdapter implements ALog.ILog {

    /* renamed from: a */
    public ALog.ILog f6401a;

    /* renamed from: b */
    public a f6402b;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.utl.k$a */
    public interface a {
        /* renamed from: a */
        void mo5792a(String str);
    }

    public AccsLogAdapter(ALog.ILog iLog, a aVar) {
        this.f6401a = iLog;
        this.f6402b = aVar;
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: d */
    public void mo80d(String str, String str2) {
        this.f6401a.mo80d(str, str2);
        this.f6402b.mo5792a(str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo81e(String str, String str2) {
        this.f6401a.mo81e(str, str2);
        this.f6402b.mo5792a(str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: i */
    public void mo83i(String str, String str2) {
        this.f6401a.mo83i(str, str2);
        this.f6402b.mo5792a(str2);
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
        this.f6401a.mo84w(str, str2);
        this.f6402b.mo5792a(str2);
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: e */
    public void mo82e(String str, String str2, Throwable th) {
        this.f6401a.mo82e(str, str2, th);
        a aVar = this.f6402b;
        StringBuilder sbM1767l = CompilerOutline.m1767l(str2, " ");
        sbM1767l.append(th.getMessage());
        aVar.mo5792a(sbM1767l.toString());
    }

    @Override // anet.channel.util.ALog.ILog
    /* renamed from: w */
    public void mo85w(String str, String str2, Throwable th) {
        this.f6401a.mo85w(str, str2, th);
        a aVar = this.f6402b;
        StringBuilder sbM1767l = CompilerOutline.m1767l(str2, " ");
        sbM1767l.append(th.getMessage());
        aVar.mo5792a(sbM1767l.toString());
    }
}
