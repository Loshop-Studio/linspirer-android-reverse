package com.huawei.hem;

import android.app.Notification;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.s0 */
/* loaded from: classes.dex */
public class AgooDeliverNotificationTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Notification f3652a;

    /* renamed from: b */
    public final /* synthetic */ AgooBuildNotificationTask f3653b;

    public AgooDeliverNotificationTask(AgooBuildNotificationTask runnableC1244r0, Notification notification) {
        this.f3653b = runnableC1244r0;
        this.f3652a = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3653b.f3593e.m2711a(this.f3652a);
    }
}
