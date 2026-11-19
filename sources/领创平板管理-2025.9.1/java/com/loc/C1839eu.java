package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.huawei.hem.C0891d1;
import com.taobao.accs.net.C1958t;
import com.taobao.accs.utl.BaseMonitor;
import java.util.ArrayList;
import java.util.List;
import org.android.agoo.message.MessageService;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReportUtil.java */
/* renamed from: com.loc.eu */
/* loaded from: classes.dex */
public final class C1839eu {

    /* renamed from: a */
    public SparseArray<Long> f5788a = new SparseArray<>();

    /* renamed from: b */
    public int f5789b = -1;

    /* renamed from: c */
    public long f5790c = 0;

    /* renamed from: d */
    public String[] f5791d = {"ol", "cl", "gl", "ha", "bs", "ds"};

    /* renamed from: e */
    public int f5792e = -1;

    /* renamed from: f */
    public long f5793f = -1;

    /* renamed from: i */
    public static List<C1734ax> f5786i = new ArrayList();

    /* renamed from: j */
    public static JSONArray f5787j = null;

    /* renamed from: g */
    public static AMapLocation f5784g = null;

    /* renamed from: h */
    public static boolean f5785h = false;

    /* compiled from: ReportUtil.java */
    /* renamed from: com.loc.eu$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5794a;

        static {
            int[] iArr = new int[AMapLocationClientOption.AMapLocationMode.values().length];
            f5794a = iArr;
            try {
                AMapLocationClientOption.AMapLocationMode aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f5794a;
                AMapLocationClientOption.AMapLocationMode aMapLocationMode2 = AMapLocationClientOption.AMapLocationMode.Device_Sensors;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f5794a;
                AMapLocationClientOption.AMapLocationMode aMapLocationMode3 = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: a */
    public static String m5064a(int i) {
        if (i == 2011) {
            return "ContextIsNull";
        }
        if (i == 2031) {
            return "CreateApsReqException";
        }
        if (i == 2041) {
            return "ResponseResultIsNull";
        }
        if (i == 2081) {
            return "LocalLocException";
        }
        if (i == 2091) {
            return "InitException";
        }
        if (i == 2111) {
            return "ErrorCgiInfo";
        }
        if (i == 2121) {
            return "NotLocPermission";
        }
        if (i == 2141) {
            return "NoEnoughStatellites";
        }
        if (i == 2021) {
            return "OnlyMainWifi";
        }
        if (i == 2022) {
            return "OnlyOneWifiButNotMain";
        }
        if (i == 2061) {
            return "ServerRetypeError";
        }
        if (i == 2062) {
            return "ServerLocFail";
        }
        if (i == 2151) {
            return "MaybeMockNetLoc";
        }
        if (i == 2152) {
            return "MaybeMockGPSLoc";
        }
        switch (i) {
            case C1958t.DEAMON_JOB_ID /* 2051 */:
                return "NeedLoginNetWork\t";
            case 2052:
                return "MaybeIntercepted";
            case 2053:
                return "DecryptResponseException";
            case 2054:
                return "ParserDataException";
            default:
                switch (i) {
                    case 2101:
                        return "BindAPSServiceException";
                    case 2102:
                        return "AuthClientScodeFail";
                    case 2103:
                        return "NotConfigAPSService";
                    default:
                        switch (i) {
                            case 2131:
                                return "NoCgiOAndWifiInfo";
                            case 2132:
                                return "AirPlaneModeAndWifiOff";
                            case 2133:
                                return "NoCgiAndWifiOff";
                            default:
                                return "";
                        }
                }
        }
    }

    /* renamed from: a */
    public static void m5065a(long j, long j2) {
        try {
            if (f5785h) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("gpsTime:");
            stringBuffer.append(C1841ew.m5110a(j, "yyyy-MM-dd HH:mm:ss.SSS"));
            stringBuffer.append(",");
            stringBuffer.append("sysTime:");
            stringBuffer.append(C1841ew.m5110a(j2, "yyyy-MM-dd HH:mm:ss.SSS"));
            stringBuffer.append(",");
            long jM5006t = C1833eo.m5006t();
            String strM5110a = MessageService.MSG_DB_READY_REPORT;
            if (0 != jM5006t) {
                strM5110a = C1841ew.m5110a(jM5006t, "yyyy-MM-dd HH:mm:ss.SSS");
            }
            stringBuffer.append("serverTime:");
            stringBuffer.append(strM5110a);
            m5077a("checkgpstime", stringBuffer.toString());
            if (0 != jM5006t && Math.abs(j - jM5006t) < 31536000000L) {
                stringBuffer.append(", correctError");
                m5077a("checkgpstimeerror", stringBuffer.toString());
            }
            stringBuffer.delete(0, stringBuffer.length());
            f5785h = true;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static synchronized void m5066a(Context context) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    if (f5786i != null && f5786i.size() > 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(f5786i);
                        C1735ay.m4189b(arrayList, context);
                        f5786i.clear();
                    }
                    m5081f(context);
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "destroy");
            }
        }
    }

    /* renamed from: a */
    public static void m5067a(Context context, int i, int i2, long j, long j2) {
        if (i == -1 || i2 == -1) {
            return;
        }
        try {
            m5071a(context, "O012", i, i2, j, j2);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "reportServiceAliveTime");
        }
    }

    /* renamed from: a */
    public static void m5068a(Context context, long j, boolean z) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    m5072a(context, "O015", z ? "domestic" : "abroad", Long.valueOf(j).intValue());
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "reportGPSLocUseTime");
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m5069a(Context context, AMapLocation aMapLocation) {
        int i;
        try {
            if (C1841ew.m5116a(aMapLocation)) {
                int locationType = aMapLocation.getLocationType();
                int i2 = 0;
                if (locationType == 1) {
                    i = i2;
                    i2 = 1;
                } else if (locationType == 2 || locationType == 4) {
                    i = 1;
                    i2 = 1;
                } else if (locationType == 8) {
                    i2 = 3;
                    i = i2;
                    i2 = 1;
                } else if (locationType != 9) {
                    i = 0;
                } else {
                    i = 2;
                    i2 = 1;
                }
                if (i2 != 0) {
                    int iM4982c = C1833eo.m4982c();
                    if (iM4982c != 0) {
                        if (i == 0) {
                            if (iM4982c == 2) {
                                return;
                            }
                        } else if (iM4982c == 1) {
                            return;
                        }
                    }
                    if (f5787j == null) {
                        f5787j = new JSONArray();
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("lon", C1841ew.m5125b(aMapLocation.getLongitude()));
                    jSONObject.put(DispatchConstants.LATITUDE, C1841ew.m5125b(aMapLocation.getLatitude()));
                    jSONObject.put("type", i);
                    jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, C1841ew.m5107a());
                    if (aMapLocation.getCoordType().equalsIgnoreCase(AMapLocation.COORD_TYPE_WGS84)) {
                        jSONObject.put("coordType", 1);
                    } else {
                        jSONObject.put("coordType", 2);
                    }
                    if (i == 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("accuracy", C1841ew.m5135c(aMapLocation.getAccuracy()));
                        jSONObject2.put("altitude", C1841ew.m5135c(aMapLocation.getAltitude()));
                        jSONObject2.put("bearing", C1841ew.m5135c(aMapLocation.getBearing()));
                        jSONObject2.put("speed", C1841ew.m5135c(aMapLocation.getSpeed()));
                        jSONObject.put("extension", jSONObject2);
                    }
                    JSONArray jSONArrayPut = f5787j.put(jSONObject);
                    f5787j = jSONArrayPut;
                    if (jSONArrayPut.length() >= C1833eo.m4979b()) {
                        m5081f(context);
                    }
                }
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "recordOfflineLocLog");
        }
    }

    /* renamed from: a */
    public static void m5070a(Context context, AMapLocation aMapLocation, C1806do c1806do) {
        int i;
        if (aMapLocation == null) {
            return;
        }
        try {
            if (!"gps".equalsIgnoreCase(aMapLocation.getProvider()) && aMapLocation.getLocationType() != 1) {
                String str = m5080a(aMapLocation) ? "abroad" : "domestic";
                String str2 = "cache";
                if (aMapLocation.getErrorCode() != 0) {
                    int errorCode = aMapLocation.getErrorCode();
                    if (errorCode == 4 || errorCode == 5 || errorCode == 6 || errorCode == 11) {
                        str2 = "net";
                    }
                    i = 0;
                } else {
                    int locationType = aMapLocation.getLocationType();
                    if (locationType == 5 || locationType == 6) {
                        str2 = "net";
                    }
                    i = 1;
                }
                m5073a(context, "O016", str2, str, i, aMapLocation.getErrorCode(), c1806do);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "reportBatting");
        }
    }

    /* renamed from: a */
    public static void m5071a(Context context, String str, int i, int i2, long j, long j2) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("param_int_first", i);
                    jSONObject.put("param_int_second", i2);
                    jSONObject.put("param_long_first", j);
                    jSONObject.put("param_long_second", j2);
                    m5074a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    /* renamed from: a */
    public static void m5072a(Context context, String str, String str2, int i) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (!TextUtils.isEmpty(null)) {
                        jSONObject.put("param_string_second", (Object) null);
                    }
                    if (i != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i);
                    }
                    m5074a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    /* renamed from: a */
    public static void m5073a(Context context, String str, String str2, String str3, int i, int i2, C1806do c1806do) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        jSONObject.put("param_string_second", str3);
                    }
                    if (i != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i);
                    }
                    if (i2 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_second", i2);
                    }
                    if (c1806do != null) {
                        if (!TextUtils.isEmpty(c1806do.m4587d())) {
                            jSONObject.put(BaseMonitor.COUNT_POINT_DNS, c1806do.m4587d());
                        }
                        if (!TextUtils.isEmpty(c1806do.m4590e())) {
                            jSONObject.put(DispatchConstants.DOMAIN, c1806do.m4590e());
                        }
                        if (!TextUtils.isEmpty(c1806do.m4592f())) {
                            jSONObject.put("type", c1806do.m4592f());
                        }
                        if (!TextUtils.isEmpty(c1806do.m4594g())) {
                            jSONObject.put("reason", c1806do.m4594g());
                        }
                        if (!TextUtils.isEmpty(c1806do.m4584c())) {
                            jSONObject.put("ip", c1806do.m4584c());
                        }
                        if (!TextUtils.isEmpty(c1806do.m4581b())) {
                            jSONObject.put("stack", c1806do.m4581b());
                        }
                        if (c1806do.m4595h() > 0) {
                            jSONObject.put("ctime", String.valueOf(c1806do.m4595h()));
                        }
                        if (c1806do.m4578a() > 0) {
                            jSONObject.put("ntime", String.valueOf(c1806do.m4578a()));
                        }
                    }
                    m5074a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m5074a(Context context, String str, JSONObject jSONObject) {
        if (context != null) {
            try {
                if (C1833eo.m4975a()) {
                    C1734ax c1734ax = new C1734ax(context, "loc", "5.5.1", str);
                    if (jSONObject != null) {
                        c1734ax.m4180a(jSONObject.toString());
                    }
                    f5786i.add(c1734ax);
                    if (f5786i.size() >= 30) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(f5786i);
                        C1735ay.m4189b(arrayList, context);
                        f5786i.clear();
                    }
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "ReportUtil", "applyStatistics");
            }
        }
    }

    /* renamed from: a */
    public static void m5075a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        try {
            if (f5784g == null) {
                if (!C1841ew.m5116a(aMapLocation)) {
                    f5784g = aMapLocation2;
                    return;
                }
                f5784g = aMapLocation.m5888clone();
            }
            if (C1841ew.m5116a(f5784g) && C1841ew.m5116a(aMapLocation2)) {
                AMapLocation aMapLocationM5888clone = aMapLocation2.m5888clone();
                if (f5784g.getLocationType() != 1 && f5784g.getLocationType() != 9 && !"gps".equalsIgnoreCase(f5784g.getProvider()) && f5784g.getLocationType() != 7 && aMapLocationM5888clone.getLocationType() != 1 && aMapLocationM5888clone.getLocationType() != 9 && !"gps".equalsIgnoreCase(aMapLocationM5888clone.getProvider()) && aMapLocationM5888clone.getLocationType() != 7) {
                    long jAbs = Math.abs(aMapLocationM5888clone.getTime() - f5784g.getTime()) / 1000;
                    if (jAbs <= 0) {
                        jAbs = 1;
                    }
                    if (jAbs <= 1800) {
                        float fM5103a = C1841ew.m5103a(f5784g, aMapLocationM5888clone);
                        float f = fM5103a / jAbs;
                        if (fM5103a > 30000.0f && f > 1000.0f) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(f5784g.getLatitude());
                            sb.append(",");
                            sb.append(f5784g.getLongitude());
                            sb.append(",");
                            sb.append(f5784g.getAccuracy());
                            sb.append(",");
                            sb.append(f5784g.getLocationType());
                            sb.append(",");
                            if (aMapLocation.getTime() != 0) {
                                sb.append(C1841ew.m5110a(f5784g.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(f5784g.getTime());
                            }
                            sb.append("#");
                            sb.append(aMapLocationM5888clone.getLatitude());
                            sb.append(",");
                            sb.append(aMapLocationM5888clone.getLongitude());
                            sb.append(",");
                            sb.append(aMapLocationM5888clone.getAccuracy());
                            sb.append(",");
                            sb.append(aMapLocationM5888clone.getLocationType());
                            sb.append(",");
                            if (aMapLocationM5888clone.getTime() != 0) {
                                sb.append(C1841ew.m5110a(aMapLocationM5888clone.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(aMapLocationM5888clone.getTime());
                            }
                            m5077a("bigshiftstatistics", sb.toString());
                            sb.delete(0, sb.length());
                        }
                    }
                }
                f5784g = aMapLocationM5888clone;
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m5076a(String str, int i) {
        m5078a(str, String.valueOf(i), m5064a(i));
    }

    /* renamed from: a */
    public static void m5077a(String str, String str2) {
        try {
            C1862w.m5332b(C1834ep.m5023c(), str2, str);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "reportLog");
        }
    }

    /* renamed from: a */
    public static void m5078a(String str, String str2, String str3) {
        try {
            C1862w.m5329a(C1834ep.m5023c(), "/mobile/binary", str3, str, str2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m5079a(String str, Throwable th) {
        try {
            if (th instanceof C0891d1) {
                C1862w.m5328a(C1834ep.m5023c(), str, (C0891d1) th);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static boolean m5080a(AMapLocation aMapLocation) {
        return C1841ew.m5116a(aMapLocation) ? !C1834ep.m5015a(aMapLocation.getLatitude(), aMapLocation.getLongitude()) : "http://abroad.apilocate.amap.com/mobile/binary".equals(C1834ep.f5756c);
    }

    /* renamed from: f */
    public static void m5081f(Context context) {
        try {
            if (f5787j == null || f5787j.length() <= 0) {
                return;
            }
            C1733aw.m4176a(new C1732av(context, C1834ep.m5023c(), f5787j.toString()), context);
            f5787j = null;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "writeOfflineLocLog");
        }
    }

    /* renamed from: a */
    public final void m5082a(Context context, int i) {
        try {
            if (this.f5789b == i) {
                return;
            }
            if (this.f5789b != -1 && this.f5789b != i) {
                this.f5788a.append(this.f5789b, Long.valueOf((C1841ew.m5127b() - this.f5790c) + this.f5788a.get(this.f5789b, 0L).longValue()));
            }
            this.f5790c = C1841ew.m5127b() - C1840ev.m5089a(context, "pref1", this.f5791d[i], 0L);
            this.f5789b = i;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "setLocationType");
        }
    }

    /* renamed from: a */
    public final void m5083a(Context context, AMapLocationClientOption aMapLocationClientOption) {
        try {
            int i = AnonymousClass1.f5794a[aMapLocationClientOption.getLocationMode().ordinal()];
            int i2 = 3;
            if (i == 1) {
                i2 = 4;
            } else if (i == 2) {
                i2 = 5;
            } else if (i != 3) {
                i2 = -1;
            }
            if (this.f5792e == i2) {
                return;
            }
            if (this.f5792e != -1 && this.f5792e != i2) {
                this.f5788a.append(this.f5792e, Long.valueOf((C1841ew.m5127b() - this.f5793f) + this.f5788a.get(this.f5792e, 0L).longValue()));
            }
            this.f5793f = C1841ew.m5127b() - C1840ev.m5089a(context, "pref1", this.f5791d[i2], 0L);
            this.f5792e = i2;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "setLocationMode");
        }
    }

    /* renamed from: b */
    public final void m5084b(Context context) {
        try {
            long jM5127b = C1841ew.m5127b() - this.f5790c;
            if (this.f5789b != -1) {
                this.f5788a.append(this.f5789b, Long.valueOf(jM5127b + this.f5788a.get(this.f5789b, 0L).longValue()));
            }
            long jM5127b2 = C1841ew.m5127b() - this.f5793f;
            if (this.f5792e != -1) {
                this.f5788a.append(this.f5792e, Long.valueOf(jM5127b2 + this.f5788a.get(this.f5792e, 0L).longValue()));
            }
            SharedPreferences.Editor editorM5090a = C1840ev.m5090a(context, "pref1");
            for (int i = 0; i < this.f5791d.length; i++) {
                long jLongValue = this.f5788a.get(i, 0L).longValue();
                if (jLongValue > 0 && jLongValue > C1840ev.m5089a(context, "pref1", this.f5791d[i], 0L)) {
                    C1840ev.m5096a(editorM5090a, this.f5791d[i], jLongValue);
                }
            }
            C1840ev.m5093a(editorM5090a);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "ReportUtil", "saveLocationTypeAndMode");
        }
    }

    /* renamed from: c */
    public final int m5085c(Context context) {
        try {
            long jM5089a = C1840ev.m5089a(context, "pref1", this.f5791d[2], 0L);
            long jM5089a2 = C1840ev.m5089a(context, "pref1", this.f5791d[0], 0L);
            long jM5089a3 = C1840ev.m5089a(context, "pref1", this.f5791d[1], 0L);
            if (jM5089a == 0 && jM5089a2 == 0 && jM5089a3 == 0) {
                return -1;
            }
            long j = jM5089a2 - jM5089a;
            long j2 = jM5089a3 - jM5089a;
            return jM5089a > j ? jM5089a > j2 ? 2 : 1 : j > j2 ? 0 : 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: d */
    public final int m5086d(Context context) {
        try {
            long jM5089a = C1840ev.m5089a(context, "pref1", this.f5791d[3], 0L);
            long jM5089a2 = C1840ev.m5089a(context, "pref1", this.f5791d[4], 0L);
            long jM5089a3 = C1840ev.m5089a(context, "pref1", this.f5791d[5], 0L);
            if (jM5089a == 0 && jM5089a2 == 0 && jM5089a3 == 0) {
                return -1;
            }
            return jM5089a > jM5089a2 ? jM5089a > jM5089a3 ? 3 : 5 : jM5089a2 > jM5089a3 ? 4 : 5;
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: e */
    public final void m5087e(Context context) {
        try {
            SharedPreferences.Editor editorM5090a = C1840ev.m5090a(context, "pref1");
            for (int i = 0; i < this.f5791d.length; i++) {
                C1840ev.m5096a(editorM5090a, this.f5791d[i], 0L);
            }
            C1840ev.m5093a(editorM5090a);
        } catch (Throwable unused) {
        }
    }
}
