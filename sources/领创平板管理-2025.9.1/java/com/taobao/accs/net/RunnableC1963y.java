package com.taobao.accs.net;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.y */
/* loaded from: classes.dex */
public class RunnableC1963y implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1961w f6318a;

    public RunnableC1963y(C1961w c1961w) {
        this.f6318a = c1961w;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6318a.m5707q();
        if (this.f6318a.f6291H != null) {
            this.f6318a.f6291H.setCloseReason("shut down");
        }
        synchronized (this.f6318a.f6304t) {
            try {
                this.f6318a.f6304t.notifyAll();
            } catch (Exception unused) {
            }
        }
    }
}
