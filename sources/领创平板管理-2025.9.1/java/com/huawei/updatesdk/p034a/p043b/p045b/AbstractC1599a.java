package com.huawei.updatesdk.p034a.p043b.p045b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.huawei.updatesdk.a.b.b.a */
/* loaded from: classes.dex */
public abstract class AbstractC1599a extends BroadcastReceiver {
    /* renamed from: a */
    public abstract void mo3594a(Context context, C1600b c1600b);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        mo3594a(context, C1600b.m3595a(intent));
    }
}
