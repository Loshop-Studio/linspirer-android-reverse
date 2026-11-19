package com.alibaba.sdk.android.push.p025g;

import android.util.Log;
import com.alibaba.sdk.android.push.common.p018a.C0560d;
import com.alibaba.sdk.android.push.common.util.p019a.EnumC0566d;
import com.alibaba.sdk.android.push.p016b.C0555f;
import com.taobao.accs.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.push.g.i */
/* loaded from: classes.dex */
public class C0584i {
    /* renamed from: a */
    public static String m868a(int i, int i2, String str) throws JSONException, C0555f {
        try {
            if (i2 == 200) {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("code");
                if (string.equals("OK")) {
                    return jSONObject.has(Constants.KEY_DATA) ? m869a(i, jSONObject.getString(Constants.KEY_DATA)) : "";
                }
                throw new C0555f(C0560d.m763b(string, jSONObject.getString("message")));
            }
            throw new C0555f(C0560d.f1141p.copy().msg("请求失败" + i2).detail("requestType:" + i).build());
        } catch (JSONException e) {
            throw new C0555f(C0560d.f1134i.copy().msg(e.getMessage()).detail("content: " + str).build());
        }
    }

    /* renamed from: a */
    public static String m869a(int i, String str) throws C0555f {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (i == EnumC0566d.LIST_TAGS.m774a()) {
                return jSONObject.getString("tags");
            }
            if (i == EnumC0566d.LIST_ALIASES.m774a()) {
                return jSONObject.getString("alias");
            }
            if (i == EnumC0566d.CONFIG.m774a()) {
                return jSONObject.getString("deviceId");
            }
            if (i == EnumC0566d.CHECK_PUSH_STATUS.m774a()) {
                return jSONObject.getBoolean("status") ? "on" : "off";
            }
            throw new C0555f(C0560d.f1134i.copy().detail("unknown request type " + i).detail("data : " + str).build());
        } catch (JSONException e) {
            throw new C0555f(C0560d.f1134i.copy().detail(e.getMessage()).detail("data : " + str).build());
        }
    }

    /* renamed from: a */
    public static String m870a(int i, HttpURLConnection httpURLConnection) throws JSONException, C0555f {
        try {
            if (httpURLConnection.getResponseCode() == 200) {
                JSONObject jSONObject = new JSONObject(m871a(httpURLConnection));
                String string = jSONObject.getString("code");
                if (string.equals("OK")) {
                    return jSONObject.has(Constants.KEY_DATA) ? m869a(i, jSONObject.getString(Constants.KEY_DATA)) : "";
                }
                throw new C0555f(C0560d.m763b(string, jSONObject.getString("message")));
            }
            throw new C0555f(C0560d.f1141p.copy().msg("请求失败" + httpURLConnection.getResponseCode()).detail("requestType:" + i).build());
        } catch (IOException e) {
            throw new C0555f(C0560d.f1133h.copy().msg(e.getMessage()).detail(Log.getStackTraceString(e)).build());
        } catch (JSONException e2) {
            throw new C0555f(C0560d.f1134i.copy().msg(e2.getMessage()).detail("content: " + ((String) null)).build());
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
