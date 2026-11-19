package com.loc;

import android.content.Context;
import com.amap.api.location.DPoint;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: OffsetUtil.java */
/* renamed from: com.loc.er */
/* loaded from: classes.dex */
public final class OffsetUtil {

    /* renamed from: a */
    public static double f5773a = 3.141592653589793d;

    /* renamed from: b */
    public static final List<DPoint> f5774b = new ArrayList(Arrays.asList(new DPoint(23.379947d, 119.757001d), new DPoint(24.983296d, 120.474496d), new DPoint(25.518722d, 121.359866d), new DPoint(25.41329d, 122.443582d), new DPoint(24.862708d, 122.288354d), new DPoint(24.461292d, 122.188319d), new DPoint(21.584761d, 120.968923d), new DPoint(21.830837d, 120.654445d)));

    /* renamed from: a */
    public static double m5032a(double d) {
        return Math.sin((f5773a / 180.0d) * d * 3000.0d) * 2.0E-5d;
    }

    /* renamed from: a */
    public static double m5033a(double d, double d2) {
        return ((d2 / 9000.0d) * Math.sin(d / 100000.0d)) + ((d / 18000.0d) * Math.cos(d2 / 100000.0d));
    }

    /* renamed from: a */
    public static DPoint m5034a(double d, double d2, double d3, double d4) {
        DPoint dPoint = new DPoint();
        double d5 = d - d3;
        double d6 = d2 - d4;
        DPoint dPointM5044d = m5044d(d5, d6);
        dPoint.setLongitude(m5041c((d + d5) - dPointM5044d.getLongitude()));
        dPoint.setLatitude(m5041c((d2 + d6) - dPointM5044d.getLatitude()));
        return dPoint;
    }

    /* renamed from: a */
    public static DPoint m5035a(Context context, DPoint dPoint) {
        if (context == null) {
            return null;
        }
        return m5040b(dPoint);
    }

    /* renamed from: a */
    public static DPoint m5036a(DPoint dPoint) {
        if (dPoint != null) {
            try {
                if (CoreUtil.m5015a(dPoint.getLatitude(), dPoint.getLongitude())) {
                    return m5043c(dPoint);
                }
                if (!m5045e(dPoint.getLatitude(), dPoint.getLongitude())) {
                    return dPoint;
                }
                DPoint dPointM5043c = m5043c(dPoint);
                return m5046f(dPointM5043c.getLatitude(), dPointM5043c.getLongitude());
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "OffsetUtil", "b2G");
            }
        }
        return dPoint;
    }

    /* renamed from: b */
    public static double m5037b(double d) {
        return Math.cos((f5773a / 180.0d) * d * 3000.0d) * 3.0E-6d;
    }

    /* renamed from: b */
    public static double m5038b(double d, double d2) {
        return ((d2 / 9000.0d) * Math.cos(d / 100000.0d)) + ((d / 18000.0d) * Math.sin(d2 / 100000.0d));
    }

    /* renamed from: b */
    public static DPoint m5039b(Context context, DPoint dPoint) {
        try {
            return !CoreUtil.m5015a(dPoint.getLatitude(), dPoint.getLongitude()) ? dPoint : m5035a(context, m5042c(dPoint.getLongitude(), dPoint.getLatitude()));
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "OffsetUtil", "marbar2G");
            return dPoint;
        }
    }

    /* renamed from: b */
    public static DPoint m5040b(DPoint dPoint) {
        try {
            if (!CoreUtil.m5015a(dPoint.getLatitude(), dPoint.getLongitude())) {
                return dPoint;
            }
            double[] dArrM5158a = CoordinateOffsetMath.m5158a(dPoint.getLongitude(), dPoint.getLatitude());
            return new DPoint(dArrM5158a[1], dArrM5158a[0]);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "OffsetUtil", "cover part2");
            return dPoint;
        }
    }

    /* renamed from: c */
    public static double m5041c(double d) {
        return new BigDecimal(d).setScale(8, 4).doubleValue();
    }

    /* renamed from: c */
    public static DPoint m5042c(double d, double d2) {
        double d3 = ((long) (d * 100000.0d)) % 36000000;
        double d4 = ((long) (d2 * 100000.0d)) % 36000000;
        return new DPoint(((int) (((-m5038b(r4, r2)) + d4) + (d4 <= 0.0d ? -1 : 1))) / 100000.0d, ((int) (((-m5033a((int) ((-m5033a(d3, d4)) + d3), (int) ((-m5038b(d3, d4)) + d4))) + d3) + (d3 > 0.0d ? 1 : -1))) / 100000.0d);
    }

    /* renamed from: c */
    public static DPoint m5043c(DPoint dPoint) {
        DPoint dPointM5034a = null;
        double longitude = 0.006401062d;
        double latitude = 0.0060424805d;
        for (int i = 0; i < 2; i++) {
            dPointM5034a = m5034a(dPoint.getLongitude(), dPoint.getLatitude(), longitude, latitude);
            longitude = dPoint.getLongitude() - dPointM5034a.getLongitude();
            latitude = dPoint.getLatitude() - dPointM5034a.getLatitude();
        }
        return dPointM5034a;
    }

    /* renamed from: d */
    public static DPoint m5044d(double d, double d2) {
        DPoint dPoint = new DPoint();
        double d3 = (d2 * d2) + (d * d);
        double dSqrt = ((Math.sqrt(d3) + m5032a(d2)) * Math.cos(Math.atan2(d2, d) + m5037b(d))) + 0.0065d;
        double dSqrt2 = ((Math.sqrt(d3) + m5032a(d2)) * Math.sin(Math.atan2(d2, d) + m5037b(d))) + 0.006d;
        dPoint.setLongitude(m5041c(dSqrt));
        dPoint.setLatitude(m5041c(dSqrt2));
        return dPoint;
    }

    /* renamed from: e */
    public static boolean m5045e(double d, double d2) {
        return CoreUtil.m5018a(new DPoint(d, d2), f5774b);
    }

    /* renamed from: f */
    public static DPoint m5046f(double d, double d2) {
        DPoint dPointM5047g = m5047g(d, d2);
        return new DPoint((d * 2.0d) - dPointM5047g.getLatitude(), (d2 * 2.0d) - dPointM5047g.getLongitude());
    }

    /* renamed from: g */
    public static DPoint m5047g(double d, double d2) {
        double d3 = d2 - 105.0d;
        double d4 = d - 35.0d;
        double dM5048h = m5048h(d3, d4);
        double dM5049i = m5049i(d3, d4);
        double d5 = (d / 180.0d) * f5773a;
        double dSin = Math.sin(d5);
        double d6 = 1.0d - ((0.006693421622965943d * dSin) * dSin);
        double dSqrt = Math.sqrt(d6);
        return new DPoint(d + ((dM5048h * 180.0d) / ((6335552.717000426d / (d6 * dSqrt)) * f5773a)), d2 + ((dM5049i * 180.0d) / ((Math.cos(d5) * (6378245.0d / dSqrt)) * f5773a)));
    }

    /* renamed from: h */
    public static double m5048h(double d, double d2) {
        double d3 = d * 2.0d;
        double d4 = d2 * 0.2d * d2;
        return ((((Math.sin((d2 * f5773a) / 30.0d) * 320.0d) + (Math.sin((d2 / 12.0d) * f5773a) * 160.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 3.0d) * f5773a) * 40.0d) + (Math.sin(f5773a * d2) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(d3 * f5773a) * 20.0d) + (Math.sin((d * 6.0d) * f5773a) * 20.0d)) * 2.0d) / 3.0d) + (Math.sqrt(Math.abs(d)) * 0.2d) + (0.1d * d * d2) + d4 + (d2 * 3.0d) + (-100.0d) + d3;
    }

    /* renamed from: i */
    public static double m5049i(double d, double d2) {
        double d3 = d2 * 2.0d;
        double d4 = d * 0.1d;
        double d5 = d4 * d;
        double d6 = d4 * d2;
        return ((((Math.sin((d / 30.0d) * f5773a) * 300.0d) + (Math.sin((d / 12.0d) * f5773a) * 150.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d / 3.0d) * f5773a) * 40.0d) + (Math.sin(f5773a * d) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d * 2.0d) * f5773a) * 20.0d) + (Math.sin((6.0d * d) * f5773a) * 20.0d)) * 2.0d) / 3.0d) + (Math.sqrt(Math.abs(d)) * 0.1d) + d6 + d5 + d3 + d + 300.0d;
    }
}
