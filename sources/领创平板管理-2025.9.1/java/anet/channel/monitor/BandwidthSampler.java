package anet.channel.monitor;

import android.support.v7.widget.TooltipCompatHandler;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.b */
/* loaded from: classes.dex */
public class BandwidthSampler {

    /* renamed from: a */
    public static int f293a = 0;

    /* renamed from: b */
    public static long f294b = 0;

    /* renamed from: c */
    public static long f295c = 0;

    /* renamed from: d */
    public static long f296d = 0;

    /* renamed from: e */
    public static long f297e = 0;

    /* renamed from: f */
    public static long f298f = 0;

    /* renamed from: g */
    public static double f299g = 0.0d;

    /* renamed from: h */
    public static double f300h = 0.0d;

    /* renamed from: i */
    public static double f301i = 0.0d;

    /* renamed from: j */
    public static double f302j = 40.0d;

    /* renamed from: k */
    public static volatile boolean f303k = false;

    /* renamed from: l */
    public int f304l;

    /* renamed from: m */
    public int f305m;

    /* renamed from: n */
    public BandwidthSampleFilter f306n;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.monitor.b$a */
    public static class a {

        /* renamed from: a */
        public static BandwidthSampler f307a = new BandwidthSampler(null);
    }

    public /* synthetic */ BandwidthSampler(BandwidthNetworkChangeListener c0362c) {
        this();
    }

    /* renamed from: b */
    public static /* synthetic */ int m152b(BandwidthSampler c0361b) {
        int i = c0361b.f305m;
        c0361b.f305m = i + 1;
        return i;
    }

    /* renamed from: d */
    public synchronized void m158d() {
        try {
            ALog.m340i("awcn.BandWidthSampler", "[startNetworkMeter]", null, "NetworkStatus", NetworkStatusHelper.getStatus());
        } catch (Exception e) {
            ALog.m341w("awcn.BandWidthSampler", "startNetworkMeter fail.", null, e, new Object[0]);
        }
        if (NetworkStatusHelper.getStatus() == NetworkStatusHelper.NetworkStatus.G2) {
            f303k = false;
        } else {
            f303k = true;
        }
    }

    /* renamed from: e */
    public void m159e() {
        f303k = false;
    }

    public BandwidthSampler() {
        this.f304l = 5;
        this.f305m = 0;
        this.f306n = new BandwidthSampleFilter();
        NetworkStatusHelper.addStatusChangeListener(new BandwidthNetworkChangeListener(this));
    }

    /* renamed from: c */
    public double m157c() {
        return f301i;
    }

    /* renamed from: a */
    public static BandwidthSampler m150a() {
        return a.f307a;
    }

    /* renamed from: b */
    public int m156b() {
        if (NetworkStatusHelper.getStatus() == NetworkStatusHelper.NetworkStatus.G2) {
            return 1;
        }
        return this.f304l;
    }

    /* renamed from: a */
    public void m155a(long j, long j2, long j3) {
        if (f303k) {
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.BandWidthSampler", "onDataReceived", null, "mRequestStartTime", Long.valueOf(j), "mRequestFinishedTime", Long.valueOf(j2), "mRequestDataSize", Long.valueOf(j3));
            }
            if (j3 <= TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS || j >= j2) {
                return;
            }
            ThreadPoolExecutorFactory.submitScheduledTask(new UpdateBandwidthEstimateTask(this, j3, j2, j));
        }
    }
}
