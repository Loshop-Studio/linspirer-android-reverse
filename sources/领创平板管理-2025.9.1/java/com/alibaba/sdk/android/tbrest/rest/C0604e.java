package com.alibaba.sdk.android.tbrest.rest;

import android.content.Context;
import android.os.Build;
import android.support.v4.graphics.PaintCompat;
import com.alibaba.sdk.android.tbrest.SendService;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.alibaba.sdk.android.tbrest.utils.StringUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.C1860u;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RestReqDataBuilder.java */
/* renamed from: com.alibaba.sdk.android.tbrest.rest.e */
/* loaded from: classes.dex */
public class C0604e {

    /* renamed from: c */
    public static long f1413c = System.currentTimeMillis();

    /* renamed from: a */
    public static String m989a(String str) {
        if (StringUtils.isBlank(str)) {
            return "-";
        }
        if ("".equals(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] != '\n' && charArray[i] != '\r' && charArray[i] != '\t' && charArray[i] != '|') {
                sb.append(charArray[i]);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m988a(SendService sendService, String str, long j, String str2, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        String str3;
        String str4 = null;
        if (i == 0) {
            return null;
        }
        try {
            String utdid = DeviceUtils.getUtdid(sendService.context);
            if (utdid == null) {
                LogUtil.m997e("get utdid failure, so build report failure, now return");
                return null;
            }
            String[] networkType = DeviceUtils.getNetworkType(sendService.context);
            String str5 = networkType[0];
            if (networkType.length > 1 && str5 != null && !DeviceUtils.NETWORK_CLASS_WIFI.equals(str5)) {
                str4 = networkType[1];
            }
            String str6 = "" + (j > 0 ? j : System.currentTimeMillis());
            String strM989a = m989a(str2);
            String strM989a2 = m989a(String.valueOf(i));
            String strM989a3 = m989a(StringUtils.convertObjectToString(obj));
            String strM989a4 = m989a(StringUtils.convertObjectToString(obj2));
            String strM989a5 = m989a(StringUtils.convertObjectToString(obj3));
            String strM989a6 = m989a(StringUtils.convertMapToString(map));
            String strM989a7 = m989a(DeviceUtils.getImei(sendService.context));
            String strM989a8 = m989a(DeviceUtils.getImsi(sendService.context));
            String strM989a9 = m989a(Build.BRAND);
            m989a(DeviceUtils.getCpuName());
            m989a(strM989a7);
            String strM989a10 = m989a(Build.MODEL);
            String strM989a11 = m989a(DeviceUtils.getResolution(sendService.context));
            String strM989a12 = m989a(DeviceUtils.getCarrier(sendService.context));
            String strM989a13 = m989a(str5);
            String strM989a14 = m989a(str4);
            String strM989a15 = m989a(str);
            String strM989a16 = m989a(sendService.appVersion);
            String strM989a17 = m989a(sendService.channel);
            String strM989a18 = m989a(sendService.userNick);
            String strM989a19 = m989a(sendService.userNick);
            m989a(DeviceUtils.getCountry());
            String strM989a20 = m989a(DeviceUtils.getLanguage());
            String str7 = sendService.appId;
            String strM989a21 = m989a(Build.VERSION.RELEASE);
            String strM989a22 = m989a(utdid);
            String strM989a23 = m989a(sendService.country);
            StringUtils.isBlank("");
            if (str7 != null) {
                str3 = strM989a22;
                String str8 = str7.contains("aliyunos") ? "y" : "a";
                HashMap map2 = new HashMap();
                EnumC0600a enumC0600a = EnumC0600a.IMEI;
                map2.put("a", strM989a7);
                EnumC0600a enumC0600a2 = EnumC0600a.IMSI;
                map2.put("b", strM989a8);
                EnumC0600a enumC0600a3 = EnumC0600a.BRAND;
                map2.put("c", strM989a9);
                EnumC0600a enumC0600a4 = EnumC0600a.DEVICE_MODEL;
                map2.put("d", strM989a10);
                EnumC0600a enumC0600a5 = EnumC0600a.RESOLUTION;
                map2.put("e", strM989a11);
                EnumC0600a enumC0600a6 = EnumC0600a.CARRIER;
                map2.put("f", strM989a12);
                EnumC0600a enumC0600a7 = EnumC0600a.ACCESS;
                map2.put(C1860u.f5946f, strM989a13);
                EnumC0600a enumC0600a8 = EnumC0600a.ACCESS_SUBTYPE;
                map2.put(C1860u.f5947g, strM989a14);
                EnumC0600a enumC0600a9 = EnumC0600a.CHANNEL;
                map2.put("i", strM989a17);
                EnumC0600a enumC0600a10 = EnumC0600a.APPKEY;
                map2.put(C1860u.f5950j, strM989a15);
                EnumC0600a enumC0600a11 = EnumC0600a.APPVERSION;
                map2.put("k", strM989a16);
                EnumC0600a enumC0600a12 = EnumC0600a.LL_USERNICK;
                map2.put("l", strM989a18);
                EnumC0600a enumC0600a13 = EnumC0600a.USERNICK;
                map2.put(PaintCompat.EM_STRING, strM989a19);
                EnumC0600a enumC0600a14 = EnumC0600a.LL_USERID;
                map2.put("n", "-");
                EnumC0600a enumC0600a15 = EnumC0600a.USERID;
                map2.put("o", "-");
                EnumC0600a enumC0600a16 = EnumC0600a.LANGUAGE;
                map2.put("p", strM989a20);
                EnumC0600a enumC0600a17 = EnumC0600a.OS;
                map2.put("q", str8);
                EnumC0600a enumC0600a18 = EnumC0600a.OSVERSION;
                map2.put("r", strM989a21);
                EnumC0600a enumC0600a19 = EnumC0600a.SDKVERSION;
                map2.put("s", "1.0");
                EnumC0600a enumC0600a20 = EnumC0600a.START_SESSION_TIMESTAMP;
                map2.put("t", "" + f1413c);
                EnumC0600a enumC0600a21 = EnumC0600a.UTDID;
                String str9 = str3;
                map2.put("u", str9);
                EnumC0600a enumC0600a22 = EnumC0600a.SDKTYPE;
                map2.put("v", "mini");
                EnumC0600a enumC0600a23 = EnumC0600a.RESERVE2;
                map2.put("w", str9);
                EnumC0600a enumC0600a24 = EnumC0600a.RESERVE3;
                map2.put("x", "-");
                EnumC0600a enumC0600a25 = EnumC0600a.RESERVE4;
                map2.put("y", "-");
                EnumC0600a enumC0600a26 = EnumC0600a.RESERVE5;
                map2.put("z", "-");
                EnumC0600a enumC0600a27 = EnumC0600a.RESERVES;
                map2.put("A", strM989a23);
                EnumC0600a enumC0600a28 = EnumC0600a.RECORD_TIMESTAMP;
                map2.put("B", str6);
                EnumC0600a enumC0600a29 = EnumC0600a.PAGE;
                map2.put("C", strM989a);
                EnumC0600a enumC0600a30 = EnumC0600a.EVENTID;
                map2.put("D", strM989a2);
                EnumC0600a enumC0600a31 = EnumC0600a.ARG1;
                map2.put("E", strM989a3);
                EnumC0600a enumC0600a32 = EnumC0600a.ARG2;
                map2.put("F", strM989a4);
                EnumC0600a enumC0600a33 = EnumC0600a.ARG3;
                map2.put("G", strM989a5);
                EnumC0600a enumC0600a34 = EnumC0600a.ARGS;
                map2.put("H", strM989a6);
                return m990a(map2);
            }
            str3 = strM989a22;
            HashMap map22 = new HashMap();
            EnumC0600a enumC0600a35 = EnumC0600a.IMEI;
            map22.put("a", strM989a7);
            EnumC0600a enumC0600a210 = EnumC0600a.IMSI;
            map22.put("b", strM989a8);
            EnumC0600a enumC0600a36 = EnumC0600a.BRAND;
            map22.put("c", strM989a9);
            EnumC0600a enumC0600a42 = EnumC0600a.DEVICE_MODEL;
            map22.put("d", strM989a10);
            EnumC0600a enumC0600a52 = EnumC0600a.RESOLUTION;
            map22.put("e", strM989a11);
            EnumC0600a enumC0600a62 = EnumC0600a.CARRIER;
            map22.put("f", strM989a12);
            EnumC0600a enumC0600a72 = EnumC0600a.ACCESS;
            map22.put(C1860u.f5946f, strM989a13);
            EnumC0600a enumC0600a82 = EnumC0600a.ACCESS_SUBTYPE;
            map22.put(C1860u.f5947g, strM989a14);
            EnumC0600a enumC0600a92 = EnumC0600a.CHANNEL;
            map22.put("i", strM989a17);
            EnumC0600a enumC0600a102 = EnumC0600a.APPKEY;
            map22.put(C1860u.f5950j, strM989a15);
            EnumC0600a enumC0600a112 = EnumC0600a.APPVERSION;
            map22.put("k", strM989a16);
            EnumC0600a enumC0600a122 = EnumC0600a.LL_USERNICK;
            map22.put("l", strM989a18);
            EnumC0600a enumC0600a132 = EnumC0600a.USERNICK;
            map22.put(PaintCompat.EM_STRING, strM989a19);
            EnumC0600a enumC0600a142 = EnumC0600a.LL_USERID;
            map22.put("n", "-");
            EnumC0600a enumC0600a152 = EnumC0600a.USERID;
            map22.put("o", "-");
            EnumC0600a enumC0600a162 = EnumC0600a.LANGUAGE;
            map22.put("p", strM989a20);
            EnumC0600a enumC0600a172 = EnumC0600a.OS;
            map22.put("q", str8);
            EnumC0600a enumC0600a182 = EnumC0600a.OSVERSION;
            map22.put("r", strM989a21);
            EnumC0600a enumC0600a192 = EnumC0600a.SDKVERSION;
            map22.put("s", "1.0");
            EnumC0600a enumC0600a202 = EnumC0600a.START_SESSION_TIMESTAMP;
            map22.put("t", "" + f1413c);
            EnumC0600a enumC0600a212 = EnumC0600a.UTDID;
            String str92 = str3;
            map22.put("u", str92);
            EnumC0600a enumC0600a222 = EnumC0600a.SDKTYPE;
            map22.put("v", "mini");
            EnumC0600a enumC0600a232 = EnumC0600a.RESERVE2;
            map22.put("w", str92);
            EnumC0600a enumC0600a242 = EnumC0600a.RESERVE3;
            map22.put("x", "-");
            EnumC0600a enumC0600a252 = EnumC0600a.RESERVE4;
            map22.put("y", "-");
            EnumC0600a enumC0600a262 = EnumC0600a.RESERVE5;
            map22.put("z", "-");
            EnumC0600a enumC0600a272 = EnumC0600a.RESERVES;
            map22.put("A", strM989a23);
            EnumC0600a enumC0600a282 = EnumC0600a.RECORD_TIMESTAMP;
            map22.put("B", str6);
            EnumC0600a enumC0600a292 = EnumC0600a.PAGE;
            map22.put("C", strM989a);
            EnumC0600a enumC0600a302 = EnumC0600a.EVENTID;
            map22.put("D", strM989a2);
            EnumC0600a enumC0600a312 = EnumC0600a.ARG1;
            map22.put("E", strM989a3);
            EnumC0600a enumC0600a322 = EnumC0600a.ARG2;
            map22.put("F", strM989a4);
            EnumC0600a enumC0600a332 = EnumC0600a.ARG3;
            map22.put("G", strM989a5);
            EnumC0600a enumC0600a342 = EnumC0600a.ARGS;
            map22.put("H", strM989a6);
            return m990a(map22);
        } catch (Exception e) {
            LogUtil.m998e("UTRestAPI buildTracePostReqDataObj catch!", e);
            return "";
        }
    }

    /* renamed from: a */
    public static String m990a(Map<String, String> map) {
        boolean z;
        EnumC0600a enumC0600a;
        StringBuffer stringBuffer = new StringBuffer();
        EnumC0600a[] enumC0600aArrValues = EnumC0600a.values();
        int length = enumC0600aArrValues.length;
        int i = 0;
        while (true) {
            String strConvertObjectToString = null;
            if (i >= length || (enumC0600a = enumC0600aArrValues[i]) == EnumC0600a.ARGS) {
                break;
            }
            if (map.containsKey(enumC0600a.toString())) {
                strConvertObjectToString = StringUtils.convertObjectToString(map.get(enumC0600a.toString()));
                map.remove(enumC0600a.toString());
            }
            stringBuffer.append(m989a(strConvertObjectToString));
            stringBuffer.append("||");
            i++;
        }
        EnumC0600a enumC0600a2 = EnumC0600a.ARGS;
        if (map.containsKey("H")) {
            EnumC0600a enumC0600a3 = EnumC0600a.ARGS;
            stringBuffer.append(m989a(StringUtils.convertObjectToString(map.get("H"))));
            EnumC0600a enumC0600a4 = EnumC0600a.ARGS;
            map.remove("H");
            z = false;
        } else {
            z = true;
        }
        for (String str : map.keySet()) {
            String strConvertObjectToString2 = map.containsKey(str) ? StringUtils.convertObjectToString(map.get(str)) : null;
            if (z) {
                if ("StackTrace".equals(str)) {
                    stringBuffer.append("StackTrace=====>");
                    stringBuffer.append(strConvertObjectToString2);
                } else {
                    stringBuffer.append(m989a(str));
                    stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    stringBuffer.append(strConvertObjectToString2);
                }
                z = false;
            } else if ("StackTrace".equals(str)) {
                stringBuffer.append(",");
                stringBuffer.append("StackTrace=====>");
                stringBuffer.append(strConvertObjectToString2);
            } else {
                stringBuffer.append(",");
                stringBuffer.append(m989a(str));
                stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                stringBuffer.append(strConvertObjectToString2);
            }
        }
        String string = stringBuffer.toString();
        return (StringUtils.isEmpty(string) || !string.endsWith("||")) ? string : C0948f6.m1760e(string, "-");
    }

    /* renamed from: a */
    public static C0603d m987a(SendService sendService, String str, String str2, Context context, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        if (i == 0) {
            return null;
        }
        try {
            String utdid = DeviceUtils.getUtdid(sendService.context);
            if (utdid == null) {
                LogUtil.m997e("get utdid failure, so build report failure, now return");
                return null;
            }
            String[] networkType = DeviceUtils.getNetworkType(sendService.context);
            String str4 = networkType[0];
            String str5 = (networkType.length <= 1 || str4 == null || DeviceUtils.NETWORK_CLASS_WIFI.equals(str4)) ? null : networkType[1];
            long jCurrentTimeMillis = j > 0 ? j : System.currentTimeMillis();
            String str6 = "" + jCurrentTimeMillis;
            String str7 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(jCurrentTimeMillis));
            String strM989a = m989a(str3);
            String strM989a2 = m989a(String.valueOf(i));
            String strM989a3 = m989a(StringUtils.convertObjectToString(obj));
            String strM989a4 = m989a(StringUtils.convertObjectToString(obj2));
            String strM989a5 = m989a(StringUtils.convertObjectToString(obj3));
            String strM989a6 = m989a(StringUtils.convertMapToString(map));
            String strM989a7 = m989a(DeviceUtils.getImei(sendService.context));
            String strM989a8 = m989a(DeviceUtils.getImsi(sendService.context));
            String strM989a9 = m989a(Build.BRAND);
            String strM989a10 = m989a(DeviceUtils.getCpuName());
            String strM989a11 = m989a(strM989a7);
            String strM989a12 = m989a(Build.MODEL);
            String strM989a13 = m989a(DeviceUtils.getResolution(sendService.context));
            String strM989a14 = m989a(DeviceUtils.getCarrier(sendService.context));
            String strM989a15 = m989a(str4);
            String strM989a16 = m989a(str5);
            String strM989a17 = m989a(str);
            String strM989a18 = m989a(sendService.appVersion);
            String strM989a19 = m989a(sendService.channel);
            String strM989a20 = m989a(sendService.userNick);
            String strM989a21 = m989a(sendService.userNick);
            String strM989a22 = m989a(DeviceUtils.getCountry());
            String strM989a23 = m989a(DeviceUtils.getLanguage());
            String str8 = sendService.appId;
            String str9 = "aliyunos";
            if (str8 == null || !str8.contains("aliyunos")) {
                str9 = "Android";
            }
            String strM989a24 = m989a(Build.VERSION.RELEASE);
            String str10 = "" + f1413c;
            String strM989a25 = m989a(utdid);
            StringUtils.isBlank("");
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("5.0.1");
            stringBuffer.append("||");
            stringBuffer.append(strM989a7);
            stringBuffer.append("||");
            stringBuffer.append(strM989a8);
            stringBuffer.append("||");
            stringBuffer.append(strM989a9);
            stringBuffer.append("||");
            stringBuffer.append(strM989a10);
            stringBuffer.append("||");
            stringBuffer.append(strM989a11);
            stringBuffer.append("||");
            stringBuffer.append(strM989a12);
            stringBuffer.append("||");
            stringBuffer.append(strM989a13);
            stringBuffer.append("||");
            stringBuffer.append(strM989a14);
            stringBuffer.append("||");
            stringBuffer.append(strM989a15);
            stringBuffer.append("||");
            stringBuffer.append(strM989a16);
            stringBuffer.append("||");
            stringBuffer.append(strM989a19);
            stringBuffer.append("||");
            stringBuffer.append(strM989a17);
            stringBuffer.append("||");
            stringBuffer.append(strM989a18);
            stringBuffer.append("||");
            stringBuffer.append(strM989a20);
            stringBuffer.append("||");
            stringBuffer.append(strM989a21);
            stringBuffer.append("||");
            stringBuffer.append("-");
            stringBuffer.append("||");
            stringBuffer.append(strM989a22);
            stringBuffer.append("||");
            stringBuffer.append(strM989a23);
            stringBuffer.append("||");
            stringBuffer.append(str9);
            stringBuffer.append("||");
            stringBuffer.append(strM989a24);
            stringBuffer.append("||");
            stringBuffer.append("mini");
            stringBuffer.append("||");
            stringBuffer.append("1.0");
            stringBuffer.append("||");
            stringBuffer.append(str10);
            stringBuffer.append("||");
            stringBuffer.append(strM989a25);
            stringBuffer.append("||");
            stringBuffer.append("-");
            stringBuffer.append("||");
            stringBuffer.append("-");
            stringBuffer.append("||");
            stringBuffer.append("-");
            stringBuffer.append("||");
            stringBuffer.append("-");
            stringBuffer.append("||");
            stringBuffer.append(str7);
            stringBuffer.append("||");
            stringBuffer.append(str6);
            stringBuffer.append("||");
            stringBuffer.append(strM989a);
            stringBuffer.append("||");
            stringBuffer.append(strM989a2);
            stringBuffer.append("||");
            stringBuffer.append(strM989a3);
            stringBuffer.append("||");
            stringBuffer.append(strM989a4);
            stringBuffer.append("||");
            stringBuffer.append(strM989a5);
            stringBuffer.append("||");
            stringBuffer.append(strM989a6);
            String string = stringBuffer.toString();
            HashMap map2 = new HashMap();
            map2.put("stm_x", string.getBytes());
            C0603d c0603d = new C0603d();
            c0603d.m986b(RestUrlWrapper.getSignedTransferUrl(str2, null, map2, context, strM989a17, strM989a19, strM989a18, str9, "", strM989a25));
            c0603d.m985a(map2);
            return c0603d;
        } catch (Exception e) {
            LogUtil.m998e("UTRestAPI buildTracePostReqDataObj catch!", e);
            return null;
        }
    }
}
