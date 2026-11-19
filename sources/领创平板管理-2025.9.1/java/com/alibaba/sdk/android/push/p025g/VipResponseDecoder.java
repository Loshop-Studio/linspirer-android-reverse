package com.alibaba.sdk.android.push.p025g;

import android.util.Log;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.alibaba.sdk.android.push.common.util.p019a.VipRequestKind;
import com.alibaba.sdk.android.push.p016b.PushServiceErrorException;
import com.taobao.accs.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.push.g.i */
/* loaded from: classes.dex */
public class VipResponseDecoder {
    /* renamed from: a */
    public static String m868a(int i, int i2, String str) throws JSONException, PushServiceErrorException {
        try {
            if (i2 == 200) {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("code");
                if (string.equals("OK")) {
                    return jSONObject.has(Constants.KEY_DATA) ? m869a(i, jSONObject.getString(Constants.KEY_DATA)) : "";
                }
                throw new PushServiceErrorException(PushErrorCatalog.m763b(string, jSONObject.getString("message")));
            }
            throw new PushServiceErrorException(PushErrorCatalog.f1141p.copy().msg("请求失败" + i2).detail("requestType:" + i).build());
        } catch (JSONException e) {
            throw new PushServiceErrorException(PushErrorCatalog.f1134i.copy().msg(e.getMessage()).detail("content: " + str).build());
        }
    }

    /* renamed from: a */
    public static String m869a(int i, String str) throws PushServiceErrorException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (i == VipRequestKind.LIST_TAGS.m774a()) {
                return jSONObject.getString("tags");
            }
            if (i == VipRequestKind.LIST_ALIASES.m774a()) {
                return jSONObject.getString("alias");
            }
            if (i == VipRequestKind.CONFIG.m774a()) {
                return jSONObject.getString("deviceId");
            }
            if (i == VipRequestKind.CHECK_PUSH_STATUS.m774a()) {
                return jSONObject.getBoolean("status") ? "on" : "off";
            }
            throw new PushServiceErrorException(PushErrorCatalog.f1134i.copy().detail("unknown request type " + i).detail("data : " + str).build());
        } catch (JSONException e) {
            throw new PushServiceErrorException(PushErrorCatalog.f1134i.copy().detail(e.getMessage()).detail("data : " + str).build());
        }
    }

    /* renamed from: a */
    public static String m870a(int i, HttpURLConnection httpURLConnection) throws JSONException, PushServiceErrorException {
        try {
            if (httpURLConnection.getResponseCode() == 200) {
                JSONObject jSONObject = new JSONObject(m871a(httpURLConnection));
                String string = jSONObject.getString("code");
                if (string.equals("OK")) {
                    return jSONObject.has(Constants.KEY_DATA) ? m869a(i, jSONObject.getString(Constants.KEY_DATA)) : "";
                }
                throw new PushServiceErrorException(PushErrorCatalog.m763b(string, jSONObject.getString("message")));
            }
            throw new PushServiceErrorException(PushErrorCatalog.f1141p.copy().msg("请求失败" + httpURLConnection.getResponseCode()).detail("requestType:" + i).build());
        } catch (IOException e) {
            throw new PushServiceErrorException(PushErrorCatalog.f1133h.copy().msg(e.getMessage()).detail(Log.getStackTraceString(e)).build());
        } catch (JSONException e2) {
            throw new PushServiceErrorException(PushErrorCatalog.f1134i.copy().msg(e2.getMessage()).detail("content: " + ((String) null)).build());
        }
    }

    /* renamed from: a */
    public static String m871a(HttpURLConnection httpURLConnection) {
        int i;
        InputStream inputStream = httpURLConnection.getInputStream();
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        while (!Thread.interrupted() && (i = inputStream.read(bArr)) != -1) {
            byteArrayOutputStream.write(bArr, 0, i);
        }
        return new String(byteArrayOutputStream.toByteArray(), "utf-8");
    }
}
