package com.alibaba.sdk.android.beacon;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.Person;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.beacon.Beacon;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.p061ta.utdid2.device.UTDevice;
import com.taobao.accs.common.Constants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.beacon.b */
/* loaded from: classes.dex */
public final class C0510b {

    /* renamed from: a */
    public static final String f863a;

    /* renamed from: b */
    public static final String f864b;

    /* renamed from: a */
    public final Beacon f865a;

    /* renamed from: c */
    public final List<Beacon.Config> f867c = new ArrayList();

    /* renamed from: a */
    public final a f866a = new a();

    /* renamed from: com.alibaba.sdk.android.beacon.b$a */
    public final class a {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x00bb A[Catch: IOException -> 0x00be, TRY_LEAVE, TryCatch #7 {IOException -> 0x00be, blocks: (B:44:0x00b6, B:46:0x00bb), top: B:57:0x00b6 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String m568a(java.lang.String r7, byte[] r8) throws java.lang.Throwable {
            /*
                r6 = this;
                r0 = 0
                java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r1.<init>(r7)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                java.net.URLConnection r7 = r1.openConnection()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                java.net.HttpURLConnection r7 = (java.net.HttpURLConnection) r7     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r1 = 10000(0x2710, float:1.4013E-41)
                r7.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r7.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                java.lang.String r1 = "POST"
                r7.setRequestMethod(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r1 = 1
                r7.setDoOutput(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r7.setDoInput(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r1 = 0
                r7.setUseCaches(r1)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                boolean r1 = com.alibaba.sdk.android.beacon.C0509a.f862a     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                if (r1 == 0) goto L2f
                java.lang.String r1 = "Host"
                java.lang.String r2 = "beacon-api.aliyuncs.com"
                r7.setRequestProperty(r1, r2)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
            L2f:
                java.io.OutputStream r1 = r7.getOutputStream()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L90
                r1.write(r8)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                r1.flush()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                int r8 = r7.getResponseCode()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                boolean r2 = r6.m569a(r8)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                if (r2 == 0) goto L48
                java.io.InputStream r7 = r7.getInputStream()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                goto L4c
            L48:
                java.io.InputStream r7 = r7.getErrorStream()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
            L4c:
                java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                java.lang.String r5 = "UTF-8"
                r4.<init>(r7, r5)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L89
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                r7.<init>()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
            L5d:
                java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                if (r0 == 0) goto L67
                r7.append(r0)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                goto L5d
            L67:
                if (r2 != 0) goto L76
                com.alibaba.sdk.android.beacon.b r0 = com.alibaba.sdk.android.beacon.C0510b.this     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                java.lang.String r2 = r7.toString()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                com.alibaba.sdk.android.beacon.C0510b.m562a(r0, r8, r2)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
            L76:
                java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L83
                r1.close()     // Catch: java.io.IOException -> L80
                r3.close()     // Catch: java.io.IOException -> L80
            L80:
                return r7
            L81:
                r7 = move-exception
                goto L87
            L83:
                r7 = move-exception
                goto L8b
            L85:
                r7 = move-exception
                r3 = r0
            L87:
                r0 = r1
                goto Lb4
            L89:
                r7 = move-exception
                r3 = r0
            L8b:
                r0 = r1
                goto L92
            L8d:
                r7 = move-exception
                r3 = r0
                goto Lb4
            L90:
                r7 = move-exception
                r3 = r0
            L92:
                java.lang.String r8 = "beacon"
                java.lang.String r1 = r7.getMessage()     // Catch: java.lang.Throwable -> Lb3
                android.util.Log.i(r8, r1, r7)     // Catch: java.lang.Throwable -> Lb3
                com.alibaba.sdk.android.beacon.b r8 = com.alibaba.sdk.android.beacon.C0510b.this     // Catch: java.lang.Throwable -> Lb3
                java.lang.String r1 = "-100"
                java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> Lb3
                com.alibaba.sdk.android.beacon.C0510b.m562a(r8, r1, r7)     // Catch: java.lang.Throwable -> Lb3
                if (r0 == 0) goto Lab
                r0.close()     // Catch: java.io.IOException -> Lb0
            Lab:
                if (r3 == 0) goto Lb0
                r3.close()     // Catch: java.io.IOException -> Lb0
            Lb0:
                java.lang.String r7 = ""
                return r7
            Lb3:
                r7 = move-exception
            Lb4:
                if (r0 == 0) goto Lb9
                r0.close()     // Catch: java.io.IOException -> Lbe
            Lb9:
                if (r3 == 0) goto Lbe
                r3.close()     // Catch: java.io.IOException -> Lbe
            Lbe:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.beacon.C0510b.a.m568a(java.lang.String, byte[]):java.lang.String");
        }

        /* renamed from: a */
        public boolean m569a(int i) {
            return i >= 200 && i < 300;
        }
    }

    /* renamed from: com.alibaba.sdk.android.beacon.b$b */
    public static final class b {

        /* renamed from: a */
        public final Map<String, String> f869a;

        /* renamed from: c */
        public final String f870c;

        /* renamed from: d */
        public final String f871d;

        /* renamed from: e */
        public final String f872e;

        /* renamed from: f */
        public final String f873f;

        /* renamed from: g */
        public final String f874g;

        /* renamed from: h */
        public final String f875h;

        /* renamed from: i */
        public final String f876i;
        public final String mAppKey;
        public final Map<String, String> mExtras;

        /* renamed from: com.alibaba.sdk.android.beacon.b$b$a */
        public static final class a {

            /* renamed from: b */
            public Map<String, String> f877b = new HashMap();

            /* renamed from: j */
            public String f878j;

            /* renamed from: k */
            public String f879k;

            /* renamed from: l */
            public String f880l;

            /* renamed from: m */
            public String f881m;

            /* renamed from: n */
            public String f882n;

            /* renamed from: o */
            public String f883o;

            /* renamed from: p */
            public String f884p;

            /* renamed from: a */
            public a m571a(String str) {
                this.f878j = str;
                return this;
            }

            /* renamed from: a */
            public a m572a(Map<String, String> map) {
                this.f877b.putAll(map);
                return this;
            }

            /* renamed from: a */
            public b m573a() {
                return new b(this);
            }

            /* renamed from: b */
            public a m574b(String str) {
                this.f879k = str;
                return this;
            }

            /* renamed from: c */
            public a m575c(String str) {
                this.f880l = str;
                return this;
            }

            /* renamed from: d */
            public a m576d(String str) {
                this.f881m = str;
                return this;
            }

            /* renamed from: e */
            public a m577e(String str) {
                this.f882n = str;
                return this;
            }

            /* renamed from: f */
            public a m578f(String str) {
                this.f883o = str;
                return this;
            }

            /* renamed from: g */
            public a m579g(String str) {
                this.f884p = str;
                return this;
            }
        }

        public b(a aVar) {
            this.f869a = new TreeMap();
            this.mAppKey = aVar.f878j;
            this.f870c = aVar.f879k;
            this.f871d = aVar.f880l;
            this.f872e = aVar.f881m;
            this.f873f = aVar.f882n;
            this.f874g = aVar.f883o;
            this.f875h = aVar.f884p;
            this.mExtras = aVar.f877b;
            this.f876i = m570a();
        }

        /* renamed from: a */
        private String m570a() {
            this.f869a.put(Constants.KEY_APP_KEY, this.mAppKey);
            this.f869a.put("appVer", this.f871d);
            this.f869a.put(Constants.KEY_OS_TYPE, this.f872e);
            this.f869a.put("osVer", this.f873f);
            this.f869a.put("deviceId", this.f874g);
            this.f869a.put("beaconVer", this.f875h);
            for (String str : this.mExtras.keySet()) {
                this.f869a.put(str, this.mExtras.get(str));
            }
            StringBuilder sb = new StringBuilder();
            for (String str2 : this.f869a.keySet()) {
                sb.append(str2);
                sb.append(this.f869a.get(str2));
            }
            String strM581a = C0511c.m581a(this.f870c, sb.toString());
            this.f869a.put("sign", strM581a);
            return strM581a;
        }
    }

    static {
        f863a = C0509a.f862a ? "100.67.64.54" : "beacon-api.aliyuncs.com";
        f864b = CompilerOutline.m1762g(CompilerOutline.m1765j("https://"), f863a, "/beacon/fetch/config");
    }

    public C0510b(Beacon beacon) {
        this.f865a = beacon;
    }

    /* renamed from: a */
    private b m560a(Context context, String str, String str2, Map<String, String> map) {
        return new b.a().m571a(str).m574b(str2).m575c(C0511c.m580a(context)).m576d("Android").m577e(String.valueOf(Build.VERSION.SDK_INT)).m578f(UTDevice.getUtdid(context)).m579g("1.0.7").m572a(map).m573a();
    }

    /* renamed from: a */
    private String m561a(b bVar) {
        Map<String, String> map = bVar.f869a;
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            sb.append(encode(str));
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(encode(map.get(str)));
            sb.append("&");
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private void m563a(String str) {
        m565b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m564a(String str, String str2) {
        this.f865a.m559a(new Beacon.Error(str, str2));
    }

    /* renamed from: b */
    private void m565b(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            if (TextUtils.isEmpty(str) || (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("result")) == null || jSONArrayOptJSONArray.length() <= 0) {
                return;
            }
            this.f867c.clear();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArrayOptJSONArray.get(i);
                this.f867c.add(new Beacon.Config(jSONObject.optString(Person.KEY_KEY), jSONObject.optString("value")));
            }
        } catch (Exception unused) {
        }
    }

    private String encode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public List<Beacon.Config> m566a() {
        return Collections.unmodifiableList(this.f867c);
    }

    /* renamed from: a */
    public void m567a(Context context, String str, String str2, Map<String, String> map) {
        b bVarM560a = m560a(context, str, str2, map);
        String strM1763h = CompilerOutline.m1763h(new StringBuilder(), f864b, GrsManager.SEPARATOR, "byappkey");
        Log.i("beacon", "url=" + strM1763h);
        String strM568a = this.f866a.m568a(strM1763h, m561a(bVarM560a).getBytes());
        Log.i("beacon", "[fetchByAppKey] result: " + strM568a);
        m563a(strM568a);
    }
}
