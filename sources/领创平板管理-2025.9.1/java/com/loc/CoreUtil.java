package com.loc;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.huawei.hem.AMapCoreException;
import com.huawei.hem.AppInfo;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.AMapCoreUtilities;
import com.huawei.hem.AgooNotificationHandler;
import com.taobao.accs.common.Constants;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

/* compiled from: CoreUtil.java */
/* renamed from: com.loc.ep */
/* loaded from: classes.dex */
public final class CoreUtil {

    /* renamed from: a */
    public static String f5754a = "5.3";

    /* renamed from: c */
    public static String f5756c = "http://apilocate.amap.com/mobile/binary";

    /* renamed from: d */
    public static String f5757d = "http://dualstack-a.apilocate.amap.com/mobile/binary";

    /* renamed from: e */
    public static String f5758e = "";

    /* renamed from: f */
    public static String f5759f = "11G;11K;13J;13S;15O;15U;17J;17Y;197";

    /* renamed from: g */
    public static String f5760g = null;

    /* renamed from: h */
    public static String f5761h = null;

    /* renamed from: i */
    public static int f5762i = 30000;

    /* renamed from: j */
    public static String f5763j = null;

    /* renamed from: k */
    public static String f5764k = null;

    /* renamed from: l */
    public static String f5765l = null;

    /* renamed from: m */
    public static HashMap<String, String> f5766m = null;

    /* renamed from: n */
    public static boolean f5767n = false;

    /* renamed from: o */
    public static boolean f5768o = false;

    /* renamed from: q */
    public static SDKInfo f5770q = null;

    /* renamed from: r */
    public static boolean f5771r = false;

    /* renamed from: s */
    public static boolean f5772s = false;

    /* renamed from: b */
    public static final String[] f5755b = {"5.1"};

    /* renamed from: p */
    public static final String[] f5769p = {"com.amap.api.location", "com.loc", "com.amap.api.fence"};

    /* renamed from: a */
    public static Bundle m5007a(AMapLocationClientOption aMapLocationClientOption) {
        Bundle bundle = new Bundle();
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        try {
            bundle.putParcelable("opt", aMapLocationClientOption);
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "getOptionBundle");
        }
        return bundle;
    }

    /* renamed from: a */
    public static AMapLocation m5008a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        if (aMapLocation2 == null) {
            return aMapLocation;
        }
        try {
            aMapLocation.setCountry(aMapLocation2.getCountry());
            aMapLocation.setRoad(aMapLocation2.getRoad());
            aMapLocation.setPoiName(aMapLocation2.getPoiName());
            aMapLocation.setStreet(aMapLocation2.getStreet());
            aMapLocation.setNumber(aMapLocation2.getStreetNum());
            String cityCode = aMapLocation2.getCityCode();
            String adCode = aMapLocation2.getAdCode();
            aMapLocation.setCityCode(cityCode);
            aMapLocation.setAdCode(adCode);
            aMapLocation.setCity(aMapLocation2.getCity());
            aMapLocation.setDistrict(aMapLocation2.getDistrict());
            aMapLocation.setProvince(aMapLocation2.getProvince());
            aMapLocation.setAoiName(aMapLocation2.getAoiName());
            aMapLocation.setAddress(aMapLocation2.getAddress());
            aMapLocation.setDescription(aMapLocation2.getDescription());
            if (aMapLocation.getExtras() != null) {
                aMapLocation.getExtras().putString("citycode", aMapLocation2.getCityCode());
                aMapLocation.getExtras().putString("desc", aMapLocation2.getExtras().getString("desc"));
                aMapLocation.getExtras().putString("adcode", aMapLocation2.getAdCode());
            } else {
                Bundle bundle = new Bundle();
                bundle.putString("citycode", aMapLocation2.getCityCode());
                bundle.putString("desc", aMapLocation2.getExtras().getString("desc"));
                bundle.putString("adcode", aMapLocation2.getAdCode());
                aMapLocation.setExtras(bundle);
            }
        } catch (Throwable unused) {
        }
        return aMapLocation;
    }

    /* renamed from: a */
    public static AMapLocationClientOption m5009a(Bundle bundle) {
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        if (bundle == null) {
            return aMapLocationClientOption;
        }
        try {
            bundle.setClassLoader(AMapLocationClientOption.class.getClassLoader());
            return (AMapLocationClientOption) bundle.getParcelable("opt");
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "getOptionFromBundle");
            return aMapLocationClientOption;
        }
    }

    /* renamed from: a */
    public static String m5010a() {
        return f5756c;
    }

    /* renamed from: a */
    public static void m5011a(Context context) {
        try {
            if (AMapCoreUtilities.m2249r(context)) {
                f5756c = "http://abroad.apilocate.amap.com/mobile/binary";
                return;
            }
            m5027f();
            String strM4870a = AMapLocationCipher.m4870a(AppInfo.m1641g(context));
            f5765l = strM4870a;
            m5013a(strM4870a);
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "checkUrl");
        }
    }

    /* renamed from: a */
    public static void m5012a(AMapLocation aMapLocation, JSONObject jSONObject) {
        String strOptString;
        if (jSONObject != null) {
            try {
                double dOptDouble = jSONObject.optDouble(DispatchConstants.LATITUDE, aMapLocation.getLatitude());
                double dOptDouble2 = jSONObject.optDouble("lon", aMapLocation.getLongitude());
                aMapLocation.setProvider(jSONObject.optString("provider", aMapLocation.getProvider()));
                aMapLocation.setLatitude(dOptDouble);
                aMapLocation.setLongitude(dOptDouble2);
                aMapLocation.setAltitude(jSONObject.optDouble("altitude", aMapLocation.getAltitude()));
                try {
                    String strOptString2 = jSONObject.optString("accuracy");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        aMapLocation.setAccuracy(Float.parseFloat(strOptString2));
                    }
                } catch (Throwable unused) {
                }
                try {
                    String strOptString3 = jSONObject.optString("speed");
                    if (!TextUtils.isEmpty(strOptString3)) {
                        aMapLocation.setSpeed(Float.parseFloat(strOptString3));
                    }
                } catch (Throwable unused2) {
                }
                try {
                    String strOptString4 = jSONObject.optString("bearing");
                    if (!TextUtils.isEmpty(strOptString4)) {
                        aMapLocation.setBearing(Float.parseFloat(strOptString4));
                    }
                } catch (Throwable unused3) {
                }
                aMapLocation.setAdCode(jSONObject.optString("adcode", aMapLocation.getAdCode()));
                aMapLocation.setCityCode(jSONObject.optString("citycode", aMapLocation.getCityCode()));
                aMapLocation.setAddress(jSONObject.optString("address", aMapLocation.getAddress()));
                String strOptString5 = jSONObject.optString("desc", "");
                aMapLocation.setCountry(jSONObject.optString("country", aMapLocation.getCountry()));
                aMapLocation.setProvince(jSONObject.optString("province", aMapLocation.getProvince()));
                aMapLocation.setCity(jSONObject.optString("city", aMapLocation.getCity()));
                aMapLocation.setDistrict(jSONObject.optString("district", aMapLocation.getDistrict()));
                aMapLocation.setRoad(jSONObject.optString("road", aMapLocation.getRoad()));
                aMapLocation.setStreet(jSONObject.optString("street", aMapLocation.getStreet()));
                aMapLocation.setNumber(jSONObject.optString("number", aMapLocation.getStreetNum()));
                aMapLocation.setPoiName(jSONObject.optString("poiname", aMapLocation.getPoiName()));
                aMapLocation.setAoiName(jSONObject.optString("aoiname", aMapLocation.getAoiName()));
                aMapLocation.setErrorCode(jSONObject.optInt(Constants.KEY_ERROR_CODE, aMapLocation.getErrorCode()));
                aMapLocation.setErrorInfo(jSONObject.optString("errorInfo", aMapLocation.getErrorInfo()));
                aMapLocation.setLocationType(jSONObject.optInt("locationType", aMapLocation.getLocationType()));
                aMapLocation.setLocationDetail(jSONObject.optString("locationDetail", aMapLocation.getLocationDetail()));
                aMapLocation.setTime(jSONObject.optLong("time", aMapLocation.getTime()));
                boolean zOptBoolean = jSONObject.optBoolean("isOffset", aMapLocation.isOffset());
                aMapLocation.setOffset(zOptBoolean);
                aMapLocation.setBuildingId(jSONObject.optString("poiid", aMapLocation.getBuildingId()));
                aMapLocation.setFloor(jSONObject.optString("floor", aMapLocation.getFloor()));
                aMapLocation.setDescription(jSONObject.optString("description", aMapLocation.getDescription()));
                if (jSONObject.has("coordType")) {
                    strOptString = jSONObject.optString("coordType", AMapLocation.COORD_TYPE_GCJ02);
                } else {
                    if (m5015a(dOptDouble, dOptDouble2) && zOptBoolean) {
                        aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                        Bundle bundle = new Bundle();
                        bundle.putString("citycode", aMapLocation.getCityCode());
                        bundle.putString("desc", strOptString5.toString());
                        bundle.putString("adcode", aMapLocation.getAdCode());
                        aMapLocation.setExtras(bundle);
                    }
                    strOptString = AMapLocation.COORD_TYPE_WGS84;
                }
                aMapLocation.setCoordType(strOptString);
                Bundle bundle2 = new Bundle();
                bundle2.putString("citycode", aMapLocation.getCityCode());
                bundle2.putString("desc", strOptString5.toString());
                bundle2.putString("adcode", aMapLocation.getAdCode());
                aMapLocation.setExtras(bundle2);
            } catch (Throwable th) {
                m5014a(th, "CoreUtil", "transformLocation");
            }
        }
    }

    /* renamed from: a */
    public static void m5013a(String str) {
        if (str != null) {
            try {
                if (str.length() == 0 || f5766m == null || !f5766m.containsKey(str)) {
                    return;
                }
                String str2 = f5766m.get(str);
                String str3 = null;
                if (str2 != null && str2.length() > 0) {
                    str3 = new String(AMapLocationCipher.m4877b(m5022b(str2), str), "utf-8");
                }
                if (str3 == null || str3.length() <= 0 || !str3.contains("http:")) {
                    return;
                }
                f5758e = str3;
                f5756c = str3;
            } catch (Throwable th) {
                m5014a(th, "CoreUtil", "checkUrl");
            }
        }
    }

    /* renamed from: a */
    public static void m5014a(Throwable th, String str, String str2) {
        if ("reportError".equals(str2) || (th instanceof AMapCoreException)) {
            return;
        }
        try {
            SDKLogHandler.m5333b(th, str, str2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static boolean m5015a(double d, double d2) {
        int i = (int) ((d2 - 73.0d) / 0.5d);
        int i2 = (int) ((d - 3.5d) / 0.5d);
        if (i2 < 0 || i2 >= 101 || i < 0 || i >= 124) {
            return false;
        }
        try {
            return "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000".charAt((i2 * 124) + i) == '1';
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "isChina");
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m5016a(double d, double d2, double d3, double d4, double d5, double d6) {
        if (Math.abs(m5019b(d, d2, d3, d4, d5, d6)) < 1.0E-9d) {
            if ((d - d5) * (d - d3) <= 0.0d) {
                if ((d2 - d6) * (d2 - d4) <= 0.0d) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5017a(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d3 - d;
        double d9 = d7 - d6;
        double d10 = d4 - d2;
        double d11 = 180.0d - d5;
        double d12 = (d8 * d9) - (d10 * d11);
        if (d12 != 0.0d) {
            double d13 = d2 - d6;
            double d14 = d - d5;
            double d15 = ((d11 * d13) - (d9 * d14)) / d12;
            double d16 = ((d13 * d8) - (d14 * d10)) / d12;
            if (d15 >= 0.0d && d15 <= 1.0d && d16 >= 0.0d && d16 <= 1.0d) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5018a(com.amap.api.location.DPoint r31, java.util.List<com.amap.api.location.DPoint> r32) {
        /*
            r0 = r32
            double r15 = r31.getLongitude()
            double r17 = r31.getLatitude()
            double r19 = r31.getLatitude()
            r13 = 0
            java.lang.Object r1 = r0.get(r13)
            com.amap.api.location.DPoint r1 = (com.amap.api.location.DPoint) r1
            int r2 = r32.size()
            r21 = 1
            int r2 = r2 + (-1)
            java.lang.Object r2 = r0.get(r2)
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L2e
            java.lang.Object r1 = r0.get(r13)
            r0.add(r1)
        L2e:
            r1 = r13
            r22 = r1
        L31:
            int r2 = r32.size()
            int r2 = r2 + (-1)
            if (r1 >= r2) goto Ldb
            java.lang.Object r2 = r0.get(r1)
            com.amap.api.location.DPoint r2 = (com.amap.api.location.DPoint) r2
            double r23 = r2.getLongitude()
            java.lang.Object r2 = r0.get(r1)
            com.amap.api.location.DPoint r2 = (com.amap.api.location.DPoint) r2
            double r25 = r2.getLatitude()
            int r14 = r1 + 1
            java.lang.Object r1 = r0.get(r14)
            com.amap.api.location.DPoint r1 = (com.amap.api.location.DPoint) r1
            double r27 = r1.getLongitude()
            java.lang.Object r1 = r0.get(r14)
            com.amap.api.location.DPoint r1 = (com.amap.api.location.DPoint) r1
            double r29 = r1.getLatitude()
            r1 = r15
            r3 = r17
            r5 = r23
            r7 = r25
            r9 = r27
            r11 = r29
            boolean r1 = m5016a(r1, r3, r5, r7, r9, r11)
            if (r1 == 0) goto L75
            return r21
        L75:
            double r1 = r29 - r25
            double r1 = java.lang.Math.abs(r1)
            r3 = 4472406533629990549(0x3e112e0be826d695, double:1.0E-9)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 < 0) goto L9e
            r9 = 4640537203540230144(0x4066800000000000, double:180.0)
            r1 = r23
            r3 = r25
            r5 = r15
            r7 = r17
            r11 = r19
            boolean r1 = m5016a(r1, r3, r5, r7, r9, r11)
            if (r1 == 0) goto La3
            int r1 = (r25 > r29 ? 1 : (r25 == r29 ? 0 : -1))
            if (r1 <= 0) goto L9e
        L9c:
            int r22 = r22 + 1
        L9e:
            r23 = r13
            r24 = r14
            goto Ld5
        La3:
            r9 = 4640537203540230144(0x4066800000000000, double:180.0)
            r1 = r27
            r3 = r29
            r5 = r15
            r7 = r17
            r11 = r19
            boolean r1 = m5016a(r1, r3, r5, r7, r9, r11)
            if (r1 == 0) goto Lbc
            int r1 = (r29 > r25 ? 1 : (r29 == r25 ? 0 : -1))
            if (r1 <= 0) goto L9e
            goto L9c
        Lbc:
            r1 = r23
            r3 = r25
            r5 = r27
            r7 = r29
            r9 = r15
            r11 = r17
            r23 = r13
            r24 = r14
            r13 = r19
            boolean r1 = m5017a(r1, r3, r5, r7, r9, r11, r13)
            if (r1 == 0) goto Ld5
            int r22 = r22 + 1
        Ld5:
            r13 = r23
            r1 = r24
            goto L31
        Ldb:
            r23 = r13
            int r22 = r22 % 2
            if (r22 == 0) goto Le4
            r13 = r21
            goto Le6
        Le4:
            r13 = r23
        Le6:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1834ep.m5018a(com.amap.api.location.DPoint, java.util.List):boolean");
    }

    /* renamed from: b */
    public static double m5019b(double d, double d2, double d3, double d4, double d5, double d6) {
        return ((d6 - d2) * (d3 - d)) - ((d4 - d2) * (d5 - d));
    }

    /* renamed from: b */
    public static String m5020b() {
        return f5757d;
    }

    /* renamed from: b */
    public static String m5021b(Context context) {
        return AgooNotificationHandler.m2507c(AppInfo.m1640f(context));
    }

    /* renamed from: b */
    public static byte[] m5022b(String str) {
        if (str == null || str.length() < 2) {
            return new byte[0];
        }
        String lowerCase = str.toLowerCase(Locale.US);
        int length = lowerCase.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (AMapLocationUtilities.m5147f(lowerCase.substring(i2, i2 + 2)) & 255);
        }
        return bArr;
    }

    /* renamed from: c */
    public static SDKInfo m5023c() {
        try {
            if (f5770q == null) {
                SDKInfo.a aVar = new SDKInfo.a("loc", "5.5.1", "AMAP_Location_SDK_Android 5.5.1");
                aVar.m2160a(m5026e());
                aVar.f3014b = "5.5.1";
                f5770q = aVar.m2161b();
            }
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "getSDKInfo");
        }
        return f5770q;
    }

    /* renamed from: c */
    public static void m5024c(Context context) {
        try {
            if (AMapCoreUtilities.m2249r(context)) {
                f5756c = "http://abroad.apilocate.amap.com/mobile/binary";
                f5757d = "http://abroad.apilocate.amap.com/mobile/binary";
            } else {
                f5756c = "http://apilocate.amap.com/mobile/binary";
                f5757d = "http://dualstack-a.apilocate.amap.com/mobile/binary";
            }
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "changeUrl");
        }
    }

    /* renamed from: d */
    public static String m5025d() {
        return f5759f;
    }

    /* renamed from: e */
    public static String[] m5026e() {
        return (String[]) f5769p.clone();
    }

    /* renamed from: f */
    public static void m5027f() {
        try {
            if (f5766m == null) {
                f5766m = new HashMap<>(16);
            }
            f5766m.clear();
            f5766m.put("fe643c382e5c3b3962141f1a2e815a78", "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827");
            f5766m.put("9a571aa113ad987d626c0457828962e6", "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7");
            f5766m.put("668319f11506def6208d6afe320dfd52", "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807");
        } catch (Throwable th) {
            m5014a(th, "CoreUtil", "initUrlHash");
        }
    }
}
