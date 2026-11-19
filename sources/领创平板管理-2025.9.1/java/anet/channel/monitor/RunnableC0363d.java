package anet.channel.monitor;

import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.d */
/* loaded from: classes.dex */
public class RunnableC0363d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f309a;

    /* renamed from: b */
    public final /* synthetic */ long f310b;

    /* renamed from: c */
    public final /* synthetic */ long f311c;

    /* renamed from: d */
    public final /* synthetic */ C0361b f312d;

    public RunnableC0363d(C0361b c0361b, long j, long j2, long j3) {
        this.f312d = c0361b;
        this.f309a = j;
        this.f310b = j2;
        this.f311c = j3;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0361b.f293a++;
        C0361b.f297e += this.f309a;
        if (C0361b.f293a == 1) {
            C0361b.f296d = this.f310b - this.f311c;
        }
        int i = C0361b.f293a;
        if (i >= 2 && i <= 3) {
            long j = this.f311c;
            long j2 = C0361b.f295c;
            if (j >= j2) {
                C0361b.f296d = (this.f310b - j) + C0361b.f296d;
            } else if (j < j2) {
                long j3 = this.f310b;
                if (j3 >= j2) {
                    long j4 = (j3 - j) + C0361b.f296d;
                    C0361b.f296d = j4;
                    C0361b.f296d = j4 - (C0361b.f295c - j);
                }
            }
        }
        C0361b.f294b = this.f311c;
        C0361b.f295c = this.f310b;
        if (C0361b.f293a == 3) {
            C0361b.f301i = (long) this.f312d.f306n.m160a(C0361b.f297e, C0361b.f296d);
            C0361b.f298f++;
            C0361b.m152b(this.f312d);
            if (C0361b.f298f > 30) {
                this.f312d.f306n.m161a();
                C0361b.f298f = 3L;
            }
            double d = (C0361b.f299g * 0.05d) + (C0361b.f300h * 0.27d) + (C0361b.f301i * 0.68d);
            C0361b.f299g = C0361b.f300h;
            C0361b.f300h = C0361b.f301i;
            if (C0361b.f301i < C0361b.f299g * 0.65d || C0361b.f301i > C0361b.f299g * 2.0d) {
                C0361b.f301i = d;
            }
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.BandWidthSampler", "NetworkSpeed", null, "mKalmanDataSize", Long.valueOf(C0361b.f297e), "mKalmanTimeUsed", Long.valueOf(C0361b.f296d), "speed", Double.valueOf(C0361b.f301i), "mSpeedKalmanCount", Long.valueOf(C0361b.f298f));
            }
            if (this.f312d.f305m > 5 || C0361b.f298f == 2) {
                C0360a.m145a().m146a(C0361b.f301i);
                this.f312d.f305m = 0;
                this.f312d.f304l = C0361b.f301i < C0361b.f302j ? 1 : 5;
                ALog.m340i("awcn.BandWidthSampler", "NetworkSpeed notification!", null, "Send Network quality notification.");
            }
            C0361b.f296d = 0L;
            C0361b.f297e = 0L;
            C0361b.f293a = 0;
        }
    }
}
