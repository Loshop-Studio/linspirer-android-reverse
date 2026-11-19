package com.huawei.updatesdk.p048b.p054d;

import android.text.TextUtils;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C0979gb;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: com.huawei.updatesdk.b.d.d */
/* loaded from: classes.dex */
public class C1625d {

    /* renamed from: a */
    public static volatile C1625d f4700a;

    /* renamed from: a */
    public static synchronized C1625d m3718a() {
        if (f4700a == null) {
            f4700a = new C1625d();
        }
        return f4700a;
    }

    /* renamed from: b */
    public static String m3719b() {
        String strM3593b = C1598a.m3591c().m3593b();
        if (TextUtils.isEmpty(strM3593b)) {
            return "";
        }
        String strM1760e = C0948f6.m1760e(strM3593b, "/updatesdk");
        File file = new File(strM1760e);
        return (file.exists() || file.mkdirs()) ? strM1760e : "";
    }

    /* renamed from: a */
    public HttpURLConnection m3720a(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(7000);
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Accept-Encoding", LazyHeaders.Builder.DEFAULT_ENCODING);
        httpURLConnection.setInstanceFollowRedirects(true);
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            httpsURLConnection.setSSLSocketFactory(C0979gb.m1856b(C1598a.m3591c().m3592a()));
            httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        }
        return httpURLConnection;
    }
}
