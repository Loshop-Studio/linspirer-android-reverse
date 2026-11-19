package com.loc;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amap.api.location.AMapLocationClientOption;
import com.huawei.hem.C0917e1;
import org.android.agoo.message.MessageService;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Parser.java */
/* renamed from: com.loc.em */
/* loaded from: classes.dex */
public final class C1831em {

    /* renamed from: a */
    public StringBuilder f5665a = new StringBuilder();

    /* renamed from: b */
    public AMapLocationClientOption f5666b = new AMapLocationClientOption();

    /* renamed from: a */
    private void m4955a(C1812du c1812du, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str2)) {
            m4957a(str, str2, sb);
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append(str4);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str5)) {
            sb.append(str5);
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str6)) {
            m4958a(str7, str6, sb, c1812du);
        }
        Bundle bundle = new Bundle();
        bundle.putString("citycode", c1812du.getCityCode());
        bundle.putString("desc", sb.toString());
        bundle.putString("adcode", c1812du.getAdCode());
        c1812du.setExtras(bundle);
        c1812du.m4695g(sb.toString());
        String adCode = c1812du.getAdCode();
        c1812du.setAddress((adCode == null || adCode.trim().length() <= 0 || this.f5666b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) ? sb.toString() : sb.toString().replace(" ", ""));
    }

    /* renamed from: a */
    public static void m4956a(C1812du c1812du, short s) {
        if ("-1".equals(c1812du.m4688d())) {
            if (s == 101) {
                s = 100;
            }
            c1812du.setConScenario(s);
        } else {
            if (s == -1) {
                s = 0;
            } else if (s == 0) {
                s = -1;
            }
            c1812du.setConScenario(s);
        }
    }

    /* renamed from: a */
    private void m4957a(String str, String str2, StringBuilder sb) {
        if (this.f5666b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) {
            if (str2.equals(str)) {
                return;
            }
            sb.append(str2);
            sb.append(" ");
            return;
        }
        if (str.contains("市") && str.equals(str2)) {
            return;
        }
        sb.append(str2);
        sb.append(" ");
    }

    /* renamed from: a */
    private void m4958a(String str, String str2, StringBuilder sb, C1812du c1812du) {
        String strConcat;
        if (TextUtils.isEmpty(str) || this.f5666b.getGeoLanguage() == AMapLocationClientOption.GeoLanguage.EN) {
            sb.append("Near ".concat(String.valueOf(str2)));
            strConcat = "Near ".concat(String.valueOf(str2));
        } else {
            sb.append("靠近");
            sb.append(str2);
            sb.append(" ");
            strConcat = "在" + str2 + "附近";
        }
        c1812du.setDescription(strConcat);
    }

    /* renamed from: b */
    public static String m4959b(String str) {
        return "[]".equals(str) ? "" : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x028d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0299  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.loc.C1812du m4960a(com.loc.C1812du r22, byte[] r23, com.loc.C1806do r24) {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1831em.m4960a(com.loc.du, byte[], com.loc.do):com.loc.du");
    }

    /* renamed from: a */
    public final C1812du m4961a(String str) {
        String str2;
        try {
            C1812du c1812du = new C1812du("");
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("regeocode");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("addressComponent");
            c1812du.setCountry(m4959b(jSONObjectOptJSONObject2.optString("country")));
            String strM4959b = m4959b(jSONObjectOptJSONObject2.optString("province"));
            c1812du.setProvince(strM4959b);
            String strM4959b2 = m4959b(jSONObjectOptJSONObject2.optString("citycode"));
            c1812du.setCityCode(strM4959b2);
            String strOptString = jSONObjectOptJSONObject2.optString("city");
            if (!strM4959b2.endsWith("010") && !strM4959b2.endsWith("021") && !strM4959b2.endsWith("022") && !strM4959b2.endsWith("023")) {
                strOptString = m4959b(strOptString);
                c1812du.setCity(strOptString);
            } else if (strM4959b != null && strM4959b.length() > 0) {
                c1812du.setCity(strM4959b);
                strOptString = strM4959b;
            }
            if (TextUtils.isEmpty(strOptString)) {
                c1812du.setCity(strM4959b);
                strOptString = strM4959b;
            }
            String strM4959b3 = m4959b(jSONObjectOptJSONObject2.optString("district"));
            c1812du.setDistrict(strM4959b3);
            String strM4959b4 = m4959b(jSONObjectOptJSONObject2.optString("adcode"));
            c1812du.setAdCode(strM4959b4);
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("streetNumber");
            String strM4959b5 = m4959b(jSONObjectOptJSONObject3.optString("street"));
            c1812du.setStreet(strM4959b5);
            c1812du.setRoad(strM4959b5);
            String strM4959b6 = m4959b(jSONObjectOptJSONObject3.optString("number"));
            c1812du.setNumber(strM4959b6);
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("pois");
            if (jSONArrayOptJSONArray.length() > 0) {
                String strM4959b7 = m4959b(jSONArrayOptJSONArray.getJSONObject(0).optString("name"));
                c1812du.setPoiName(strM4959b7);
                str2 = strM4959b7;
            } else {
                str2 = null;
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("aois");
            if (jSONArrayOptJSONArray2.length() > 0) {
                c1812du.setAoiName(m4959b(jSONArrayOptJSONArray2.getJSONObject(0).optString("name")));
            }
            m4955a(c1812du, strM4959b, strOptString, strM4959b3, strM4959b5, strM4959b6, str2, strM4959b4);
            return c1812du;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public final C1812du m4962a(String str, Context context, C1729as c1729as, C1806do c1806do) {
        C1812du c1812du = new C1812du("");
        c1812du.setErrorCode(7);
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("#SHA1AndPackage#");
            stringBuffer.append(C0917e1.m1640f(context));
            String str2 = c1729as.f5049b.get("gsid").get(0);
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("#gsid#");
                stringBuffer.append(str2);
            }
            String str3 = c1729as.f5050c;
            if (!TextUtils.isEmpty(str3)) {
                stringBuffer.append("#csid#".concat(String.valueOf(str3)));
            }
        } catch (Throwable unused) {
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status") || !jSONObject.has("info")) {
                c1806do.m4593f("#0702");
                StringBuilder sb = this.f5665a;
                sb.append("json is error:");
                sb.append(str);
                sb.append(stringBuffer);
                sb.append("#0702");
            }
            String string = jSONObject.getString("status");
            String string2 = jSONObject.getString("info");
            String string3 = jSONObject.getString("infocode");
            if (MessageService.MSG_DB_READY_REPORT.equals(string)) {
                c1806do.m4593f("#0701");
                StringBuilder sb2 = this.f5665a;
                sb2.append("auth fail:");
                sb2.append(string2);
                sb2.append(stringBuffer);
                sb2.append("#0701");
                C1839eu.m5078a(c1729as.f5051d, string3, string2);
            }
        } catch (Throwable th) {
            c1806do.m4593f("#0703");
            StringBuilder sb3 = this.f5665a;
            sb3.append("json exception error:");
            sb3.append(th.getMessage());
            sb3.append(stringBuffer);
            sb3.append("#0703");
            C1834ep.m5014a(th, "parser", "paseAuthFailurJson");
        }
        c1812du.setLocationDetail(this.f5665a.toString());
        if (this.f5665a.length() > 0) {
            StringBuilder sb4 = this.f5665a;
            sb4.delete(0, sb4.length());
        }
        return c1812du;
    }

    /* renamed from: a */
    public final void m4963a(AMapLocationClientOption aMapLocationClientOption) {
        if (aMapLocationClientOption == null) {
            this.f5666b = new AMapLocationClientOption();
        } else {
            this.f5666b = aMapLocationClientOption;
        }
    }
}
