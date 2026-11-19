package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import anetwork.channel.util.RequestConstant;
import com.huawei.hem.IMyAidlInterface;
import com.taobao.agoo.p074a.p075a.AgooCommandFields;

/* compiled from: FnfSDK.java */
/* renamed from: com.huawei.hem.k6 */
/* loaded from: classes.dex */
public class FnfSDK {

    /* renamed from: d */
    public static FnfSDK f3034d;

    /* renamed from: b */
    public IMyAidlInterface f3036b;

    /* renamed from: c */
    public ServiceConnection f3037c = new a();

    /* renamed from: a */
    public FnfSDKProxy f3035a = new FnfSDKProxy();

    /* compiled from: FnfSDK.java */
    /* renamed from: com.huawei.hem.k6$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            FnfSDK.this.f3036b = IMyAidlInterface.a.m2118J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    public void m2164a(Context context, String str, String str2) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.devicepolicy");
        intentM1751I.putExtra("parameter", str + "&" + str2);
        context.startService(intentM1751I);
    }

    /* renamed from: b */
    public void m2165b(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.bluetooth");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: c */
    public void m2166c(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.camera");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: d */
    public void m2167d(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.gps");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: e */
    public void m2168e(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.powerLong");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: f */
    public void m2169f(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.powerShort");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: g */
    public void m2170g(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.esdcard");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: h */
    public void m2171h(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.voicekey");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: i */
    public void m2172i(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.wifi");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: j */
    public void m2173j(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.bluetooth");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: k */
    public void m2174k(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.camera");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: l */
    public void m2175l(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.gps");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: m */
    public void m2176m(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.powerLong");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: n */
    public void m2177n(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.powerShort");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: o */
    public void m2178o(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.esdcard");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: p */
    public void m2179p(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.voicekey");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: q */
    public void m2180q(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.wifi");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: r */
    public void m2181r(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.backkey");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: s */
    public void m2182s(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.homekey");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: t */
    public void m2183t(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.recentkey");
        intentM1751I.putExtra("parameter", RequestConstant.TRUE);
        context.startService(intentM1751I);
    }

    /* renamed from: u */
    public void m2184u(Context context, String str) {
        if (this.f3035a == null) {
            throw null;
        }
        context.startService(CompilerOutline.m1751I("com.fnf.iptables.IPTABLE_CMD", "com.fnf.iptables", "com.fnf.iptables.IPTableService", AgooCommandFields.JSON_CMD, str));
    }

    /* renamed from: v */
    public void m2185v(Context context, String str, OnGetIPTablesMessage interfaceC1125m6) {
        this.f3035a.f3155d = interfaceC1125m6;
        interfaceC1125m6.mo2348b(str);
        Intent intent = new Intent("com.fnf.iptables.IPTABLE_CMD");
        intent.setClassName("com.fnf.iptables", "com.fnf.iptables.IPTableService");
        intent.putExtra(AgooCommandFields.JSON_CMD, str);
        context.startService(intent);
    }

    /* renamed from: w */
    public void m2186w(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.backkey");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: x */
    public void m2187x(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.homekey");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }

    /* renamed from: y */
    public void m2188y(Context context) {
        if (this.f3035a == null) {
            throw null;
        }
        Intent intentM1751I = CompilerOutline.m1751I("action.executor", "com.fnf.executor", "com.fnf.executor.service.FnfService", "task", "task.recentkey");
        intentM1751I.putExtra("parameter", RequestConstant.FALSE);
        context.startService(intentM1751I);
    }
}
