package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.huawei.hem.ZxkExecutorInterface;

/* compiled from: ZxkSDK.java */
/* renamed from: com.huawei.hem.yi */
/* loaded from: classes.dex */
public class ZxkSDK {

    /* renamed from: f */
    public static ZxkSDK f4222f;

    /* renamed from: c */
    public ZxkExecutorInterface f4225c;

    /* renamed from: b */
    public boolean f4224b = false;

    /* renamed from: d */
    public Context f4226d = null;

    /* renamed from: e */
    public ServiceConnection f4227e = new a();

    /* renamed from: a */
    public ZxkSDKProxy f4223a = new ZxkSDKProxy();

    /* compiled from: ZxkSDK.java */
    /* renamed from: com.huawei.hem.yi$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("ZxkSDK", "connect service");
            ZxkSDK.this.f4225c = ZxkExecutorInterface.a.m2534J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("disconnect service-->zxkSDKContext=");
            sbM1765j.append(ZxkSDK.this.f4226d);
            Log.d("ZxkSDK", sbM1765j.toString());
            ZxkSDK c1437yi = ZxkSDK.this;
            Context context = c1437yi.f4226d;
            if (context != null) {
                c1437yi.f4224b = false;
                c1437yi.m3088a(context);
            }
        }
    }

    /* renamed from: a */
    public final void m3088a(Context context) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("bindService:isBind=");
        sbM1765j.append(this.f4224b);
        sbM1765j.append(", mServiceConnection=");
        sbM1765j.append(this.f4227e);
        Log.d("ZxkSDK", sbM1765j.toString());
        if (this.f4224b) {
            return;
        }
        Intent intentM1768m = CompilerOutline.m1768m("com.android.settings.ZxkExecutorService");
        intentM1768m.setComponent(new ComponentName("com.android.settings", "com.android.settings.ZxkExecutorService"));
        this.f4224b = context.bindService(intentM1768m, this.f4227e, 1);
    }

    /* renamed from: b */
    public void m3089b(Context context, String str) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intent = new Intent("com.android.zxkmanager.executor");
        intent.putExtra("task", "sendIPTables_CMD");
        intent.putExtra("parameter", str);
        context.sendOrderedBroadcast(intent, null);
    }

    /* renamed from: c */
    public void m3090c(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setBackKeyState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: d */
    public void m3091d(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setBluetoothState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: e */
    public void m3092e(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setCameraState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: f */
    public void m3093f(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setGpsState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: g */
    public void m3094g(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setHomeKeyState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: h */
    public void m3095h(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setPowerKeyLongPressState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: i */
    public void m3096i(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setPowerKeyPressState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: j */
    public void m3097j(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setRecentKeyState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: k */
    public void m3098k(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setRecoveryState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: l */
    public void m3099l(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setSDCardState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: m */
    public void m3100m(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setSettingsExtraItemsState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: n */
    public void m3101n(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setStatusBarSwipeState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: o */
    public void m3102o(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setSuspendNotificationState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: p */
    public void m3103p(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setSystemTime");
        StringBuilder sbM1770o = CompilerOutline.m1770o(str, "&", str2, "&", str3);
        sbM1770o.append("&");
        sbM1770o.append(str4);
        sbM1770o.append("&");
        sbM1770o.append(str5);
        sbM1770o.append("&");
        sbM1770o.append(str6);
        intentM1748F.putExtra("parameter", sbM1770o.toString());
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: q */
    public void m3104q(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setUsbConnectionState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: r */
    public void m3105r(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setVolumeKeyState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }

    /* renamed from: s */
    public void m3106s(Context context, boolean z) {
        if (this.f4223a == null) {
            throw null;
        }
        Intent intentM1748F = CompilerOutline.m1748F("com.android.zxkmanager.executor", "task", "setWifiProxyState");
        CompilerOutline.m1750H(z, "", intentM1748F, "parameter");
        context.sendOrderedBroadcast(intentM1748F, null);
    }
}
