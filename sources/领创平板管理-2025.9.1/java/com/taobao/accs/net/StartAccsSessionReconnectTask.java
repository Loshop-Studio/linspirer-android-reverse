package com.taobao.accs.net;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.k */
/* loaded from: classes.dex */
public class StartAccsSessionReconnectTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AccsInAppConnection f6260a;

    public StartAccsSessionReconnectTask(AccsInAppConnection c1948j) {
        this.f6260a = c1948j;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6260a.mo5652o();
    }
}
