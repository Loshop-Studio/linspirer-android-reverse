package com.amap.api.location;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.loc.C1834ep;
import com.loc.C1845f;
import com.loc.C1860u;

/* loaded from: classes.dex */
public class APSService extends Service {

    /* renamed from: a */
    public C1845f f1565a;

    /* renamed from: b */
    public int f1566b = 0;

    /* renamed from: c */
    public boolean f1567c = false;

    /* renamed from: a */
    private void m1063a(Context context) {
        try {
            if (this.f1565a == null) {
                this.f1565a = new C1845f(context);
            }
            this.f1565a.m5196a();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "APSService", "onCreate");
        }
        super.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        try {
            return this.f1565a.m5195a(intent);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "APSService", "onBind");
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        m1063a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            this.f1565a.m5197b();
            if (this.f1567c) {
                stopForeground(true);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "APSService", "onDestroy");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                int intExtra = intent.getIntExtra(C1860u.f5946f, 0);
                if (intExtra == 1) {
                    int intExtra2 = intent.getIntExtra("i", 0);
                    Notification notification = (Notification) intent.getParcelableExtra(C1860u.f5947g);
                    if (intExtra2 != 0 && notification != null) {
                        startForeground(intExtra2, notification);
                        this.f1567c = true;
                        this.f1566b++;
                    }
                } else if (intExtra == 2) {
                    if (intent.getBooleanExtra(C1860u.f5950j, true) && this.f1566b > 0) {
                        this.f1566b--;
                    }
                    if (this.f1566b <= 0) {
                        stopForeground(true);
                        this.f1567c = false;
                    } else {
                        stopForeground(false);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }
}
