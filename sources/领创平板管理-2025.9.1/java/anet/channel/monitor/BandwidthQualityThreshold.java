package anet.channel.monitor;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.f */
/* loaded from: classes.dex */
public class BandwidthQualityThreshold {

    /* renamed from: b */
    public long f325b;

    /* renamed from: c */
    public final double f326c = 40.0d;

    /* renamed from: a */
    public boolean f324a = false;

    /* renamed from: d */
    public boolean f327d = true;

    /* renamed from: a */
    public int m162a() {
        return 0;
    }

    /* renamed from: a */
    public boolean m163a(double d) {
        return d < 40.0d;
    }

    /* renamed from: b */
    public final boolean m164b() {
        if (!this.f327d) {
            return false;
        }
        if (System.currentTimeMillis() - this.f325b <= m162a() * 1000) {
            return true;
        }
        this.f327d = false;
        return false;
    }
}
