package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.C1195p1;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NetReuestParam.java */
/* renamed from: com.loc.n */
/* loaded from: classes.dex */
public final class C1853n {

    /* renamed from: a */
    public static final String f5904a = C1094l1.m2251t("SRFZHZUVZT3BOa0ZiemZRQQ");

    /* renamed from: b */
    public static final String f5905b = C1094l1.m2251t("FbGJzX3Nkaw");

    /* renamed from: c */
    public static final String f5906c = C1094l1.m2251t("SWjJuYVh2eEMwSzVmNklFSmh0UXpVb2xtOVM4eU9Ua3E");

    /* renamed from: d */
    public static final String f5907d = C1094l1.m2251t("FQU5EU0RLMTA");

    /* renamed from: e */
    public static final String f5908e = C1094l1.m2251t("FMTAw");

    /* renamed from: f */
    public static boolean f5909f = false;

    /* renamed from: g */
    public String f5910g = "";

    /* renamed from: a */
    public static DeviceInfo.InterfaceC0623c m5270a() {
        return new DeviceInfo.InterfaceC0623c() { // from class: com.loc.n.1

            /* renamed from: a */
            public C1853n f5911a = new C1853n();

            @Override // com.amap.apis.utils.core.DeviceInfo.InterfaceC0623c
            /* renamed from: a */
            public final AbstractC1728ar mo1094a(byte[] bArr, Map<String, String> map) {
                return new C1722al(bArr, map);
            }

            @Override // com.amap.apis.utils.core.DeviceInfo.InterfaceC0623c
            /* renamed from: a */
            public final String mo1095a() {
                return C1853n.m5272c();
            }

            @Override // com.amap.apis.utils.core.DeviceInfo.InterfaceC0623c
            /* renamed from: a */
            public final String mo1096a(Context context, String str) {
                return C1853n.m5271a(context, str);
            }

            @Override // com.amap.apis.utils.core.DeviceInfo.InterfaceC0623c
            /* renamed from: a */
            public final String mo1097a(String str, String str2, String str3, String str4) {
                return this.f5911a.m5274a(str, str2, str3, str4);
            }

            @Override // com.amap.apis.utils.core.DeviceInfo.InterfaceC0623c
            /* renamed from: b */
            public final Map<String, String> mo1098b() {
                return this.f5911a.m5275b();
            }
        };
    }

    /* renamed from: a */
    public static String m5271a(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt(C1094l1.m2251t("UY29kZQ")) != 1) {
                return "";
            }
            String strOptString = new JSONObject(jSONObject.optString(C1094l1.m2251t("FZGF0YQ"))).optString(C1094l1.m2251t("FYWRpdQ"));
            if (TextUtils.isEmpty(strOptString)) {
                return "";
            }
            C1854o.m5277a(strOptString);
            C1849j.m5252a(context).m5254a(strOptString);
            return strOptString;
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: c */
    public static String m5272c() {
        return C1854o.m5276a();
    }

    /* renamed from: d */
    private String m5273d() {
        if (!TextUtils.isEmpty(this.f5910g)) {
            return this.f5910g;
        }
        String strM2236e = C1094l1.m2236e(C0994h1.m1934e("TUpJaVFGNk5LXHtSX1ZwQlRiV1VVZmtYWU1haV1hYWHCiXJtZcKLdmp8wpFewo1/wphwwoFzZmR8aWp6X2k6XsKDwoF+WGbChGdAScKLwoVXfmNxYEvCjcKLSG7CjGNvwoZtVFZ7WMKXYMKfwo5dZcKHfzZXUG85X0hNOVJrb2U8ZlJGW8KCe8KOV8KQWllrcGrCjcKIT25lUHPCicKGVsKKeG5fwp56XsKbc8KJbUVYR0pqU09gfE5/WT5YeHNAwoDCh1Z4V8KQT3JQYmxQbcKYwpFxdG/Ci3rCmMKQwop+YVbCmWFxwpxBdW07Zjp/ODlAbcKEY1pQwoJowohbV1VmV1laWmtcYGbClXfCk2NvesKdwohdWFnCol/CjWTCmMKicG1ENnAvPFtpcXtfclhfXsKAwolgRWNbS29OwpFafV3CkMKLTcKCwolrU3DCmGnCmX9wdsKPcXDCg3LCnFpGcDVTeTxNWW07bXJePVRfQn3ChGNraFhbwpNcwpXChMKNaFVjeVF8wojChm9YbmvChGDCmHvChGVQWjo0Z3o9djleOztWcVxSfWE9woLChkZdcGTCgVzCjMKUVE12wpV5bcKVwprCnntZworCgsKfwpHCksKnwpHClURURW9YaDtwXU1bck5YX3hSVFZUYlxKWFlua1xeYm9jU8KDa3ZrwpZ5am9Za3jCknR3fA"));
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < strM2236e.length(); i++) {
            stringBuffer.append((char) (strM2236e.charAt(i) - (i % 48)));
        }
        String string = stringBuffer.toString();
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i2 = 0; i2 < string.length() / 2; i2++) {
            stringBuffer2.append((char) ((string.charAt((string.length() - 1) - i2) + string.charAt(i2)) / 2));
        }
        String string2 = stringBuffer2.toString();
        this.f5910g = string2;
        return string2;
    }

    /* renamed from: a */
    public final String m5274a(String str, String str2, String str3, String str4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C1094l1.m2251t("LdGlk"), str);
            jSONObject.put(C1094l1.m2251t("FZGl1"), str2);
            jSONObject.put(C1094l1.m2251t("AZGl1Mg"), str3);
            jSONObject.put(C1094l1.m2251t("EZGl1Mw"), str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        String string = jSONObject.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String strM5281a = C1856q.m5281a();
        if (!TextUtils.isEmpty(strM5281a)) {
            String strM5262a = C1851l.m5262a(C1195p1.m2454a((string + "\u0000").getBytes(), strM5281a.getBytes()));
            if (!TextUtils.isEmpty(strM5262a)) {
                try {
                    return C1094l1.m2251t("Fa2V5PQ") + URLEncoder.encode(C1851l.m5262a(C1855p.m5279a(strM5281a.getBytes("utf-8"), C1855p.m5278a(m5273d())))) + C1094l1.m2251t("SJmRhdGE9") + URLEncoder.encode(strM5262a);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    public final synchronized Map<String, String> m5275b() {
        if (f5909f) {
            return null;
        }
        f5909f = true;
        HashMap map = new HashMap();
        map.put(C1094l1.m2251t("FZW50"), C1094l1.m2251t("FMg"));
        StringBuilder sb = new StringBuilder();
        sb.append(C1094l1.m2251t("SY2hhbm5lbD0"));
        sb.append(f5905b);
        sb.append(C1094l1.m2251t("SJmRpdj0"));
        sb.append(f5907d);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f5905b);
        stringBuffer.append(f5907d);
        stringBuffer.append(C1094l1.m2251t("FQA"));
        stringBuffer.append(f5906c);
        String strM5283a = C1856q.m5283a(stringBuffer.toString());
        sb.append(C1094l1.m2251t("FJnNpZ249"));
        sb.append(strM5283a.toUpperCase(Locale.US));
        sb.append(C1094l1.m2251t("SJm91dHB1dD1qc29u") + "\u0000");
        map.put(C1094l1.m2251t("FaW4"), C1851l.m5262a(C1195p1.m2454a(sb.toString().getBytes(), f5904a.getBytes())));
        map.put(C1094l1.m2251t("Sa2V5dA"), f5908e);
        return map;
    }
}
