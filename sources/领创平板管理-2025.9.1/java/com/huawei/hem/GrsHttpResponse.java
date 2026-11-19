package com.huawei.hem;

import android.text.TextUtils;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.taobao.accs.common.Constants;
import com.taobao.agoo.p074a.p075a.AgooCommandFields;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.r8 */
/* loaded from: classes.dex */
public class GrsHttpResponse {

    /* renamed from: a */
    public Map<String, List<String>> f3603a;

    /* renamed from: b */
    public byte[] f3604b;

    /* renamed from: c */
    public int f3605c;

    /* renamed from: d */
    public long f3606d;

    /* renamed from: e */
    public long f3607e;

    /* renamed from: f */
    public long f3608f;

    /* renamed from: g */
    public String f3609g;

    /* renamed from: h */
    public int f3610h;

    /* renamed from: i */
    public int f3611i;

    /* renamed from: j */
    public String f3612j;

    /* renamed from: k */
    public long f3613k;

    /* renamed from: l */
    public Exception f3614l;

    /* renamed from: m */
    public String f3615m;

    public GrsHttpResponse(int i, Map<String, List<String>> map, byte[] bArr, long j) throws JSONException, NumberFormatException {
        boolean z = false;
        this.f3605c = 0;
        this.f3610h = 2;
        int i2 = ConnectionResult.RESOLUTION_REQUIRED;
        this.f3611i = ConnectionResult.RESOLUTION_REQUIRED;
        this.f3612j = "";
        this.f3613k = 0L;
        this.f3605c = i;
        this.f3603a = map;
        this.f3604b = ByteBuffer.wrap(bArr).array();
        this.f3606d = j;
        if (m2659d() || m2658c()) {
            HashMap map2 = new HashMap(16);
            Map<String, List<String>> map3 = this.f3603a;
            if (map3 == null || map3.size() <= 0) {
                Logger.m3436v("f", "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}");
            } else {
                for (Map.Entry<String, List<String>> entry : this.f3603a.entrySet()) {
                    map2.put(entry.getKey(), entry.getValue().get(0));
                }
            }
            try {
                if (m2659d()) {
                    m2656a(map2);
                }
                if (m2658c()) {
                    m2657b(map2);
                }
            } catch (JSONException e) {
                Logger.m3439w("f", "parseHeader catch JSONException", e);
            }
        }
        String str = "isSuccess";
        if (m2659d()) {
            try {
                String strByte2Str = StringUtils.byte2Str(this.f3604b);
                JSONObject jSONObject = new JSONObject(strByte2Str);
                int i3 = -1;
                if (jSONObject.has("isSuccess")) {
                    i3 = jSONObject.getInt(str);
                } else if (jSONObject.has(AgooCommandFields.JSON_ERRORCODE)) {
                    str = AgooCommandFields.JSON_ERRORCODE;
                    i3 = jSONObject.getInt(str);
                } else {
                    Logger.m3431e("f", "sth. wrong because server errorcode's key.");
                }
                this.f3610h = i3;
                if (i3 == 0 && strByte2Str.contains("services")) {
                    z = true;
                }
                if (i3 != 1 && !z) {
                    this.f3610h = 2;
                    this.f3611i = jSONObject.has(Constants.KEY_ERROR_CODE) ? jSONObject.getInt(Constants.KEY_ERROR_CODE) : i2;
                    if (jSONObject.has("errorDesc")) {
                        jSONObject.getString("errorDesc");
                        return;
                    }
                    return;
                }
                this.f3609g = jSONObject.getJSONObject("services").toString();
                if (z && jSONObject.has("errorList")) {
                    jSONObject.getString("errorList");
                    return;
                }
                return;
            } catch (JSONException e2) {
                Logger.m3439w("f", "GrsResponse GrsResponse(String result) JSONException", e2);
            }
        } else {
            Logger.m3434i("f", "GRSSDK parse server body all failed.");
        }
        this.f3610h = 2;
    }

    public GrsHttpResponse(Exception exc, long j) {
        this.f3605c = 0;
        this.f3610h = 2;
        this.f3611i = ConnectionResult.RESOLUTION_REQUIRED;
        this.f3612j = "";
        this.f3613k = 0L;
        this.f3614l = exc;
        this.f3606d = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2656a(java.util.Map<java.lang.String, java.lang.String> r14) throws java.lang.NumberFormatException {
        /*
            r13 = this;
            int r0 = r14.size()
            java.lang.String r1 = "f"
            if (r0 > 0) goto Le
            java.lang.String r14 = "getExpireTime {headers == null} or {headers.size() <= 0}"
            com.huawei.hms.framework.common.Logger.m3438w(r1, r14)
            return
        Le:
            java.lang.String r0 = "Cache-Control"
            boolean r2 = r14.containsKey(r0)
            r3 = 1000(0x3e8, double:4.94E-321)
            r5 = 0
            r7 = 0
            r8 = 1
            if (r2 == 0) goto L56
            java.lang.Object r14 = r14.get(r0)
            java.lang.String r14 = (java.lang.String) r14
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            if (r0 != 0) goto Lb1
            java.lang.String r0 = "max-age="
            boolean r2 = r14.contains(r0)
            if (r2 == 0) goto Lb1
            int r0 = r14.indexOf(r0)     // Catch: java.lang.NumberFormatException -> L4e
            int r0 = r0 + 8
            java.lang.String r14 = r14.substring(r0)     // Catch: java.lang.NumberFormatException -> L4e
            long r9 = java.lang.Long.parseLong(r14)     // Catch: java.lang.NumberFormatException -> L4e
            java.lang.String r14 = "Cache-Control value{%s}"
            java.lang.Object[] r0 = new java.lang.Object[r8]     // Catch: java.lang.NumberFormatException -> L4c
            java.lang.Long r2 = java.lang.Long.valueOf(r9)     // Catch: java.lang.NumberFormatException -> L4c
            r0[r7] = r2     // Catch: java.lang.NumberFormatException -> L4c
            com.huawei.hms.framework.common.Logger.m3437v(r1, r14, r0)     // Catch: java.lang.NumberFormatException -> L4c
            goto Lb2
        L4c:
            r14 = move-exception
            goto L50
        L4e:
            r14 = move-exception
            r9 = r5
        L50:
            java.lang.String r0 = "getExpireTime addHeadersToResult NumberFormatException"
            com.huawei.hms.framework.common.Logger.m3439w(r1, r0, r14)
            goto Lb2
        L56:
            java.lang.String r0 = "Expires"
            boolean r2 = r14.containsKey(r0)
            if (r2 == 0) goto Lac
            java.lang.Object r0 = r14.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object[] r2 = new java.lang.Object[r8]
            r2[r7] = r0
            java.lang.String r9 = "expires is{%s}"
            com.huawei.hms.framework.common.Logger.m3437v(r1, r9, r2)
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat
            java.util.Locale r9 = java.util.Locale.ROOT
            java.lang.String r10 = "EEE, d MMM yyyy HH:mm:ss 'GMT'"
            r2.<init>(r10, r9)
            r9 = 0
            java.lang.String r10 = "Date"
            boolean r11 = r14.containsKey(r10)
            if (r11 == 0) goto L86
            java.lang.Object r14 = r14.get(r10)
            r9 = r14
            java.lang.String r9 = (java.lang.String) r9
        L86:
            java.util.Date r14 = r2.parse(r0)     // Catch: java.text.ParseException -> La5
            boolean r0 = android.text.TextUtils.isEmpty(r9)     // Catch: java.text.ParseException -> La5
            if (r0 == 0) goto L96
            java.util.Date r0 = new java.util.Date     // Catch: java.text.ParseException -> La5
            r0.<init>()     // Catch: java.text.ParseException -> La5
            goto L9a
        L96:
            java.util.Date r0 = r2.parse(r9)     // Catch: java.text.ParseException -> La5
        L9a:
            long r9 = r14.getTime()     // Catch: java.text.ParseException -> La5
            long r11 = r0.getTime()     // Catch: java.text.ParseException -> La5
            long r9 = r9 - r11
            long r9 = r9 / r3
            goto Lb2
        La5:
            r14 = move-exception
            java.lang.String r0 = "getExpireTime ParseException."
            com.huawei.hms.framework.common.Logger.m3439w(r1, r0, r14)
            goto Lb1
        Lac:
            java.lang.String r14 = "response headers neither contains Cache-Control nor Expires."
            com.huawei.hms.framework.common.Logger.m3434i(r1, r14)
        Lb1:
            r9 = r5
        Lb2:
            int r14 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r14 <= 0) goto Lbd
            r5 = 2592000(0x278d00, double:1.280618E-317)
            int r14 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r14 <= 0) goto Lc0
        Lbd:
            r9 = 86400(0x15180, double:4.26873E-319)
        Lc0:
            long r9 = r9 * r3
            java.lang.Object[] r14 = new java.lang.Object[r8]
            java.lang.Long r0 = java.lang.Long.valueOf(r9)
            r14[r7] = r0
            java.lang.String r0 = "convert expireTime{%s}"
            com.huawei.hms.framework.common.Logger.m3437v(r1, r0, r14)
            long r0 = java.lang.System.currentTimeMillis()
            long r0 = r0 + r9
            java.lang.String r14 = java.lang.String.valueOf(r0)
            r13.f3612j = r14
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1252r8.m2656a(java.util.Map):void");
    }

    /* renamed from: b */
    public final void m2657b(Map<String, String> map) throws NumberFormatException {
        if (map.size() <= 0) {
            Logger.m3438w("f", "getExpireTime {headers == null} or {headers.size() <= 0}");
            return;
        }
        long j = 0;
        if (map.containsKey("Retry-After")) {
            String str = map.get("Retry-After");
            if (!TextUtils.isEmpty(str)) {
                try {
                    j = Long.parseLong(str);
                } catch (NumberFormatException e) {
                    Logger.m3439w("f", "getRetryAfter addHeadersToResult NumberFormatException", e);
                }
            }
        }
        long j2 = j * 1000;
        Logger.m3437v("f", "convert retry-afterTime{%s}", Long.valueOf(j2));
        this.f3613k = j2;
    }

    /* renamed from: c */
    public boolean m2658c() {
        return this.f3605c == 503;
    }

    /* renamed from: d */
    public boolean m2659d() {
        return this.f3605c == 200;
    }
}
