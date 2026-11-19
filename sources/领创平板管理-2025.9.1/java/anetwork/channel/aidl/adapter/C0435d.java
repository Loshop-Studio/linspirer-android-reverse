package anetwork.channel.aidl.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import anet.channel.util.ALog;
import anetwork.channel.aidl.IRemoteNetworkGetter;
import anetwork.channel.aidl.NetworkService;
import anetwork.channel.config.NetworkConfigCenter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.d */
/* loaded from: classes.dex */
public class C0435d {

    /* renamed from: a */
    public static volatile IRemoteNetworkGetter f636a = null;

    /* renamed from: b */
    public static volatile boolean f637b = false;

    /* renamed from: c */
    public static volatile boolean f638c = false;

    /* renamed from: d */
    public static volatile CountDownLatch f639d;

    /* renamed from: e */
    public static Handler f640e = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    public static ServiceConnection f641f = new ServiceConnectionC0436e();

    /* renamed from: a */
    public static void m375a(Context context, boolean z) {
        if (f636a == null && !f637b) {
            m374a(context);
            if (f637b || !z) {
                return;
            }
            try {
                synchronized (C0435d.class) {
                    if (f636a != null) {
                        return;
                    }
                    if (f639d == null) {
                        f639d = new CountDownLatch(1);
                    }
                    ALog.m340i("anet.RemoteGetter", "[initRemoteGetterAndWait]begin to wait", null, new Object[0]);
                    if (f639d.await(NetworkConfigCenter.getServiceBindWaitTime(), TimeUnit.SECONDS)) {
                        ALog.m340i("anet.RemoteGetter", "mServiceBindLock count down to 0", null, new Object[0]);
                    } else {
                        ALog.m340i("anet.RemoteGetter", "mServiceBindLock wait timeout", null, new Object[0]);
                    }
                }
            } catch (InterruptedException unused) {
                ALog.m339e("anet.RemoteGetter", "mServiceBindLock wait interrupt", null, new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static IRemoteNetworkGetter m373a() {
        return f636a;
    }

    /* renamed from: a */
    public static void m374a(Context context) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.RemoteGetter", "[asyncBindService] mContext:" + context + " bBindFailed:" + f637b + " bBinding:" + f638c, null, new Object[0]);
        }
        if (context == null || f637b || f638c) {
            return;
        }
        f638c = true;
        Intent intent = new Intent(context, (Class<?>) NetworkService.class);
        intent.setAction(IRemoteNetworkGetter.class.getName());
        intent.addCategory("android.intent.category.DEFAULT");
        f637b = !context.bindService(intent, f641f, 1);
        if (f637b) {
            f638c = false;
            ALog.m339e("anet.RemoteGetter", "[asyncBindService]ANet_Service start not success. ANet run with local mode!", null, new Object[0]);
        }
        f640e.postDelayed(new RunnableC0437f(), 10000L);
    }
}
