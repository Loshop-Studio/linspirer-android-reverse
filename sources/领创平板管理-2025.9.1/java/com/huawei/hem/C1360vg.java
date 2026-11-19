package com.huawei.hem;

import android.annotation.TargetApi;
import android.app.Notification;

/* compiled from: ForegroundServiceConfig.java */
@TargetApi(26)
/* renamed from: com.huawei.hem.vg */
/* loaded from: classes.dex */
public class C1360vg {

    /* renamed from: a */
    public int f3956a;

    /* renamed from: b */
    public String f3957b;

    /* renamed from: c */
    public String f3958c;

    /* renamed from: d */
    public Notification f3959d;

    /* renamed from: e */
    public boolean f3960e;

    public C1360vg(a aVar) {
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("ForegroundServiceConfig{notificationId=");
        sbM1765j.append(this.f3956a);
        sbM1765j.append(", notificationChannelId='");
        C0948f6.m1781z(sbM1765j, this.f3957b, '\'', ", notificationChannelName='");
        C0948f6.m1781z(sbM1765j, this.f3958c, '\'', ", notification=");
        sbM1765j.append(this.f3959d);
        sbM1765j.append(", needRecreateChannelId=");
        sbM1765j.append(this.f3960e);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
