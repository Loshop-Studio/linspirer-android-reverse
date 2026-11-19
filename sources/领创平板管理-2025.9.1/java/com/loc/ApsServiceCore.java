package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;

/* compiled from: ApsServiceCore.java */
/* renamed from: com.loc.f */
/* loaded from: classes.dex */
public final class ApsServiceCore {

    /* renamed from: a */
    public ApsManager f5820a;

    /* renamed from: b */
    public Context f5821b;

    /* renamed from: c */
    public Messenger f5822c = null;

    public ApsServiceCore(Context context) {
        this.f5820a = null;
        this.f5821b = null;
        Context applicationContext = context.getApplicationContext();
        this.f5821b = applicationContext;
        this.f5820a = new ApsManager(applicationContext);
    }

    /* renamed from: a */
    public final IBinder m5195a(Intent intent) {
        this.f5820a.m4815b(intent);
        this.f5820a.m4811a(intent);
        Messenger messenger = new Messenger(this.f5820a.m4814b());
        this.f5822c = messenger;
        return messenger.getBinder();
    }

    /* renamed from: a */
    public final void m5196a() {
        try {
            ApsManager.m4806f();
            this.f5820a.f5540j = C1841ew.m5127b();
            this.f5820a.f5541k = C1841ew.m5107a();
            this.f5820a.m4810a();
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "onCreate");
        }
    }

    /* renamed from: b */
    public final void m5197b() {
        try {
            if (this.f5820a != null) {
                this.f5820a.m4814b().sendEmptyMessage(11);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ApsServiceCore", "onDestroy");
        }
    }
}
