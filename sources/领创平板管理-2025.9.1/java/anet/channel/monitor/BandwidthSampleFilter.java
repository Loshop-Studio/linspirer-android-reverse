package anet.channel.monitor;

/* compiled from: Taobao */
/* renamed from: anet.channel.monitor.e */
/* loaded from: classes.dex */
public class BandwidthSampleFilter {

    /* renamed from: b */
    public double f314b;

    /* renamed from: c */
    public double f315c;

    /* renamed from: d */
    public double f316d;

    /* renamed from: e */
    public double f317e;

    /* renamed from: f */
    public double f318f;

    /* renamed from: g */
    public double f319g;

    /* renamed from: h */
    public double f320h;

    /* renamed from: a */
    public long f313a = 0;

    /* renamed from: i */
    public double f321i = 0.0d;

    /* renamed from: j */
    public double f322j = 0.0d;

    /* renamed from: k */
    public double f323k = 0.0d;

    /* renamed from: a */
    public double m160a(double d, double d2) {
        double d3 = d / d2;
        if (d3 < 8.0d) {
            if (this.f313a != 0) {
                return this.f323k;
            }
            this.f323k = d3;
            return d3;
        }
        long j = this.f313a;
        if (j == 0) {
            this.f321i = d3;
            this.f320h = d3;
            this.f316d = d3 * 0.1d;
            this.f315c = 0.02d * d3;
            this.f317e = 0.1d * d3 * d3;
        } else if (j == 1) {
            this.f322j = d3;
            this.f320h = d3;
        } else {
            double d4 = this.f322j;
            double d5 = d3 - d4;
            this.f321i = d4;
            this.f322j = d3;
            double d6 = d3 / 0.95d;
            this.f314b = d6;
            this.f319g = d6 - (this.f320h * 0.95d);
            char c = 0;
            double dSqrt = Math.sqrt(this.f316d);
            double d7 = this.f319g;
            if (d7 >= 4.0d * dSqrt) {
                this.f319g = (dSqrt * 2.0d) + (d7 * 0.75d);
                c = 1;
            } else if (d7 <= (-4.0d) * dSqrt) {
                this.f319g = (d7 * 0.75d) + (dSqrt * (-1.0d));
                c = 2;
            }
            double d8 = this.f316d * 1.05d;
            double d9 = this.f319g;
            double dMin = Math.min(Math.max(Math.abs(d8 - ((0.0025d * d9) * d9)), this.f316d * 0.8d), this.f316d * 1.25d);
            this.f316d = dMin;
            double d10 = this.f317e;
            double d11 = d10 / ((0.9025d * d10) + dMin);
            this.f318f = d11;
            double d12 = (d11 * this.f319g) + (1.0526315789473684d * d5) + this.f320h;
            this.f320h = d12;
            if (c == 1) {
                this.f320h = Math.min(d12, this.f314b);
            } else if (c == 2) {
                this.f320h = Math.max(d12, this.f314b);
            }
            this.f317e = (this.f317e + this.f315c) * (1.0d - (0.95d * this.f318f));
        }
        double d13 = this.f320h;
        if (d13 < 0.0d) {
            double d14 = this.f322j * 0.7d;
            this.f323k = d14;
            this.f320h = d14;
        } else {
            this.f323k = d13;
        }
        return this.f323k;
    }

    /* renamed from: a */
    public void m161a() {
        this.f313a = 0L;
        this.f323k = 0.0d;
    }
}
