package com.huawei.hem;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;

/* compiled from: GuideSetUpObserver.java */
/* renamed from: com.huawei.hem.f5 */
/* loaded from: classes.dex */
public class C0947f5 extends ContentObserver {

    /* renamed from: a */
    public Context f2638a;

    public C0947f5(Handler handler, Context context) {
        super(null);
        this.f2638a = context;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        try {
            if (Settings.Secure.getInt(this.f2638a.getContentResolver(), "device_provisioned", 0) != 0) {
                C0850bc.f2294f.mo1313O("com.android.launcher3", C1219q0.m2522r(C0904de.m1589f()));
            }
        } catch (Throwable unused) {
        }
    }
}
