package com.alibaba.sdk.android.push.common.util.p019a;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.util.AmsHttpTransport;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.huawei.hem.CompilerOutline;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.push.common.util.a.c */
/* loaded from: classes.dex */
public abstract class PushHttpRequestTask extends AsyncTask<Map<String, String>, Void, PushRequestMethodSwitch> {

    /* renamed from: a */
    public static AmsLogger f1158a = AmsLogger.getLogger("MPS:SendRequestTask");

    /* renamed from: c */
    public Context f1160c;

    /* renamed from: d */
    public String f1161d;

    /* renamed from: b */
    public String f1159b = "POST";

    /* renamed from: e */
    public int f1162e = 0;

    public PushHttpRequestTask(Context context, String str) {
        this.f1160c = context;
        this.f1161d = str;
    }

    /* renamed from: a */
    private void m767a(String str, Map<String, String> map) {
        try {
            f1158a.m498d("request url :" + str);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                f1158a.m498d("key: " + entry.getKey() + " value: " + entry.getValue());
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public int m768a() {
        return this.f1162e;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public PushRequestMethodSwitch doInBackground(Map<String, String>... mapArr) {
        PushRequestMethodSwitch c0564b;
        Map<String, String> map = mapArr[0];
        if (map.containsKey(VipRequestKind.f1183u)) {
            this.f1162e = Integer.parseInt(map.get(VipRequestKind.f1183u));
            c0564b = new PushRequestMethodSwitch(Integer.parseInt(map.get(VipRequestKind.f1183u)));
        } else {
            c0564b = new PushRequestMethodSwitch();
        }
        try {
            String strM770a = m770a(this.f1160c, this.f1161d, map);
            c0564b.f1155b = 200;
            c0564b.f1154a = strM770a;
        } catch (PushHttpErrorException e) {
            c0564b.f1156c = e.m766a();
            c0564b.f1155b = -1;
            c0564b.f1154a = e.getMessage();
        }
        return c0564b;
    }

    /* renamed from: a */
    public String m770a(Context context, String str, Map<String, String> map) {
        int i;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                try {
                    Map<String, String> mapMo771a = mo771a(context, map);
                    m767a(str, mapMo771a);
                    HttpURLConnection httpURLConnectionM515a = AmsHttpTransport.m515a(str, mapMo771a, this.f1159b);
                    if (httpURLConnectionM515a == null) {
                        f1158a.m501e("failed to access VIP service.");
                        throw new PushHttpErrorException(PushErrorCatalog.f1141p.copy().msg("创建请求连接失败").build());
                    }
                    if (httpURLConnectionM515a.getResponseCode() != 200) {
                        throw new PushHttpErrorException(PushErrorCatalog.f1141p.copy().msg("请求失败：" + httpURLConnectionM515a.getResponseCode()).build());
                    }
                    InputStream inputStream = httpURLConnectionM515a.getInputStream();
                    byte[] bArr = new byte[1024];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
                    while (!Thread.interrupted() && (i = inputStream.read(bArr)) != -1) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                    String str2 = new String(byteArrayOutputStream.toByteArray(), "utf-8");
                    httpURLConnectionM515a.disconnect();
                    return str2;
                } catch (Throwable th) {
                    f1158a.m502e("VIP API failed! error: ", th);
                    throw new PushHttpErrorException(PushErrorCatalog.f1141p.copy().msg(th.getMessage()).detail(Log.getStackTraceString(th)).build());
                }
            } catch (PushHttpErrorException e) {
                throw e;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th2;
        }
    }

    /* renamed from: a */
    public abstract Map<String, String> mo771a(Context context, Map<String, String> map);

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(PushRequestMethodSwitch c0564b) {
        AmsLogger amsLogger = f1158a;
        StringBuilder sbM1765j = CompilerOutline.m1765j("HTTP Return code: ");
        sbM1765j.append(c0564b.f1155b);
        amsLogger.m504i(sbM1765j.toString());
    }
}
