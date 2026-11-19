package com.huawei.hms.availableupdate;

import android.content.Context;
import com.alibaba.sdk.android.tbrest.rest.RestConstants;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.SecureSocketFactoryAdapter;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.net.ssl.HttpsURLConnection;

/* compiled from: HttpRequestHelper.java */
/* renamed from: com.huawei.hms.availableupdate.j */
/* loaded from: classes.dex */
public class HttpRequestHelper implements IHttpRequestHelper {

    /* renamed from: a */
    public HttpURLConnection f4483a;

    /* renamed from: b */
    public volatile int f4484b = -1;

    @Override // com.huawei.hms.availableupdate.InterfaceC1506k
    /* renamed from: a */
    public void mo3319a() {
        this.f4484b = 1;
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1506k
    public void close() {
        this.f4484b = -1;
        HttpURLConnection httpURLConnection = this.f4483a;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1506k
    /* renamed from: a */
    public int mo3318a(String str, OutputStream outputStream, int i, int i2, Context context) throws IOException {
        InputStream inputStream = null;
        try {
            m3321a(str, context);
            this.f4483a.setRequestMethod("GET");
            if (i > 0) {
                this.f4483a.addRequestProperty("Range", "bytes=" + i + "-" + i2);
            }
            int responseCode = this.f4483a.getResponseCode();
            if ((i > 0 && responseCode == 206) || (i <= 0 && responseCode == 200)) {
                inputStream = this.f4483a.getInputStream();
                m3320a(new BufferedInputStream(inputStream, 4096), outputStream);
                outputStream.flush();
            }
            return responseCode;
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    /* renamed from: a */
    public final void m3321a(String str, Context context) throws IOException {
        if (this.f4484b == 0) {
            HMSLog.m3461e("HttpRequestHelper", "Not allowed to repeat open http(s) connection.");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.f4483a = httpURLConnection;
        if (httpURLConnection instanceof HttpsURLConnection) {
            try {
                SecureSocketFactoryAdapter c0979gbM1856b = SecureSocketFactoryAdapter.m1856b(context);
                if (c0979gbM1856b != null) {
                    ((HttpsURLConnection) this.f4483a).setSSLSocketFactory(c0979gbM1856b);
                }
                ((HttpsURLConnection) this.f4483a).setSSLSocketFactory(c0979gbM1856b);
            } catch (IOException | IllegalAccessException | IllegalArgumentException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Failed to new TLSSocketFactory instance.");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e("HttpRequestHelper", sbM1765j.toString());
                throw new IOException("Failed to create SSLSocketFactory.");
            }
        }
        this.f4483a.setConnectTimeout(RestConstants.G_MAX_READ_CONNECTION_STREAM_TIME_OUT);
        this.f4483a.setReadTimeout(RestConstants.G_MAX_READ_CONNECTION_STREAM_TIME_OUT);
        this.f4483a.setDoInput(true);
        this.f4483a.setDoOutput(true);
        this.f4483a.setUseCaches(false);
        this.f4483a.setInstanceFollowRedirects(true);
        this.f4484b = 0;
    }

    /* renamed from: a */
    public final void m3320a(InputStream inputStream, OutputStream outputStream) throws IOException, CanceledException {
        byte[] bArr = new byte[4096];
        do {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        } while (this.f4484b != 1);
        throw new CanceledException("HTTP(s) request was canceled.");
    }
}
