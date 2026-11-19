package com.loc;

import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hem.C0891d1;
import com.huawei.hem.C0943f1;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.C1195p1;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.AbstractC1728ar;
import com.loc.C1723am;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSession;
import org.android.spdy.SpdyAgent;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONObject;

/* compiled from: HttpUrlUtil.java */
/* renamed from: com.loc.ap */
/* loaded from: classes.dex */
public final class C1726ap {

    /* renamed from: k */
    public static SoftReference<SSLContext> f4954k;

    /* renamed from: t */
    public static SoftReference<C1727aq> f4955t;

    /* renamed from: a */
    public boolean f4956a;

    /* renamed from: b */
    public SSLContext f4957b;

    /* renamed from: c */
    public Proxy f4958c;

    /* renamed from: g */
    public String f4962g;

    /* renamed from: h */
    public C1723am.a f4963h;

    /* renamed from: i */
    public d f4964i;

    /* renamed from: l */
    public boolean f4966l;

    /* renamed from: m */
    public String f4967m;

    /* renamed from: n */
    public String f4968n;

    /* renamed from: d */
    public volatile boolean f4959d = false;

    /* renamed from: e */
    public long f4960e = -1;

    /* renamed from: f */
    public long f4961f = 0;

    /* renamed from: j */
    public String f4965j = "";

    /* renamed from: o */
    public boolean f4969o = false;

    /* renamed from: p */
    public boolean f4970p = false;

    /* renamed from: q */
    public String f4971q = "";

    /* renamed from: r */
    public String f4972r = "";

    /* renamed from: s */
    public String f4973s = "";

    /* renamed from: u */
    public f f4974u = new f();

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$a */
    public static class a implements Cloneable, Comparable {

        /* renamed from: a */
        public int f4975a;

        /* renamed from: b */
        public String f4976b;

        /* renamed from: c */
        public String f4977c;

        /* renamed from: d */
        public String f4978d;

        /* renamed from: e */
        public String f4979e;

        /* renamed from: f */
        public int f4980f;

        /* renamed from: g */
        public int f4981g;

        /* renamed from: h */
        public int f4982h;

        /* renamed from: i */
        public long f4983i;

        /* renamed from: j */
        public volatile AtomicInteger f4984j = new AtomicInteger(1);

        public a(c cVar) {
            this.f4976b = cVar.f4989c;
            this.f4977c = cVar.f4991e;
            this.f4979e = cVar.f4990d;
            this.f4980f = cVar.f4999m;
            this.f4981g = cVar.f5000n;
            this.f4982h = cVar.f4988b.m4161a();
            this.f4978d = cVar.f4987a;
            this.f4983i = cVar.f4992f;
            if (this.f4980f == 10) {
                this.f4975a = 0;
            }
        }

        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a clone() {
            try {
                return (a) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        /* renamed from: b */
        public final String m4112b() {
            StringBuilder sb;
            StringBuilder sb2;
            StringBuilder sb3;
            StringBuilder sb4;
            try {
                String str = this.f4980f + "#";
                if (TextUtils.isEmpty(this.f4979e)) {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append("-#");
                } else {
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append(this.f4979e);
                    sb.append("#");
                }
                String str2 = (sb.toString() + this.f4982h + "#") + this.f4984j + "#";
                if (TextUtils.isEmpty(this.f4976b)) {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append("-#");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(this.f4976b);
                    sb2.append("#");
                }
                String string = sb2.toString();
                if (this.f4980f == 1) {
                    sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append(this.f4978d);
                    sb3.append("#");
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append("-#");
                }
                String string2 = sb3.toString();
                if (this.f4980f == 1) {
                    sb4 = new StringBuilder();
                    sb4.append(string2);
                    sb4.append(this.f4983i);
                    sb4.append("#");
                } else {
                    sb4 = new StringBuilder();
                    sb4.append(string2);
                    sb4.append("-#");
                }
                String str3 = (sb4.toString() + this.f4977c + "#") + this.f4981g;
                String strM1933d = C0994h1.m1933d(C1195p1.m2454a(str3.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
                StringBuilder sb5 = new StringBuilder("上报异常数据");
                sb5.append(str3);
                sb5.append("加密后：");
                sb5.append(strM1933d);
                C1726ap.m4099a();
                return strM1933d;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f4975a - ((a) obj).f4975a;
        }
    }

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$b */
    public static class b {

        /* renamed from: a */
        public HttpURLConnection f4985a;

        /* renamed from: b */
        public int f4986b = this.f4986b;

        /* renamed from: b */
        public int f4986b = this.f4986b;

        public b(HttpURLConnection httpURLConnection) {
            this.f4985a = httpURLConnection;
        }
    }

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$c */
    public static class c implements Cloneable {

        /* renamed from: a */
        public String f4987a = "";

        /* renamed from: b */
        public AbstractC1728ar.b f4988b = AbstractC1728ar.b.FIRST_NONDEGRADE;

        /* renamed from: c */
        public String f4989c = "";

        /* renamed from: d */
        public String f4990d = "";

        /* renamed from: e */
        public String f4991e = "";

        /* renamed from: f */
        public long f4992f = 0;

        /* renamed from: g */
        public long f4993g = 0;

        /* renamed from: h */
        public long f4994h = 0;

        /* renamed from: i */
        public long f4995i = 0;

        /* renamed from: j */
        public long f4996j = 0;

        /* renamed from: k */
        public String f4997k = "-";

        /* renamed from: l */
        public String f4998l = "-";

        /* renamed from: m */
        public int f4999m = 0;

        /* renamed from: n */
        public int f5000n = 0;

        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c clone() {
            try {
                return (c) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        /* renamed from: b */
        public final String m4114b() {
            String strM1762g = !TextUtils.isEmpty(this.f4989c) ? C0948f6.m1762g(new StringBuilder(), this.f4989c, "#") : "-#";
            StringBuilder sbM1765j = C0948f6.m1765j(!TextUtils.isEmpty(this.f4990d) ? C0948f6.m1762g(C0948f6.m1765j(strM1762g), this.f4990d, "#") : C0948f6.m1760e(strM1762g, "-#"));
            sbM1765j.append(this.f4988b.m4161a());
            sbM1765j.append("#");
            StringBuilder sbM1765j2 = C0948f6.m1765j(sbM1765j.toString());
            sbM1765j2.append(this.f4994h);
            sbM1765j2.append("#");
            StringBuilder sbM1765j3 = C0948f6.m1765j(sbM1765j2.toString());
            sbM1765j3.append(this.f4996j);
            sbM1765j3.append("#");
            StringBuilder sbM1765j4 = C0948f6.m1765j(sbM1765j3.toString());
            sbM1765j4.append(this.f4992f);
            String string = sbM1765j4.toString();
            String strM1933d = C0994h1.m1933d(C1195p1.m2454a(string.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
            StringBuilder sb = new StringBuilder("上报耗时数据");
            sb.append(string);
            sb.append("加密后：");
            sb.append(strM1933d);
            C1726ap.m4099a();
            return strM1933d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RequestInfo{csid='");
            C0948f6.m1781z(sb, this.f4987a, '\'', ", degradeType=");
            sb.append(this.f4988b);
            sb.append(", serverIp='");
            C0948f6.m1781z(sb, this.f4989c, '\'', ", path='");
            C0948f6.m1781z(sb, this.f4990d, '\'', ", hostname='");
            C0948f6.m1781z(sb, this.f4991e, '\'', ", totalTime=");
            sb.append(this.f4992f);
            sb.append(", DNSTime=");
            sb.append(this.f4993g);
            sb.append(", connectionTime=");
            sb.append(this.f4994h);
            sb.append(", writeTime=");
            sb.append(this.f4995i);
            sb.append(", readTime=");
            sb.append(this.f4996j);
            sb.append(", serverTime='");
            C0948f6.m1781z(sb, this.f4997k, '\'', ", datasize='");
            C0948f6.m1781z(sb, this.f4998l, '\'', ", errorcode=");
            sb.append(this.f4999m);
            sb.append(", errorcodeSub=");
            sb.append(this.f5000n);
            sb.append('}');
            return sb.toString();
        }
    }

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$d */
    public static class d {

        /* renamed from: a */
        public Vector<e> f5001a;

        /* renamed from: b */
        public volatile e f5002b;

        public d() {
            this.f5001a = new Vector<>();
            this.f5002b = new e((byte) 0);
        }

        public /* synthetic */ d(byte b) {
            this();
        }

        /* renamed from: a */
        public final e m4115a(String str) {
            if (TextUtils.isEmpty(str)) {
                return this.f5002b;
            }
            byte b = 0;
            for (int i = 0; i < this.f5001a.size(); i++) {
                e eVar = this.f5001a.get(i);
                if (eVar != null && eVar.m4116a().equals(str)) {
                    return eVar;
                }
            }
            e eVar2 = new e(b);
            eVar2.m4118b(str);
            this.f5001a.add(eVar2);
            return eVar2;
        }
    }

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$e */
    public static class e implements HostnameVerifier {

        /* renamed from: a */
        public String f5003a;

        /* renamed from: b */
        public String f5004b;

        public e() {
        }

        public /* synthetic */ e(byte b) {
            this();
        }

        /* renamed from: a */
        public final String m4116a() {
            return this.f5004b;
        }

        /* renamed from: a */
        public final void m4117a(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(this.f5003a) || !str.contains(":") || (strArrSplit = str.split(":")) == null || strArrSplit.length <= 0) {
                this.f5003a = str;
            } else {
                this.f5003a = strArrSplit[0];
            }
        }

        /* renamed from: b */
        public final void m4118b(String str) {
            this.f5004b = str;
        }

        @Override // javax.net.ssl.HostnameVerifier
        public final boolean verify(String str, SSLSession sSLSession) {
            HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
            return !TextUtils.isEmpty(this.f5003a) ? this.f5003a.equals(str) : !TextUtils.isEmpty(this.f5004b) ? defaultHostnameVerifier.verify(this.f5004b, sSLSession) : defaultHostnameVerifier.verify(str, sSLSession);
        }
    }

    /* compiled from: HttpUrlUtil.java */
    /* renamed from: com.loc.ap$f */
    public class f {

        /* renamed from: a */
        public long f5005a = 0;

        /* renamed from: b */
        public long f5006b = 0;

        /* renamed from: c */
        public c f5007c = new c();

        /* renamed from: d */
        public a f5008d;

        /* renamed from: e */
        public c f5009e;

        /* renamed from: f */
        public String f5010f;

        /* renamed from: g */
        public URL f5011g;

        public f() {
        }

        /* renamed from: a */
        public final void m4119a() {
            this.f5007c.f4994h = SystemClock.elapsedRealtime() - this.f5006b;
        }

        /* renamed from: a */
        public final void m4120a(int i) {
            "----errorcode-----".concat(String.valueOf(i));
            C1726ap.m4099a();
            try {
                this.f5007c.f4992f = SystemClock.elapsedRealtime() - this.f5005a;
                this.f5007c.f4999m = i;
                if (this.f5007c.f4988b.m4165e()) {
                    C0943f1.m1719m(false, this.f5007c.f4991e);
                }
                boolean zM4102a = C1726ap.this.m4102a(this.f5007c.f4991e);
                if (zM4102a) {
                    if (C1726ap.this.f4970p && !TextUtils.isEmpty(C1726ap.this.f4968n) && this.f5007c.f4988b.m4162b()) {
                        C0943f1.m1701D();
                    }
                    if (this.f5007c.f4988b.m4163c()) {
                        C0943f1.m1719m(this.f5007c.f4988b.m4163c(), this.f5007c.f4991e);
                    }
                    C0943f1.m1699B(this.f5009e);
                    C0943f1.m1718l(false, this.f5008d);
                    C0943f1.m1727u(this.f5007c);
                }
                C0943f1.m1717k(this.f5011g.toString(), this.f5007c.f4988b.m4163c(), true, zM4102a);
                new StringBuilder("!!!error-").append(this.f5007c.toString());
                C1726ap.m4099a();
            } catch (Throwable unused) {
            }
        }

        /* renamed from: a */
        public final void m4121a(long j) {
            this.f5007c.f4998l = new DecimalFormat("0.00").format(j / 1024.0f);
        }

        /* renamed from: a */
        public final void m4122a(AbstractC1728ar abstractC1728ar, URL url) {
            this.f5011g = url;
            this.f5007c.f4990d = url.getPath();
            this.f5007c.f4991e = url.getHost();
            if (!TextUtils.isEmpty(C1726ap.this.f4968n) && abstractC1728ar.m4155u().m4162b()) {
                c cVar = this.f5007c;
                cVar.f4989c = cVar.f4991e.replace("[", "").replace("]", "");
                this.f5007c.f4991e = C1726ap.this.f4968n;
            }
            if (abstractC1728ar.m4155u().m4162b()) {
                abstractC1728ar.m4139a(this.f5007c.f4991e);
            }
            if (abstractC1728ar.m4155u().m4164d()) {
                this.f5010f = abstractC1728ar.m4158x();
            }
        }

        /* renamed from: a */
        public final void m4123a(C1729as c1729as) {
            c cVarClone;
            try {
                this.f5007c.f4992f = SystemClock.elapsedRealtime() - this.f5005a;
                if (c1729as != null) {
                    c1729as.f5053f = this.f5007c.f4988b.m4163c();
                }
                if (this.f5007c.f4988b.m4162b() && this.f5007c.f4992f > 10000) {
                    C0943f1.m1719m(false, this.f5007c.f4991e);
                }
                if (this.f5007c.f4988b.m4164d()) {
                    C0943f1.m1719m(false, this.f5010f);
                }
                boolean zM4102a = C1726ap.this.m4102a(this.f5007c.f4991e);
                if (zM4102a) {
                    C0943f1.m1699B(this.f5007c);
                    C0943f1.m1718l(true, this.f5008d);
                    if (this.f5007c.f4992f > C0943f1.f2597n && (cVarClone = this.f5007c.clone()) != null) {
                        cVarClone.f4999m = 1;
                        C0943f1.m1727u(cVarClone);
                        new StringBuilder("!!!finish&error-").append(cVarClone.toString());
                        C1726ap.m4099a();
                    }
                }
                C0943f1.m1717k(this.f5011g.toString(), this.f5007c.f4988b.m4163c(), false, zM4102a);
                new StringBuilder("!!!finish-").append(this.f5007c.toString());
                C1726ap.m4099a();
            } catch (Throwable unused) {
            }
        }

        /* renamed from: b */
        public final void m4124b() {
            this.f5007c.f4995i = SystemClock.elapsedRealtime() - this.f5006b;
        }

        /* renamed from: b */
        public final void m4125b(int i) {
            this.f5007c.f5000n = i;
        }

        /* renamed from: c */
        public final void m4126c() {
            this.f5007c.f4996j = SystemClock.elapsedRealtime() - this.f5006b;
        }

        /* renamed from: d */
        public final void m4127d() {
            c cVarClone = this.f5007c.clone();
            if (this.f5007c.f4992f > C0943f1.f2597n) {
                cVarClone.f4999m = 1;
            }
            if (cVarClone == null || C0943f1.f2586c == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("serverip", cVarClone.f4989c);
            map.put("hostname", cVarClone.f4991e);
            map.put("path", cVarClone.f4990d);
            map.put("csid", cVarClone.f4987a);
            map.put("degrade", String.valueOf(cVarClone.f4988b.m4161a()));
            map.put("errorcode", String.valueOf(cVarClone.f4999m));
            map.put("errorsubcode", String.valueOf(cVarClone.f5000n));
            map.put("connecttime", String.valueOf(cVarClone.f4994h));
            map.put("writetime", String.valueOf(cVarClone.f4995i));
            map.put("readtime", String.valueOf(cVarClone.f4996j));
            map.put("datasize", String.valueOf(cVarClone.f4998l));
            map.put("totaltime", String.valueOf(cVarClone.f4992f));
            String string = new JSONObject(map).toString();
            "--埋点--".concat(String.valueOf(string));
            C1726ap.m4099a();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            try {
                C1734ax c1734ax = new C1734ax(C0943f1.f2586c, "core", "2.0", "O008");
                c1734ax.m4180a(string);
                C1735ay.m4185a(c1734ax, C0943f1.f2586c);
            } catch (C0891d1 unused) {
            }
        }
    }

    public C1726ap() {
        C0943f1.m1704G();
        try {
            this.f4962g = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
        } catch (Throwable th) {
            C1859t.m5312a(th, "ht", "ic");
        }
    }

    /* renamed from: a */
    public static int m4095a(Exception exc) {
        if (exc instanceof SSLHandshakeException) {
            return SpdyAgent.SPDY_PING_RECV;
        }
        if (exc instanceof SSLKeyException) {
            return SpdyAgent.SPDY_REQUEST_RECV;
        }
        if (exc instanceof SSLProtocolException) {
            return SpdyAgent.SPDY_SESSION_CLOSE;
        }
        if (exc instanceof SSLPeerUnverifiedException) {
            return SpdyAgent.SPDY_STREAM_RESPONSE_RECV;
        }
        if (exc instanceof ConnectException) {
            return 6101;
        }
        if (exc instanceof SocketException) {
            return 6102;
        }
        if (exc instanceof ConnectTimeoutException) {
            return 2101;
        }
        return exc instanceof SocketTimeoutException ? 2102 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x016b A[Catch: all -> 0x01b8, IOException -> 0x01bd, SocketTimeoutException -> 0x01eb, ConnectTimeoutException -> 0x01f0, TRY_ENTER, TryCatch #17 {SocketTimeoutException -> 0x01eb, ConnectTimeoutException -> 0x01f0, IOException -> 0x01bd, all -> 0x01b8, blocks: (B:3:0x0007, B:5:0x0019, B:7:0x0023, B:9:0x0029, B:10:0x0030, B:43:0x00a2, B:103:0x016b, B:104:0x01b7), top: B:156:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0203 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x020d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0217 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009d A[PHI: r2
      0x009d: PHI (r2v11 java.lang.String) = (r2v0 java.lang.String), (r2v19 java.lang.String), (r2v19 java.lang.String) binds: [B:4:0x0017, B:150:0x009d, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2 A[Catch: all -> 0x01b8, IOException -> 0x01bd, SocketTimeoutException -> 0x01eb, ConnectTimeoutException -> 0x01f0, TRY_ENTER, TRY_LEAVE, TryCatch #17 {SocketTimeoutException -> 0x01eb, ConnectTimeoutException -> 0x01f0, IOException -> 0x01bd, all -> 0x01b8, blocks: (B:3:0x0007, B:5:0x0019, B:7:0x0023, B:9:0x0029, B:10:0x0030, B:43:0x00a2, B:103:0x016b, B:104:0x01b7), top: B:156:0x0007 }] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.loc.C1729as m4096a(com.loc.C1726ap.b r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1726ap.m4096a(com.loc.ap$b):com.loc.as");
    }

    /* renamed from: a */
    public static String m4098a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value == null) {
                value = "";
            }
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(URLEncoder.encode(key));
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(URLEncoder.encode(value));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m4099a() {
    }

    /* renamed from: a */
    private void m4100a(Map<String, String> map, HttpURLConnection httpURLConnection) {
        String str;
        c cVarPoll;
        if (map != null) {
            try {
                for (String str2 : map.keySet()) {
                    httpURLConnection.addRequestProperty(str2, map.get(str2));
                }
            } catch (Throwable th) {
                C1859t.m5312a(th, "ht", "adh");
                return;
            }
        }
        if (C1723am.f4936d != null) {
            for (String str3 : C1723am.f4936d.keySet()) {
                httpURLConnection.addRequestProperty(str3, C1723am.f4936d.get(str3));
            }
        }
        if (!this.f4967m.contains("/v3/iasdkauth") && !TextUtils.isEmpty(this.f4965j) && C0943f1.m1721o(this.f4965j)) {
            this.f4969o = true;
            httpURLConnection.addRequestProperty("lct", String.valueOf(C0943f1.m1732z(this.f4965j)));
        }
        httpURLConnection.addRequestProperty("csid", this.f4962g);
        if (m4102a(this.f4974u.f5007c.f4991e)) {
            f fVar = this.f4974u;
            if (TextUtils.isEmpty(fVar.f5007c.f4989c)) {
                str = "";
            } else {
                String strM1933d = C0994h1.m1933d(C1195p1.m2454a(fVar.f5007c.f4989c.getBytes(), "YXBtX25ldHdvcmtf".getBytes()));
                StringBuilder sb = new StringBuilder("上报本次请求serverIp:");
                sb.append(fVar.f5007c.f4989c);
                sb.append("加密后：");
                sb.append(strM1933d);
                str = strM1933d;
            }
            if (!TextUtils.isEmpty(str)) {
                httpURLConnection.addRequestProperty("sip", str);
            }
            if (C0943f1.f2604u) {
                synchronized (C0943f1.f2609z) {
                    cVarPoll = C0943f1.f2609z.poll();
                    if (cVarPoll == null) {
                        cVarPoll = null;
                    }
                }
                if (cVarPoll != null) {
                    httpURLConnection.addRequestProperty("nls", cVarPoll.m4114b());
                    this.f4974u.f5009e = cVarPoll;
                }
            }
            a aVarM1706I = C0943f1.m1706I();
            if (aVarM1706I != null) {
                httpURLConnection.addRequestProperty("nlf", aVarM1706I.m4112b());
                this.f4974u.f5008d = aVarM1706I;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m4102a(String str) {
        if (this.f4966l) {
            return true;
        }
        return (!TextUtils.isEmpty(this.f4968n) && (this.f4968n.contains("rest") || this.f4968n.contains("apilocate"))) || m4108b(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m4103a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7, boolean r8) {
        /*
            r6 = this;
            java.lang.String r0 = "#"
            java.lang.String r1 = "lct"
            r2 = 1
            r3 = 0
            java.lang.String r4 = "sc"
            java.lang.Object r4 = r7.get(r4)     // Catch: java.lang.Throwable -> L72
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L72
            if (r4 == 0) goto L3c
            int r5 = r4.size()     // Catch: java.lang.Throwable -> L72
            if (r5 <= 0) goto L3c
            java.lang.Object r4 = r4.get(r3)     // Catch: java.lang.Throwable -> L72
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L72
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L72
            if (r5 != 0) goto L3c
            boolean r5 = r4.contains(r0)     // Catch: java.lang.Throwable -> L72
            if (r5 != 0) goto L2a
        L28:
            r0 = r2
            goto L3d
        L2a:
            java.lang.String[] r0 = r4.split(r0)     // Catch: java.lang.Throwable -> L72
            int r4 = r0.length     // Catch: java.lang.Throwable -> L72
            if (r4 <= r2) goto L3c
            java.lang.String r4 = "1"
            r0 = r0[r2]     // Catch: java.lang.Throwable -> L72
            boolean r0 = r4.equals(r0)     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L3c
            goto L28
        L3c:
            r0 = r3
        L3d:
            if (r0 != 0) goto L40
            return r3
        L40:
            if (r8 == 0) goto L73
            boolean r8 = r7.containsKey(r1)     // Catch: java.lang.Throwable -> L72
            if (r8 == 0) goto L72
            java.lang.Object r7 = r7.get(r1)     // Catch: java.lang.Throwable -> L72
            java.util.List r7 = (java.util.List) r7     // Catch: java.lang.Throwable -> L72
            if (r7 == 0) goto L72
            int r8 = r7.size()     // Catch: java.lang.Throwable -> L72
            if (r8 <= 0) goto L72
            java.lang.Object r7 = r7.get(r3)     // Catch: java.lang.Throwable -> L72
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L72
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L72
            if (r8 != 0) goto L72
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L72
            long r7 = r7.longValue()     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r6.f4965j     // Catch: java.lang.Throwable -> L72
            boolean r7 = com.huawei.hem.C0943f1.m1722p(r0, r7)     // Catch: java.lang.Throwable -> L72
            r2 = r7
            goto L73
        L72:
            r2 = r3
        L73:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1726ap.m4103a(java.util.Map, boolean):boolean");
    }

    /* renamed from: b */
    private C1727aq m4104b() {
        try {
            if (f4955t == null || f4955t.get() == null) {
                f4955t = new SoftReference<>(new C1727aq(C0943f1.f2586c, this.f4957b));
            }
            C1727aq c1727aq = f4954k != null ? f4955t.get() : null;
            return c1727aq == null ? new C1727aq(C0943f1.f2586c, this.f4957b) : c1727aq;
        } catch (Throwable th) {
            C1862w.m5333b(th, "ht", "gsf");
            return null;
        }
    }

    /* renamed from: b */
    public static String m4105b(Map<String, List<String>> map) {
        try {
            List<String> list = map.get("sc");
            if (list == null || list.size() <= 0) {
                return "";
            }
            String str = list.get(0);
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            if (str.contains("#")) {
                String[] strArrSplit = str.split("#");
                if (strArrSplit.length <= 1) {
                    return "";
                }
                str = strArrSplit[0];
            }
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4106b(com.loc.AbstractC1728ar r7) {
        /*
            r6 = this;
            com.loc.ap$d r0 = new com.loc.ap$d
            r1 = 0
            r0.<init>(r1)
            r6.f4964i = r0
            boolean r0 = r7.m4159y()
            r6.f4970p = r0
            java.net.Proxy r0 = r7.m4148n()
            r6.f4958c = r0
            com.loc.am$a r0 = r7.m4154t()
            r6.f4963h = r0
            boolean r0 = r7.m4151q()
            r6.f4966l = r0
            java.lang.String r0 = r7.m4160z()
            r6.f4965j = r0
            com.huawei.hem.i1 r0 = com.huawei.hem.C1019i1.a.f2886a
            boolean r2 = r7.m4153s()
            if (r0 == 0) goto Ld6
            r3 = 1
            if (r2 != 0) goto L6e
            com.huawei.hem.i1$b r2 = r0.f2885a
            if (r2 != 0) goto L3c
            com.huawei.hem.i1$b r2 = new com.huawei.hem.i1$b
            r2.<init>(r1)
            r0.f2885a = r2
        L3c:
            com.huawei.hem.i1$b r0 = r0.f2885a
            boolean r2 = r0.f2889c
            if (r2 != 0) goto L6b
            int r2 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r2 < r4) goto L4a
            r2 = r3
            goto L4b
        L4a:
            r2 = r1
        L4b:
            boolean r5 = r0.f2888b
            if (r5 == 0) goto L5e
            int r0 = r0.f2887a
            if (r0 > 0) goto L54
            r0 = r4
        L54:
            if (r0 < r4) goto L58
            r0 = r3
            goto L59
        L58:
            r0 = r1
        L59:
            if (r0 == 0) goto L5c
            goto L5e
        L5c:
            r0 = r1
            goto L5f
        L5e:
            r0 = r3
        L5f:
            if (r2 == 0) goto L65
            if (r0 == 0) goto L65
            r0 = r3
            goto L66
        L65:
            r0 = r1
        L66:
            if (r0 == 0) goto L69
            goto L6b
        L69:
            r0 = r1
            goto L6c
        L6b:
            r0 = r3
        L6c:
            if (r0 == 0) goto L6f
        L6e:
            r1 = r3
        L6f:
            r6.f4956a = r1
            com.loc.ar$b r0 = r7.m4155u()
            boolean r0 = r0.m4162b()
            if (r0 == 0) goto L80
            java.lang.String r0 = r7.m4146l()
            goto L84
        L80:
            java.lang.String r0 = r7.m4145k()
        L84:
            r6.f4967m = r0
            java.lang.String r1 = r6.f4965j
            java.lang.String r0 = com.loc.C1725ao.m4077a(r0, r1)
            r6.f4967m = r0
            java.lang.String r0 = r7.mo1741g()
            r6.f4968n = r0
            java.lang.String r0 = r6.f4965j
            java.lang.String r1 = "loc"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto Ld5
            java.lang.String r0 = r7.m4145k()
            java.lang.String r7 = r7.m4146l()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto Lb7
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Exception -> Lb7
            r1.<init>(r0)     // Catch: java.lang.Exception -> Lb7
            java.lang.String r0 = r1.getHost()     // Catch: java.lang.Exception -> Lb7
            r6.f4972r = r0     // Catch: java.lang.Exception -> Lb7
        Lb7:
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 != 0) goto Ld5
            java.lang.String r0 = r6.f4968n     // Catch: java.lang.Exception -> Ld5
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Ld5
            if (r0 != 0) goto Lca
            java.lang.String r7 = r6.f4968n     // Catch: java.lang.Exception -> Ld5
            r6.f4971q = r7     // Catch: java.lang.Exception -> Ld5
            return
        Lca:
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Exception -> Ld5
            r0.<init>(r7)     // Catch: java.lang.Exception -> Ld5
            java.lang.String r7 = r0.getHost()     // Catch: java.lang.Exception -> Ld5
            r6.f4971q = r7     // Catch: java.lang.Exception -> Ld5
        Ld5:
            return
        Ld6:
            r7 = 0
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1726ap.m4106b(com.loc.ar):void");
    }

    /* renamed from: b */
    public static boolean m4108b(String str) {
        return str.contains("rest") || str.contains("apilocate");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0214 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0140 A[Catch: all -> 0x01ad, TryCatch #3 {all -> 0x01ad, blocks: (B:44:0x00c9, B:47:0x00e1, B:49:0x00e4, B:51:0x00e8, B:53:0x00ee, B:57:0x00f7, B:60:0x0103, B:62:0x0106, B:64:0x010c, B:74:0x013a, B:76:0x0140, B:78:0x014a, B:80:0x015b, B:82:0x0183, B:84:0x01a4, B:85:0x01a7, B:65:0x0122, B:67:0x0126, B:69:0x0129, B:71:0x012f, B:72:0x0136), top: B:144:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0200  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.loc.C1726ap.b m4109c(com.loc.AbstractC1728ar r15) throws java.net.ProtocolException {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1726ap.m4109c(com.loc.ar):com.loc.ap$b");
    }

    /* renamed from: a */
    public final C1729as m4110a(AbstractC1728ar abstractC1728ar) {
        DataOutputStream dataOutputStream;
        Throwable th;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                m4106b(abstractC1728ar);
                C1729as c1729asM4091b = C1725ao.m4091b(this.f4967m, this.f4965j);
                if (c1729asM4091b != null) {
                    this.f4974u.m4127d();
                    return c1729asM4091b;
                }
                b bVarM4109c = m4109c(abstractC1728ar);
                HttpURLConnection httpURLConnection2 = bVarM4109c.f4985a;
                try {
                    this.f4974u.f5006b = SystemClock.elapsedRealtime();
                    httpURLConnection2.connect();
                    this.f4974u.m4119a();
                    byte[] bArrMo4056e = abstractC1728ar.mo4056e();
                    if (bArrMo4056e == null || bArrMo4056e.length == 0) {
                        Map<String, String> mapMo4055d = abstractC1728ar.mo4055d();
                        if (C1723am.f4937e != null) {
                            if (mapMo4055d != null) {
                                mapMo4055d.putAll(C1723am.f4937e);
                            } else {
                                mapMo4055d = C1723am.f4937e;
                            }
                        }
                        String strM4098a = m4098a(mapMo4055d);
                        if (!TextUtils.isEmpty(strM4098a)) {
                            bArrMo4056e = C1094l1.m2245n(strM4098a);
                        }
                    }
                    if (bArrMo4056e != null && bArrMo4056e.length > 0) {
                        try {
                            this.f4974u.f5006b = SystemClock.elapsedRealtime();
                            outputStream = httpURLConnection2.getOutputStream();
                            try {
                                dataOutputStream = new DataOutputStream(outputStream);
                                try {
                                    dataOutputStream.write(bArrMo4056e);
                                    dataOutputStream.close();
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    this.f4974u.m4124b();
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    this.f4974u.m4124b();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                dataOutputStream = null;
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            dataOutputStream = null;
                            th = th4;
                            outputStream = null;
                        }
                    }
                    C1729as c1729asM4096a = m4096a(bVarM4109c);
                    this.f4974u.m4123a(c1729asM4096a);
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Throwable th5) {
                        C1859t.m5312a(th5, "ht", "mPt");
                    }
                    this.f4974u.m4127d();
                    return c1729asM4096a;
                } catch (C0891d1 e2) {
                    e = e2;
                    if (!e.m1563i() && e.m1561g() != 10) {
                        this.f4974u.m4120a(e.m1561g());
                    }
                    C1859t.m5312a(e, "ht", "mPt");
                    throw e;
                } catch (InterruptedIOException unused) {
                    this.f4974u.m4125b(7101);
                    this.f4974u.m4120a(7);
                    throw new C0891d1("未知的错误");
                } catch (ConnectException e3) {
                    e = e3;
                    e.printStackTrace();
                    this.f4974u.m4125b(m4095a(e));
                    this.f4974u.m4120a(6);
                    throw new C0891d1("http连接失败 - ConnectionException");
                } catch (MalformedURLException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.f4974u.m4120a(8);
                    throw new C0891d1("url异常 - MalformedURLException");
                } catch (SocketException e5) {
                    e = e5;
                    e.printStackTrace();
                    this.f4974u.m4125b(m4095a(e));
                    this.f4974u.m4120a(6);
                    throw new C0891d1("socket 连接异常 - SocketException");
                } catch (SocketTimeoutException e6) {
                    e = e6;
                    e.printStackTrace();
                    this.f4974u.m4125b(m4095a(e));
                    this.f4974u.m4120a(2);
                    throw new C0891d1("socket 连接超时 - SocketTimeoutException");
                } catch (UnknownHostException e7) {
                    e = e7;
                    e.printStackTrace();
                    this.f4974u.m4120a(5);
                    throw new C0891d1("未知主机 - UnKnowHostException");
                } catch (SSLException e8) {
                    e = e8;
                    e.printStackTrace();
                    this.f4974u.m4125b(m4095a(e));
                    this.f4974u.m4120a(4);
                    throw new C0891d1("IO 操作异常 - IOException");
                } catch (ConnectTimeoutException e9) {
                    e = e9;
                    e.printStackTrace();
                    this.f4974u.m4125b(m4095a(e));
                    this.f4974u.m4120a(2);
                    throw new C0891d1("IO 操作异常 - IOException");
                } catch (IOException e10) {
                    e = e10;
                    e.printStackTrace();
                    this.f4974u.m4120a(7);
                    throw new C0891d1("IO 操作异常 - IOException");
                } catch (Throwable th6) {
                    th = th6;
                    C1859t.m5312a(th, "ht", "mPt");
                    this.f4974u.m4120a(9);
                    throw new C0891d1("未知的错误");
                }
            } catch (Throwable th7) {
                if (0 != 0) {
                    try {
                        httpURLConnection.disconnect();
                    } catch (Throwable th8) {
                        C1859t.m5312a(th8, "ht", "mPt");
                    }
                }
                this.f4974u.m4127d();
                throw th7;
            }
        } catch (C0891d1 e11) {
            e = e11;
        } catch (InterruptedIOException unused2) {
        } catch (ConnectException e12) {
            e = e12;
        } catch (MalformedURLException e13) {
            e = e13;
        } catch (SocketException e14) {
            e = e14;
        } catch (SocketTimeoutException e15) {
            e = e15;
        } catch (UnknownHostException e16) {
            e = e16;
        } catch (SSLException e17) {
            e = e17;
        } catch (ConnectTimeoutException e18) {
            e = e18;
        } catch (IOException e19) {
            e = e19;
        } catch (Throwable th9) {
            th = th9;
        }
    }
}
