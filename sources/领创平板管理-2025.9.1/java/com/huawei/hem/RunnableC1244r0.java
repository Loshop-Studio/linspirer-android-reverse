package com.huawei.hem;

import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.r0 */
/* loaded from: classes.dex */
public final class RunnableC1244r0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC1119m0 f3589a;

    /* renamed from: b */
    public final /* synthetic */ Context f3590b;

    /* renamed from: c */
    public final /* synthetic */ Map f3591c;

    /* renamed from: d */
    public final /* synthetic */ Handler f3592d;

    /* renamed from: e */
    public final /* synthetic */ C1294t0 f3593e;

    public RunnableC1244r0(InterfaceC1119m0 interfaceC1119m0, Context context, Map map, Handler handler, C1294t0 c1294t0) {
        this.f3589a = interfaceC1119m0;
        this.f3590b = context;
        this.f3591c = map;
        this.f3592d = handler;
        this.f3593e = c1294t0;
    }

    @Override // java.lang.Runnable
    public void run() {
        Notification notificationCustomNotificationUI = this.f3589a.customNotificationUI(this.f3590b, this.f3591c);
        Handler handler = this.f3592d;
        if (handler != null) {
            handler.post(new RunnableC1269s0(this, notificationCustomNotificationUI));
        } else {
            this.f3593e.m2711a(notificationCustomNotificationUI);
        }
    }
}
