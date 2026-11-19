package com.taobao.accs.data;

import com.taobao.accs.p072ut.monitor.TrafficsMonitor;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.e */
/* loaded from: classes.dex */
public class RunnableC1922e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TrafficsMonitor.C1971a f6156a;

    /* renamed from: b */
    public final /* synthetic */ C1921d f6157b;

    public RunnableC1922e(C1921d c1921d, TrafficsMonitor.C1971a c1971a) {
        this.f6157b = c1921d;
        this.f6156a = c1971a;
    }

    @Override // java.lang.Runnable
    public void run() {
        TrafficsMonitor trafficsMonitor = this.f6157b.f6143c;
        if (trafficsMonitor != null) {
            trafficsMonitor.m5725a(this.f6156a);
        }
    }
}
