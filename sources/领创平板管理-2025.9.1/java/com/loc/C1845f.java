package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;

/* compiled from: ApsServiceCore.java */
/* renamed from: com.loc.f */
/* loaded from: classes.dex */
public final class C1845f {

    /* renamed from: a */
    public C1818e f5820a;

    /* renamed from: b */
    public Context f5821b;

    /* renamed from: c */
    public Messenger f5822c = null;

    public C1845f(Context context) {
        this.f5820a = null;
        this.f5821b = null;
        Context applicationContext = context.getApplicationContext();
        this.f5821b = applicationContext;
        this.f5820a = new C1818e(applicationContext);
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
            C1818e.m4806f();
            this.f5820a.f5540j = C1841ew.m5127b();
            this.f5820a.f5541k = C1841ew.m5107a();
            this.f5820a.m4810a();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ApsServiceCore", "onCreate");
        }
    }

    /* renamed from: b */
    public final void m5197b() {
        try {
            if (this.f5820a != null) {
                this.f5820a.m4814b().sendEmptyMessage(11);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ApsServiceCore", "onDestroy");
        }
    }
}
