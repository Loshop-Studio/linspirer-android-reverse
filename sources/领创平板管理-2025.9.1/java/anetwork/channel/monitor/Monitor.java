package anetwork.channel.monitor;

import android.content.Context;
import anet.channel.monitor.C0360a;
import anet.channel.monitor.C0361b;
import anet.channel.monitor.C0365f;
import anet.channel.monitor.INetworkQualityChangeListener;
import anet.channel.monitor.NetworkSpeed;
import anet.channel.util.ALog;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class Monitor {
    public static final String TAG = "anet.Monitor";
    public static AtomicBoolean isInit = new AtomicBoolean(false);

    public static void addListener(INetworkQualityChangeListener iNetworkQualityChangeListener) {
        addListener(iNetworkQualityChangeListener, null);
    }

    public static NetworkSpeed getNetSpeed() {
        NetworkSpeed networkSpeed = NetworkSpeed.Fast;
        try {
            return NetworkSpeed.valueOfCode(C0361b.m150a().m156b());
        } catch (Throwable th) {
            ALog.m338e(TAG, "getNetworkSpeed failed", null, th, new Object[0]);
            return networkSpeed;
        }
    }

    public static double getNetSpeedValue() {
        return C0361b.m150a().m157c();
    }

    @Deprecated
    public static anetwork.channel.monitor.speed.NetworkSpeed getNetworkSpeed() {
        return anetwork.channel.monitor.speed.NetworkSpeed.valueOfCode(getNetSpeed().getCode());
    }

    public static synchronized void init() {
        if (isInit.compareAndSet(false, true)) {
            C0361b.m150a().m158d();
        }
    }

    public static void removeListener(INetworkQualityChangeListener iNetworkQualityChangeListener) {
        C0360a.m145a().m147a(iNetworkQualityChangeListener);
    }

    public static void start() {
        try {
            C0361b.m150a().m158d();
        } catch (Throwable th) {
            ALog.m338e(TAG, "start failed", null, th, new Object[0]);
        }
    }

    public static void stop() {
        try {
            C0361b.m150a().m159e();
        } catch (Throwable th) {
            ALog.m338e(TAG, "stop failed", null, th, new Object[0]);
        }
    }

    public static void addListener(INetworkQualityChangeListener iNetworkQualityChangeListener, C0365f c0365f) {
        C0360a.m145a().m148a(iNetworkQualityChangeListener, c0365f);
    }

    @Deprecated
    public static synchronized void init(Context context) {
        init();
    }
}
