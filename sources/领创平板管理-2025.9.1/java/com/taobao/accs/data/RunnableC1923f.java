package com.taobao.accs.data;

import com.taobao.accs.p072ut.monitor.TrafficsMonitor;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.f */
/* loaded from: classes.dex */
public class RunnableC1923f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1921d f6158a;

    public RunnableC1923f(C1921d c1921d) {
        this.f6158a = c1921d;
    }

    @Override // java.lang.Runnable
    public void run() {
        TrafficsMonitor trafficsMonitor = this.f6158a.f6143c;
        if (trafficsMonitor != null) {
            trafficsMonitor.m5724a();
        }
    }
}
