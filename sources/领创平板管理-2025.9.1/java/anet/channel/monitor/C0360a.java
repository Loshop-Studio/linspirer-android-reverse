package anet.channel.monitor;

import anet.channel.util.ALog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.a */
/* loaded from: classes.dex */
public class C0360a {

    /* renamed from: a */
    public static volatile C0360a f290a;

    /* renamed from: b */
    public Map<INetworkQualityChangeListener, C0365f> f291b = new ConcurrentHashMap();

    /* renamed from: c */
    public C0365f f292c = new C0365f();

    /* renamed from: a */
    public static C0360a m145a() {
        if (f290a == null) {
            synchronized (C0360a.class) {
                if (f290a == null) {
                    f290a = new C0360a();
                }
            }
        }
        return f290a;
    }

    /* renamed from: a */
    public void m148a(INetworkQualityChangeListener iNetworkQualityChangeListener, C0365f c0365f) {
        if (iNetworkQualityChangeListener == null) {
            ALog.m339e("BandWidthListenerHelp", "listener is null", null, new Object[0]);
            return;
        }
        if (c0365f == null) {
            this.f292c.f325b = System.currentTimeMillis();
            this.f291b.put(iNetworkQualityChangeListener, this.f292c);
        } else {
            c0365f.f325b = System.currentTimeMillis();
            this.f291b.put(iNetworkQualityChangeListener, c0365f);
        }
    }

    /* renamed from: a */
    public void m147a(INetworkQualityChangeListener iNetworkQualityChangeListener) {
        this.f291b.remove(iNetworkQualityChangeListener);
    }

    /* renamed from: a */
    public void m146a(double d) {
        boolean zM163a;
        for (Map.Entry<INetworkQualityChangeListener, C0365f> entry : this.f291b.entrySet()) {
            INetworkQualityChangeListener key = entry.getKey();
            C0365f value = entry.getValue();
            if (key != null && value != null && !value.m164b() && value.f324a != (zM163a = value.m163a(d))) {
                value.f324a = zM163a;
                key.onNetworkQualityChanged(zM163a ? NetworkSpeed.Slow : NetworkSpeed.Fast);
            }
        }
    }
}
