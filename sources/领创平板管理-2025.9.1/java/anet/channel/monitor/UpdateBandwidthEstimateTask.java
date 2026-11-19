package anet.channel.monitor;

import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.d */
/* loaded from: classes.dex */
public class UpdateBandwidthEstimateTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f309a;

    /* renamed from: b */
    public final /* synthetic */ long f310b;

    /* renamed from: c */
    public final /* synthetic */ long f311c;

    /* renamed from: d */
    public final /* synthetic */ BandwidthSampler f312d;

    public UpdateBandwidthEstimateTask(BandwidthSampler c0361b, long j, long j2, long j3) {
        this.f312d = c0361b;
        this.f309a = j;
        this.f310b = j2;
        this.f311c = j3;
    }

    @Override // java.lang.Runnable
    public void run() {
        BandwidthSampler.f293a++;
        BandwidthSampler.f297e += this.f309a;
        if (BandwidthSampler.f293a == 1) {
            BandwidthSampler.f296d = this.f310b - this.f311c;
        }
        int i = BandwidthSampler.f293a;
        if (i >= 2 && i <= 3) {
            long j = this.f311c;
            long j2 = BandwidthSampler.f295c;
            if (j >= j2) {
                BandwidthSampler.f296d = (this.f310b - j) + BandwidthSampler.f296d;
            } else if (j < j2) {
                long j3 = this.f310b;
                if (j3 >= j2) {
                    long j4 = (j3 - j) + BandwidthSampler.f296d;
                    BandwidthSampler.f296d = j4;
                    BandwidthSampler.f296d = j4 - (BandwidthSampler.f295c - j);
                }
            }
        }
        BandwidthSampler.f294b = this.f311c;
        BandwidthSampler.f295c = this.f310b;
        if (BandwidthSampler.f293a == 3) {
            BandwidthSampler.f301i = (long) this.f312d.f306n.m160a(BandwidthSampler.f297e, BandwidthSampler.f296d);
            BandwidthSampler.f298f++;
            BandwidthSampler.m152b(this.f312d);
            if (BandwidthSampler.f298f > 30) {
                this.f312d.f306n.m161a();
                BandwidthSampler.f298f = 3L;
            }
            double d = (BandwidthSampler.f299g * 0.05d) + (BandwidthSampler.f300h * 0.27d) + (BandwidthSampler.f301i * 0.68d);
            BandwidthSampler.f299g = BandwidthSampler.f300h;
            BandwidthSampler.f300h = BandwidthSampler.f301i;
            if (BandwidthSampler.f301i < BandwidthSampler.f299g * 0.65d || BandwidthSampler.f301i > BandwidthSampler.f299g * 2.0d) {
                BandwidthSampler.f301i = d;
            }
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.BandWidthSampler", "NetworkSpeed", null, "mKalmanDataSize", Long.valueOf(BandwidthSampler.f297e), "mKalmanTimeUsed", Long.valueOf(BandwidthSampler.f296d), "speed", Double.valueOf(BandwidthSampler.f301i), "mSpeedKalmanCount", Long.valueOf(BandwidthSampler.f298f));
            }
            if (this.f312d.f305m > 5 || BandwidthSampler.f298f == 2) {
                BandwidthListenerRegistry.m145a().m146a(BandwidthSampler.f301i);
                this.f312d.f305m = 0;
                this.f312d.f304l = BandwidthSampler.f301i < BandwidthSampler.f302j ? 1 : 5;
                ALog.m340i("awcn.BandWidthSampler", "NetworkSpeed notification!", null, "Send Network quality notification.");
            }
            BandwidthSampler.f296d = 0L;
            BandwidthSampler.f297e = 0L;
            BandwidthSampler.f293a = 0;
        }
    }
}
