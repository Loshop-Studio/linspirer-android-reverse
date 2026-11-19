package com.alibaba.sdk.android.ams.common.util;

import android.content.Context;
import android.util.Base64;
import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.ams.common.util.a */
/* loaded from: classes.dex */
public class C0505a {

    /* renamed from: a */
    public static final AmsLogger f848a = AmsLogger.getLogger("MPS:httpClient");

    /* renamed from: com.alibaba.sdk.android.ams.common.util.a$a */
    public static class a extends IOException {
        public a(IOException iOException, int i) {
            super(iOException.getMessage() + " code " + i, iOException);
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m515a(String str, Map<String, String> map, String str2) {
        return "POST".equals(str2) ? m516a(str, map, str2, 0, null) : m517b(str, map, str2, 0, null);
    }

    /* renamed from: a */
    public static HttpURLConnection m516a(String str, Map<String, String> map, String str2, int i, Context context) throws IOException {
        if (i >= 3) {
            throw new a(new IOException("redirectCount > 3"), 300);
        }
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getValue() == null) {
                    AmsLogger amsLogger = f848a;
                    StringBuilder sbM1765j = C0948f6.m1765j("skip empty entry ");
                    sbM1765j.append(entry.getKey());
                    amsLogger.m507w(sbM1765j.toString());
                } else {
                    sb.append(entry.getKey());
                    sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb.append(Base64.encodeToString(entry.getValue().getBytes(), 8));
                    sb.append("&");
                }
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(6000);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(sb.toString().getBytes("UTF-8"));
        outputStream.flush();
        outputStream.close();
        try {
            int responseCode = httpURLConnection.getResponseCode();
            f848a.m498d("responseCode: " + responseCode);
            return (responseCode != 200 && responseCode / 3 == 100) ? m516a(httpURLConnection.getHeaderField(HttpConstant.LOCATION), map, str2, i, context) : httpURLConnection;
        } catch (IOException e) {
            f848a.m499d("openConnection: ", e);
            throw new a(e, httpURLConnection.getResponseCode());
        }
    }

    @Deprecated
    /* renamed from: b */
    public static HttpURLConnection m517b(String str, Map<String, String> map, String str2, int i, Context context) throws IOException {
        if (i >= 3) {
            throw new a(new IOException("redirectCount > 3"), 300);
        }
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getValue() == null) {
                    AmsLogger amsLogger = f848a;
                    StringBuilder sbM1765j = C0948f6.m1765j("skip empty entry ");
                    sbM1765j.append(entry.getKey());
                    amsLogger.m507w(sbM1765j.toString());
                } else {
                    sb.append(entry.getKey());
                    sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb.append(URLEncoder.encode(entry.getValue(), "utf-8"));
                    sb.append("&");
                }
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str + "?" + ((Object) sb)).openConnection();
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod(str2 == null ? "GET" : str2);
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setConnectTimeout(6000);
        httpURLConnection.connect();
        try {
            int responseCode = httpURLConnection.getResponseCode();
            f848a.m498d("responseCode: " + responseCode);
            return (responseCode != 200 && responseCode / 3 == 100) ? m517b(httpURLConnection.getHeaderField(HttpConstant.LOCATION), map, str2, i, context) : httpURLConnection;
        } catch (IOException e) {
            f848a.m499d("openConnection: ", e);
            throw new a(e, httpURLConnection.getResponseCode());
        }
    }
}
