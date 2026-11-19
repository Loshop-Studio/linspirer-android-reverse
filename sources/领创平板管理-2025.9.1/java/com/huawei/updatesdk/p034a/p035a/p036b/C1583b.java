package com.huawei.updatesdk.p034a.p035a.p036b;

import android.content.Context;
import com.huawei.hem.C0979gb;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: com.huawei.updatesdk.a.a.b.b */
/* loaded from: classes.dex */
public class C1583b {

    /* renamed from: a */
    public HttpURLConnection f4618a = null;

    /* renamed from: com.huawei.updatesdk.a.a.b.b$a */
    public static class a {

        /* renamed from: a */
        public String f4619a;

        /* renamed from: b */
        public int f4620b;

        /* renamed from: a */
        public int m3512a() {
            return this.f4620b;
        }

        /* renamed from: b */
        public String m3513b() {
            return this.f4619a;
        }
    }

    /* renamed from: a */
    private HttpURLConnection m3506a(String str, Context context) throws IOException {
        URL url = new URL(str);
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpsURLConnection)) {
            if (uRLConnectionOpenConnection instanceof HttpURLConnection) {
                return (HttpURLConnection) url.openConnection();
            }
            return null;
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
        httpsURLConnection.setSSLSocketFactory(C0979gb.m1856b(context));
        httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        return httpsURLConnection;
    }

    /* renamed from: a */
    private byte[] m3507a(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        dataOutputStream = new DataOutputStream(new GZIPOutputStream(byteArrayOutputStream, bArr.length));
                    } catch (IOException e) {
                        e = e;
                    }
                } catch (IOException e2) {
                    C1584a.m3515a("HttpsUtil", "gzip error!", e2);
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e3) {
            e = e3;
            byteArrayOutputStream = null;
        }
        try {
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (IOException e4) {
            e = e4;
            dataOutputStream2 = dataOutputStream;
            C1584a.m3515a("HttpsUtil", "gzip error!", e);
            if (dataOutputStream2 != null) {
                dataOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 != null) {
                try {
                    dataOutputStream2.close();
                } catch (IOException e5) {
                    C1584a.m3515a("HttpsUtil", "gzip error!", e5);
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.updatesdk.p034a.p035a.p036b.C1583b.a m3508a(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, android.content.Context r8) throws java.lang.Throwable {
        /*
            r3 = this;
            com.huawei.updatesdk.a.a.b.b$a r0 = new com.huawei.updatesdk.a.a.b.b$a
            r0.<init>()
            r1 = 0
            java.net.HttpURLConnection r4 = r3.m3506a(r4, r8)     // Catch: java.lang.Throwable -> Lb6
            if (r4 != 0) goto L18
            if (r4 == 0) goto L11
            r4.disconnect()
        L11:
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3526a(r1)
        L14:
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3526a(r1)
            return r0
        L18:
            r3.f4618a = r4     // Catch: java.lang.Throwable -> Lb4
            r8 = 1
            r4.setDoInput(r8)     // Catch: java.lang.Throwable -> Lb4
            r4.setDoOutput(r8)     // Catch: java.lang.Throwable -> Lb4
            r8 = 0
            r4.setUseCaches(r8)     // Catch: java.lang.Throwable -> Lb4
            r8 = 5000(0x1388, float:7.006E-42)
            r4.setConnectTimeout(r8)     // Catch: java.lang.Throwable -> Lb4
            r8 = 10000(0x2710, float:1.4013E-41)
            r4.setReadTimeout(r8)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r8 = "POST"
            r4.setRequestMethod(r8)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r8 = "Content-Type"
            java.lang.String r2 = "application/x-gzip"
            r4.setRequestProperty(r8, r2)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r8 = "Content-Encoding"
            java.lang.String r2 = "gzip"
            r4.setRequestProperty(r8, r2)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r8 = "Connection"
            java.lang.String r2 = "Keep-Alive"
            r4.setRequestProperty(r8, r2)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r8 = "User-Agent"
            r4.setRequestProperty(r8, r7)     // Catch: java.lang.Throwable -> Lb4
            java.io.DataOutputStream r7 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> Lb4
            java.io.OutputStream r8 = r4.getOutputStream()     // Catch: java.lang.Throwable -> Lb4
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lb4
            byte[] r5 = r5.getBytes(r6)     // Catch: java.lang.Throwable -> L7a
            byte[] r5 = r3.m3507a(r5)     // Catch: java.lang.Throwable -> L7a
            r7.write(r5)     // Catch: java.lang.Throwable -> L7a
            r7.flush()     // Catch: java.lang.Throwable -> L7a
            int r5 = r4.getResponseCode()     // Catch: java.lang.Throwable -> L7a
            com.huawei.updatesdk.p034a.p035a.p036b.C1583b.a.m3510a(r0, r5)     // Catch: java.lang.Throwable -> L7a
            r6 = 200(0xc8, float:2.8E-43)
            if (r5 != r6) goto L7c
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L7a
            java.io.InputStream r6 = r4.getInputStream()     // Catch: java.lang.Throwable -> L7a
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7a
            goto L85
        L7a:
            r5 = move-exception
            goto Lba
        L7c:
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L7a
            java.io.InputStream r6 = r4.getErrorStream()     // Catch: java.lang.Throwable -> L7a
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7a
        L85:
            r1 = r5
            com.huawei.updatesdk.a.a.d.b r5 = new com.huawei.updatesdk.a.a.d.b     // Catch: java.lang.Throwable -> L7a
            r5.<init>()     // Catch: java.lang.Throwable -> L7a
            com.huawei.updatesdk.a.a.b.a r6 = com.huawei.updatesdk.p034a.p035a.p036b.C1582a.m3503b()     // Catch: java.lang.Throwable -> L7a
            byte[] r6 = r6.m3505a()     // Catch: java.lang.Throwable -> L7a
        L93:
            int r8 = r1.read(r6)     // Catch: java.lang.Throwable -> L7a
            r2 = -1
            if (r8 == r2) goto L9e
            r5.m3523a(r6, r8)     // Catch: java.lang.Throwable -> L7a
            goto L93
        L9e:
            com.huawei.updatesdk.a.a.b.a r8 = com.huawei.updatesdk.p034a.p035a.p036b.C1582a.m3503b()     // Catch: java.lang.Throwable -> L7a
            r8.m3504a(r6)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r5 = r5.m3522a()     // Catch: java.lang.Throwable -> L7a
            com.huawei.updatesdk.p034a.p035a.p036b.C1583b.a.m3511a(r0, r5)     // Catch: java.lang.Throwable -> L7a
            r4.disconnect()
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3526a(r7)
            goto L14
        Lb4:
            r5 = move-exception
            goto Lb9
        Lb6:
            r4 = move-exception
            r5 = r4
            r4 = r1
        Lb9:
            r7 = r1
        Lba:
            if (r4 == 0) goto Lbf
            r4.disconnect()
        Lbf:
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3526a(r7)
            com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1588d.m3526a(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p034a.p035a.p036b.C1583b.m3508a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, android.content.Context):com.huawei.updatesdk.a.a.b.b$a");
    }

    /* renamed from: a */
    public void m3509a() {
        HttpURLConnection httpURLConnection = this.f4618a;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
