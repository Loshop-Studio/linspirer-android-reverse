package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.huawei.hem.C0948f6;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {
    public static final HttpUrlConnectionFactory DEFAULT_CONNECTION_FACTORY = new DefaultHttpUrlConnectionFactory();
    public static final int MAXIMUM_REDIRECTS = 5;
    public static final String TAG = "HttpUrlFetcher";
    public final HttpUrlConnectionFactory connectionFactory;
    public final GlideUrl glideUrl;
    public volatile boolean isCancelled;
    public InputStream stream;
    public HttpURLConnection urlConnection;

    public static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
        public DefaultHttpUrlConnectionFactory() {
        }

        @Override // com.bumptech.glide.load.data.HttpUrlFetcher.HttpUrlConnectionFactory
        public HttpURLConnection build(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    public interface HttpUrlConnectionFactory {
        HttpURLConnection build(URL url);
    }

    public HttpUrlFetcher(GlideUrl glideUrl) {
        this(glideUrl, DEFAULT_CONNECTION_FACTORY);
    }

    private InputStream getStreamForSuccessfulRequest(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.stream = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sbM1765j = C0948f6.m1765j("Got non empty content encoding: ");
                sbM1765j.append(httpURLConnection.getContentEncoding());
                Log.d(TAG, sbM1765j.toString());
            }
            this.stream = httpURLConnection.getInputStream();
        }
        return this.stream;
    }

    private InputStream loadDataWithRedirects(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i >= 5) {
            throw new IOException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new IOException("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.urlConnection = this.connectionFactory.build(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.urlConnection.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.urlConnection.setConnectTimeout(2500);
        this.urlConnection.setReadTimeout(2500);
        this.urlConnection.setUseCaches(false);
        this.urlConnection.setDoInput(true);
        this.urlConnection.connect();
        if (this.isCancelled) {
            return null;
        }
        int responseCode = this.urlConnection.getResponseCode();
        int i2 = responseCode / 100;
        if (i2 == 2) {
            return getStreamForSuccessfulRequest(this.urlConnection);
        }
        if (i2 == 3) {
            String headerField = this.urlConnection.getHeaderField(HttpConstant.LOCATION);
            if (TextUtils.isEmpty(headerField)) {
                throw new IOException("Received empty or null redirect url");
            }
            return loadDataWithRedirects(new URL(url, headerField), i + 1, url, map);
        }
        if (responseCode == -1) {
            throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
        }
        StringBuilder sbM1766k = C0948f6.m1766k("Request failed ", responseCode, ": ");
        sbM1766k.append(this.urlConnection.getResponseMessage());
        throw new IOException(sbM1766k.toString());
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.isCancelled = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() throws IOException {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public String getId() {
        return this.glideUrl.getCacheKey();
    }

    public HttpUrlFetcher(GlideUrl glideUrl, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.glideUrl = glideUrl;
        this.connectionFactory = httpUrlConnectionFactory;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.data.DataFetcher
    public InputStream loadData(Priority priority) {
        return loadDataWithRedirects(this.glideUrl.toURL(), 0, null, this.glideUrl.getHeaders());
    }
}
