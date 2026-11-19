package com.taobao.accs.net;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.z */
/* loaded from: classes.dex */
public class RunnableC1964z implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6319a;

    /* renamed from: b */
    public final /* synthetic */ C1961w f6320b;

    public RunnableC1964z(C1961w c1961w, String str) {
        this.f6320b = c1961w;
        this.f6319a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = this.f6319a;
        if (str != null && str.equals(this.f6320b.f6297N) && this.f6320b.f6303s == 2) {
            this.f6320b.f6293J = false;
            this.f6320b.f6295L = true;
            this.f6320b.m5707q();
            this.f6320b.f6291H.setCloseReason("conn timeout");
        }
    }
}
