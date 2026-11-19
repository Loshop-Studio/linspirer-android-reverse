package com.p061ta.p062a.p064b;

import android.text.TextUtils;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* renamed from: com.ta.a.b.d */
/* loaded from: classes.dex */
public class UtHostnameVerifier implements HostnameVerifier {

    /* renamed from: b */
    public String f5991b;

    public UtHostnameVerifier(String str) {
        this.f5991b = str;
    }

    public boolean equals(Object obj) {
        if (TextUtils.isEmpty(this.f5991b) || !(obj instanceof UtHostnameVerifier)) {
            return false;
        }
        String str = ((UtHostnameVerifier) obj).f5991b;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f5991b.equals(str);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return HttpsURLConnection.getDefaultHostnameVerifier().verify(this.f5991b, sSLSession);
    }
}
