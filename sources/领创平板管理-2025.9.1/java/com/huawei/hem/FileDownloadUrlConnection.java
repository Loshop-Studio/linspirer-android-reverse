package com.huawei.hem;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* compiled from: FileDownloadUrlConnection.java */
/* renamed from: com.huawei.hem.hf */
/* loaded from: classes.dex */
public class FileDownloadUrlConnection implements FileDownloadConnection {

    /* renamed from: a */
    public URLConnection f2865a;

    /* compiled from: FileDownloadUrlConnection.java */
    /* renamed from: com.huawei.hem.hf$a */
    public static class a {
    }

    /* compiled from: FileDownloadUrlConnection.java */
    /* renamed from: com.huawei.hem.hf$b */
    public static class b implements InterfaceC0881ch {

        /* renamed from: a */
        public final a f2866a = null;
    }

    public FileDownloadUrlConnection(String str) {
        this.f2865a = new URL(str).openConnection();
    }

    /* renamed from: a */
    public void m1948a() throws IOException {
        try {
            this.f2865a.getInputStream().close();
        } catch (IOException unused) {
        }
    }

    /* renamed from: b */
    public int m1949b() {
        URLConnection uRLConnection = this.f2865a;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    /* renamed from: c */
    public Map<String, List<String>> m1950c() {
        return this.f2865a.getHeaderFields();
    }
}
