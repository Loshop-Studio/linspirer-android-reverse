package anet.channel.monitor;

import anet.channel.util.ALog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.a */
/* loaded from: classes.dex */
public class BandwidthListenerRegistry {

    /* renamed from: a */
    public static volatile BandwidthListenerRegistry f290a;

    /* renamed from: b */
    public Map<INetworkQualityChangeListener, BandwidthQualityThreshold> f291b = new ConcurrentHashMap();

    /* renamed from: c */
    public BandwidthQualityThreshold f292c = new BandwidthQualityThreshold();

    /* renamed from: a */
    public static BandwidthListenerRegistry m145a() {
        if (f290a == null) {
            synchronized (BandwidthListenerRegistry.class) {
                if (f290a == null) {
                    f290a = new BandwidthListenerRegistry();
                }
            }
        }
        return f290a;
    }

    /* renamed from: a */
    public void m148a(INetworkQualityChangeListener iNetworkQualityChangeListener, BandwidthQualityThreshold c0365f) {
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
        for (Map.Entry<INetworkQualityChangeListener, BandwidthQualityThreshold> entry : this.f291b.entrySet()) {
            INetworkQualityChangeListener key = entry.getKey();
            BandwidthQualityThreshold value = entry.getValue();
            if (key != null && value != null && !value.m164b() && value.f324a != (zM163a = value.m163a(d))) {
                value.f324a = zM163a;
                key.onNetworkQualityChanged(zM163a ? NetworkSpeed.Slow : NetworkSpeed.Fast);
            }
        }
    }
}
