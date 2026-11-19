package com.amap.api.location;

import android.content.Context;
import android.text.TextUtils;
import com.loc.CoreUtil;
import com.loc.OffsetUtil;
import com.loc.ReportUtil;
import com.loc.AMapLocationUtilities;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CoordinateConverter {

    /* renamed from: b */
    public static int f1569b = 0;

    /* renamed from: c */
    public static int f1570c = 1;

    /* renamed from: d */
    public static int f1571d = 2;

    /* renamed from: e */
    public static int f1572e = 4;

    /* renamed from: f */
    public static int f1573f = 8;

    /* renamed from: g */
    public static int f1574g = 16;

    /* renamed from: h */
    public static int f1575h = 32;

    /* renamed from: i */
    public static int f1576i = 64;

    /* renamed from: j */
    public Context f1578j;

    /* renamed from: k */
    public CoordType f1579k = null;

    /* renamed from: l */
    public DPoint f1580l = null;

    /* renamed from: a */
    public DPoint f1577a = null;

    /* renamed from: com.amap.api.location.CoordinateConverter$1 */
    public static /* synthetic */ class CoordinateTypeSwitch {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1581a;

        static {
            int[] iArr = new int[CoordType.values().length];
            f1581a = iArr;
            try {
                CoordType coordType = CoordType.BAIDU;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f1581a;
                CoordType coordType2 = CoordType.MAPBAR;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f1581a;
                CoordType coordType3 = CoordType.MAPABC;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f1581a;
                CoordType coordType4 = CoordType.SOSOMAP;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = f1581a;
                CoordType coordType5 = CoordType.ALIYUN;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = f1581a;
                CoordType coordType6 = CoordType.GOOGLE;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = f1581a;
                CoordType coordType7 = CoordType.GPS;
                iArr7[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum CoordType {
        BAIDU,
        MAPBAR,
        MAPABC,
        SOSOMAP,
        ALIYUN,
        GOOGLE,
        GPS
    }

    public CoordinateConverter(Context context) {
        this.f1578j = context;
    }

    public static float calculateLineDistance(DPoint dPoint, DPoint dPoint2) {
        try {
            return AMapLocationUtilities.m5104a(dPoint, dPoint2);
        } catch (Throwable unused) {
            return 0.0f;
        }
    }

    public static boolean isAMapDataAvailable(double d, double d2) {
        return CoreUtil.m5015a(d, d2);
    }

    public synchronized DPoint convert() {
        int i;
        int i2;
        DPoint dPointM5035a;
        if (this.f1579k == null) {
            throw new IllegalArgumentException("转换坐标类型不能为空");
        }
        if (this.f1580l == null) {
            throw new IllegalArgumentException("转换坐标源不能为空");
        }
        if (this.f1580l.getLongitude() > 180.0d || this.f1580l.getLongitude() < -180.0d) {
            throw new IllegalArgumentException("请传入合理经度");
        }
        if (this.f1580l.getLatitude() > 90.0d || this.f1580l.getLatitude() < -90.0d) {
            throw new IllegalArgumentException("请传入合理纬度");
        }
        boolean z = false;
        String str = null;
        switch (CoordinateTypeSwitch.f1581a[this.f1579k.ordinal()]) {
            case 1:
                this.f1577a = OffsetUtil.m5036a(this.f1580l);
                if ((f1569b & f1570c) == 0) {
                    str = "baidu";
                    i = f1569b;
                    i2 = f1570c;
                    f1569b = i | i2;
                    z = true;
                    break;
                }
                break;
            case 2:
                this.f1577a = OffsetUtil.m5039b(this.f1578j, this.f1580l);
                if ((f1569b & f1571d) == 0) {
                    str = "mapbar";
                    i = f1569b;
                    i2 = f1571d;
                    f1569b = i | i2;
                    z = true;
                    break;
                }
                break;
            case 3:
                if ((f1569b & f1572e) == 0) {
                    str = "mapabc";
                    f1569b |= f1572e;
                    z = true;
                }
                dPointM5035a = this.f1580l;
                this.f1577a = dPointM5035a;
                break;
            case 4:
                if ((f1569b & f1573f) == 0) {
                    str = "sosomap";
                    f1569b |= f1573f;
                    z = true;
                }
                dPointM5035a = this.f1580l;
                this.f1577a = dPointM5035a;
                break;
            case 5:
                if ((f1569b & f1574g) == 0) {
                    str = "aliyun";
                    f1569b |= f1574g;
                    z = true;
                }
                dPointM5035a = this.f1580l;
                this.f1577a = dPointM5035a;
                break;
            case 6:
                if ((f1569b & f1575h) == 0) {
                    str = "google";
                    f1569b |= f1575h;
                    z = true;
                }
                dPointM5035a = this.f1580l;
                this.f1577a = dPointM5035a;
                break;
            case 7:
                if ((f1569b & f1576i) == 0) {
                    str = "gps";
                    f1569b |= f1576i;
                    z = true;
                }
                dPointM5035a = OffsetUtil.m5035a(this.f1578j, this.f1580l);
                this.f1577a = dPointM5035a;
                break;
        }
        if (z) {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("amap_loc_coordinate", str);
            }
            ReportUtil.m5074a(this.f1578j, "O021", jSONObject);
        }
        return this.f1577a;
    }

    public synchronized CoordinateConverter coord(DPoint dPoint) {
        try {
            if (dPoint == null) {
                throw new IllegalArgumentException("传入经纬度对象为空");
            }
            if (dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                throw new IllegalArgumentException("请传入合理经度");
            }
            if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d) {
                throw new IllegalArgumentException("请传入合理纬度");
            }
            this.f1580l = dPoint;
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized CoordinateConverter from(CoordType coordType) {
        this.f1579k = coordType;
        return this;
    }
}
