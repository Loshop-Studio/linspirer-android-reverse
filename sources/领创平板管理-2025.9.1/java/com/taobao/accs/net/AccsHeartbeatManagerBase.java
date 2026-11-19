package com.taobao.accs.net;

import android.content.ComponentName;
import android.content.Context;
import com.taobao.accs.ServiceReceiver;
import com.taobao.accs.internal.AccsJobService;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.OrangeAdapter;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.f */
/* loaded from: classes.dex */
public abstract class AccsHeartbeatManagerBase {

    /* renamed from: b */
    public static volatile AccsHeartbeatManagerBase f6232b;

    /* renamed from: c */
    public static final int[] f6233c = {270, 360, 480};

    /* renamed from: a */
    public Context f6234a;

    /* renamed from: d */
    public int f6235d;

    /* renamed from: e */
    public long f6236e;

    /* renamed from: f */
    public boolean f6237f = false;

    /* renamed from: g */
    public int[] f6238g = {0, 0, 0};

    /* renamed from: h */
    public boolean f6239h;

    public AccsHeartbeatManagerBase(Context context) {
        this.f6239h = true;
        try {
            this.f6234a = context;
            this.f6235d = 0;
            this.f6236e = System.currentTimeMillis();
            this.f6239h = OrangeAdapter.isSmartHb();
        } catch (Throwable th) {
            ALog.m5727e("HeartbeatManager", "HeartbeatManager", th, new Object[0]);
        }
    }

    /* renamed from: a */
    public static AccsHeartbeatManagerBase m5654a(Context context) {
        if (f6232b == null) {
            synchronized (AccsHeartbeatManagerBase.class) {
                if (f6232b == null) {
                    if (m5655b(context)) {
                        ALog.m5729i("HeartbeatManager", "hb use job", new Object[0]);
                        f6232b = new JobSchedulerHeartbeatManager(context);
                    } else if (m5656c(context)) {
                        ALog.m5729i("HeartbeatManager", "hb use alarm", new Object[0]);
                        f6232b = new AlarmHeartbeatManager(context);
                    } else {
                        ALog.m5729i("HeartbeatManager", "hb use thread", new Object[0]);
                        f6232b = new ScheduledHeartbeatManager(context);
                    }
                }
            }
        }
        return f6232b;
    }

    /* renamed from: b */
    public static boolean m5655b(Context context) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), AccsJobService.class.getName())) == 1;
    }

    /* renamed from: c */
    public static boolean m5656c(Context context) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), ServiceReceiver.class.getName())) == 1;
    }

    /* renamed from: a */
    public abstract void mo5623a(int i);

    /* renamed from: d */
    public void m5660d() {
        this.f6236e = -1L;
        ALog.m5726d("HeartbeatManager", "onNetworkFail", new Object[0]);
    }

    /* renamed from: e */
    public void m5661e() {
        ALog.m5726d("HeartbeatManager", "onHeartbeatSucc", new Object[0]);
        if (System.currentTimeMillis() - this.f6236e <= 7199000) {
            this.f6237f = false;
            this.f6238g[this.f6235d] = 0;
            return;
        }
        int i = this.f6235d;
        if (i >= f6233c.length - 1 || this.f6238g[i] > 2) {
            return;
        }
        ALog.m5726d("HeartbeatManager", "upgrade", new Object[0]);
        this.f6235d++;
        this.f6237f = true;
        this.f6236e = System.currentTimeMillis();
    }

    /* renamed from: f */
    public void m5662f() {
        this.f6235d = 0;
        this.f6236e = System.currentTimeMillis();
        ALog.m5726d("HeartbeatManager", "resetLevel", new Object[0]);
    }

    /* renamed from: b */
    public int m5658b() {
        int i = this.f6239h ? f6233c[this.f6235d] : 270;
        this.f6239h = OrangeAdapter.isSmartHb();
        return i;
    }

    /* renamed from: c */
    public void m5659c() {
        this.f6236e = -1L;
        if (this.f6237f) {
            int[] iArr = this.f6238g;
            int i = this.f6235d;
            iArr[i] = iArr[i] + 1;
        }
        int i2 = this.f6235d;
        this.f6235d = i2 > 0 ? i2 - 1 : 0;
        ALog.m5726d("HeartbeatManager", "onNetworkTimeout", new Object[0]);
    }

    /* renamed from: a */
    public synchronized void m5657a() {
        try {
            if (this.f6236e < 0) {
                this.f6236e = System.currentTimeMillis();
            }
            int iM5658b = m5658b();
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d("HeartbeatManager", "set " + iM5658b, new Object[0]);
            }
            mo5623a(iM5658b);
        } catch (Throwable th) {
            ALog.m5727e("HeartbeatManager", "set", th, new Object[0]);
        }
    }
}
