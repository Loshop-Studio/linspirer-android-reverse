package com.alibaba.sdk.android.tbrest.rest;

import android.content.Context;
import android.os.Build;
import android.support.v4.graphics.PaintCompat;
import com.alibaba.sdk.android.tbrest.SendService;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.alibaba.sdk.android.tbrest.utils.StringUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.AMapLog;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RestReqDataBuilder.java */
/* renamed from: com.alibaba.sdk.android.tbrest.rest.e */
/* loaded from: classes.dex */
public class RestReqDataBuilder {

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
                RestFieldsScheme enumC0600a = RestFieldsScheme.IMEI;
                map2.put("a", strM989a7);
                RestFieldsScheme enumC0600a2 = RestFieldsScheme.IMSI;
                map2.put("b", strM989a8);
                RestFieldsScheme enumC0600a3 = RestFieldsScheme.BRAND;
                map2.put("c", strM989a9);
                RestFieldsScheme enumC0600a4 = RestFieldsScheme.DEVICE_MODEL;
                map2.put("d", strM989a10);
                RestFieldsScheme enumC0600a5 = RestFieldsScheme.RESOLUTION;
                map2.put("e", strM989a11);
                RestFieldsScheme enumC0600a6 = RestFieldsScheme.CARRIER;
                map2.put("f", strM989a12);
                RestFieldsScheme enumC0600a7 = RestFieldsScheme.ACCESS;
                map2.put(AMapLog.f5946f, strM989a13);
                RestFieldsScheme enumC0600a8 = RestFieldsScheme.ACCESS_SUBTYPE;
                map2.put(AMapLog.f5947g, strM989a14);
                RestFieldsScheme enumC0600a9 = RestFieldsScheme.CHANNEL;
                map2.put("i", strM989a17);
                RestFieldsScheme enumC0600a10 = RestFieldsScheme.APPKEY;
                map2.put(AMapLog.f5950j, strM989a15);
                RestFieldsScheme enumC0600a11 = RestFieldsScheme.APPVERSION;
                map2.put("k", strM989a16);
                RestFieldsScheme enumC0600a12 = RestFieldsScheme.LL_USERNICK;
                map2.put("l", strM989a18);
                RestFieldsScheme enumC0600a13 = RestFieldsScheme.USERNICK;
                map2.put(PaintCompat.EM_STRING, strM989a19);
                RestFieldsScheme enumC0600a14 = RestFieldsScheme.LL_USERID;
                map2.put("n", "-");
                RestFieldsScheme enumC0600a15 = RestFieldsScheme.USERID;
                map2.put("o", "-");
                RestFieldsScheme enumC0600a16 = RestFieldsScheme.LANGUAGE;
                map2.put("p", strM989a20);
                RestFieldsScheme enumC0600a17 = RestFieldsScheme.OS;
                map2.put("q", str8);
                RestFieldsScheme enumC0600a18 = RestFieldsScheme.OSVERSION;
                map2.put("r", strM989a21);
                RestFieldsScheme enumC0600a19 = RestFieldsScheme.SDKVERSION;
                map2.put("s", "1.0");
                RestFieldsScheme enumC0600a20 = RestFieldsScheme.START_SESSION_TIMESTAMP;
                map2.put("t", "" + f1413c);
                RestFieldsScheme enumC0600a21 = RestFieldsScheme.UTDID;
                String str9 = str3;
                map2.put("u", str9);
                RestFieldsScheme enumC0600a22 = RestFieldsScheme.SDKTYPE;
                map2.put("v", "mini");
                RestFieldsScheme enumC0600a23 = RestFieldsScheme.RESERVE2;
                map2.put("w", str9);
                RestFieldsScheme enumC0600a24 = RestFieldsScheme.RESERVE3;
                map2.put("x", "-");
                RestFieldsScheme enumC0600a25 = RestFieldsScheme.RESERVE4;
                map2.put("y", "-");
                RestFieldsScheme enumC0600a26 = RestFieldsScheme.RESERVE5;
                map2.put("z", "-");
                RestFieldsScheme enumC0600a27 = RestFieldsScheme.RESERVES;
                map2.put("A", strM989a23);
                RestFieldsScheme enumC0600a28 = RestFieldsScheme.RECORD_TIMESTAMP;
                map2.put("B", str6);
                RestFieldsScheme enumC0600a29 = RestFieldsScheme.PAGE;
                map2.put("C", strM989a);
                RestFieldsScheme enumC0600a30 = RestFieldsScheme.EVENTID;
                map2.put("D", strM989a2);
                RestFieldsScheme enumC0600a31 = RestFieldsScheme.ARG1;
                map2.put("E", strM989a3);
                RestFieldsScheme enumC0600a32 = RestFieldsScheme.ARG2;
                map2.put("F", strM989a4);
                RestFieldsScheme enumC0600a33 = RestFieldsScheme.ARG3;
                map2.put("G", strM989a5);
                RestFieldsScheme enumC0600a34 = RestFieldsScheme.ARGS;
                map2.put("H", strM989a6);
                return m990a(map2);
            }
            str3 = strM989a22;
            HashMap map22 = new HashMap();
            RestFieldsScheme enumC0600a35 = RestFieldsScheme.IMEI;
            map22.put("a", strM989a7);
            RestFieldsScheme enumC0600a210 = RestFieldsScheme.IMSI;
            map22.put("b", strM989a8);
            RestFieldsScheme enumC0600a36 = RestFieldsScheme.BRAND;
            map22.put("c", strM989a9);
            RestFieldsScheme enumC0600a42 = RestFieldsScheme.DEVICE_MODEL;
            map22.put("d", strM989a10);
            RestFieldsScheme enumC0600a52 = RestFieldsScheme.RESOLUTION;
            map22.put("e", strM989a11);
            RestFieldsScheme enumC0600a62 = RestFieldsScheme.CARRIER;
            map22.put("f", strM989a12);
            RestFieldsScheme enumC0600a72 = RestFieldsScheme.ACCESS;
            map22.put(AMapLog.f5946f, strM989a13);
            RestFieldsScheme enumC0600a82 = RestFieldsScheme.ACCESS_SUBTYPE;
            map22.put(AMapLog.f5947g, strM989a14);
            RestFieldsScheme enumC0600a92 = RestFieldsScheme.CHANNEL;
            map22.put("i", strM989a17);
            RestFieldsScheme enumC0600a102 = RestFieldsScheme.APPKEY;
            map22.put(AMapLog.f5950j, strM989a15);
            RestFieldsScheme enumC0600a112 = RestFieldsScheme.APPVERSION;
            map22.put("k", strM989a16);
            RestFieldsScheme enumC0600a122 = RestFieldsScheme.LL_USERNICK;
            map22.put("l", strM989a18);
            RestFieldsScheme enumC0600a132 = RestFieldsScheme.USERNICK;
            map22.put(PaintCompat.EM_STRING, strM989a19);
            RestFieldsScheme enumC0600a142 = RestFieldsScheme.LL_USERID;
            map22.put("n", "-");
            RestFieldsScheme enumC0600a152 = RestFieldsScheme.USERID;
            map22.put("o", "-");
            RestFieldsScheme enumC0600a162 = RestFieldsScheme.LANGUAGE;
            map22.put("p", strM989a20);
            RestFieldsScheme enumC0600a172 = RestFieldsScheme.OS;
            map22.put("q", str8);
            RestFieldsScheme enumC0600a182 = RestFieldsScheme.OSVERSION;
            map22.put("r", strM989a21);
            RestFieldsScheme enumC0600a192 = RestFieldsScheme.SDKVERSION;
            map22.put("s", "1.0");
            RestFieldsScheme enumC0600a202 = RestFieldsScheme.START_SESSION_TIMESTAMP;
            map22.put("t", "" + f1413c);
            RestFieldsScheme enumC0600a212 = RestFieldsScheme.UTDID;
            String str92 = str3;
            map22.put("u", str92);
            RestFieldsScheme enumC0600a222 = RestFieldsScheme.SDKTYPE;
            map22.put("v", "mini");
            RestFieldsScheme enumC0600a232 = RestFieldsScheme.RESERVE2;
            map22.put("w", str92);
            RestFieldsScheme enumC0600a242 = RestFieldsScheme.RESERVE3;
            map22.put("x", "-");
            RestFieldsScheme enumC0600a252 = RestFieldsScheme.RESERVE4;
            map22.put("y", "-");
            RestFieldsScheme enumC0600a262 = RestFieldsScheme.RESERVE5;
            map22.put("z", "-");
            RestFieldsScheme enumC0600a272 = RestFieldsScheme.RESERVES;
            map22.put("A", strM989a23);
            RestFieldsScheme enumC0600a282 = RestFieldsScheme.RECORD_TIMESTAMP;
            map22.put("B", str6);
            RestFieldsScheme enumC0600a292 = RestFieldsScheme.PAGE;
            map22.put("C", strM989a);
            RestFieldsScheme enumC0600a302 = RestFieldsScheme.EVENTID;
            map22.put("D", strM989a2);
            RestFieldsScheme enumC0600a312 = RestFieldsScheme.ARG1;
            map22.put("E", strM989a3);
            RestFieldsScheme enumC0600a322 = RestFieldsScheme.ARG2;
            map22.put("F", strM989a4);
            RestFieldsScheme enumC0600a332 = RestFieldsScheme.ARG3;
            map22.put("G", strM989a5);
            RestFieldsScheme enumC0600a342 = RestFieldsScheme.ARGS;
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
        RestFieldsScheme enumC0600a;
        StringBuffer stringBuffer = new StringBuffer();
        RestFieldsScheme[] enumC0600aArrValues = RestFieldsScheme.values();
        int length = enumC0600aArrValues.length;
        int i = 0;
        while (true) {
            String strConvertObjectToString = null;
            if (i >= length || (enumC0600a = enumC0600aArrValues[i]) == RestFieldsScheme.ARGS) {
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
        RestFieldsScheme enumC0600a2 = RestFieldsScheme.ARGS;
        if (map.containsKey("H")) {
            RestFieldsScheme enumC0600a3 = RestFieldsScheme.ARGS;
            stringBuffer.append(m989a(StringUtils.convertObjectToString(map.get("H"))));
            RestFieldsScheme enumC0600a4 = RestFieldsScheme.ARGS;
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
        return (StringUtils.isEmpty(string) || !string.endsWith("||")) ? string : CompilerOutline.m1760e(string, "-");
    }

    /* renamed from: a */
    public static RestReqDataBuildResult m987a(SendService sendService, String str, String str2, Context context, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
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
            RestReqDataBuildResult c0603d = new RestReqDataBuildResult();
            c0603d.m986b(RestUrlWrapper.getSignedTransferUrl(str2, null, map2, context, strM989a17, strM989a19, strM989a18, str9, "", strM989a25));
            c0603d.m985a(map2);
            return c0603d;
        } catch (Exception e) {
            LogUtil.m998e("UTRestAPI buildTracePostReqDataObj catch!", e);
            return null;
        }
    }
}
