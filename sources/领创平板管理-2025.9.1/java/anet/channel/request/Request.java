package anet.channel.request;

import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.statist.RequestStatistic;
import anet.channel.strategy.utils.C0413c;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import com.huawei.hem.CompilerOutline;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONException;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class Request {
    public static final String DEFAULT_CHARSET = "UTF-8";

    /* renamed from: a */
    public final RequestStatistic f328a;

    /* renamed from: b */
    public HttpUrl f329b;

    /* renamed from: c */
    public HttpUrl f330c;

    /* renamed from: d */
    public HttpUrl f331d;

    /* renamed from: e */
    public URL f332e;

    /* renamed from: f */
    public String f333f;

    /* renamed from: g */
    public Map<String, String> f334g;

    /* renamed from: h */
    public Map<String, String> f335h;

    /* renamed from: i */
    public String f336i;

    /* renamed from: j */
    public BodyEntry f337j;

    /* renamed from: k */
    public boolean f338k;

    /* renamed from: l */
    public String f339l;

    /* renamed from: m */
    public String f340m;

    /* renamed from: n */
    public int f341n;

    /* renamed from: o */
    public int f342o;

    /* renamed from: p */
    public int f343p;

    /* renamed from: q */
    public HostnameVerifier f344q;

    /* renamed from: r */
    public SSLSocketFactory f345r;

    /* renamed from: s */
    public boolean f346s;

    /* compiled from: Taobao */
    public static class Builder {

        /* renamed from: a */
        public HttpUrl f347a;

        /* renamed from: b */
        public HttpUrl f348b;

        /* renamed from: e */
        public Map<String, String> f351e;

        /* renamed from: f */
        public String f352f;

        /* renamed from: g */
        public BodyEntry f353g;

        /* renamed from: j */
        public HostnameVerifier f356j;

        /* renamed from: k */
        public SSLSocketFactory f357k;

        /* renamed from: l */
        public String f358l;

        /* renamed from: m */
        public String f359m;

        /* renamed from: q */
        public boolean f363q;

        /* renamed from: c */
        public String f349c = "GET";

        /* renamed from: d */
        public Map<String, String> f350d = new HashMap();

        /* renamed from: h */
        public boolean f354h = true;

        /* renamed from: i */
        public int f355i = 0;

        /* renamed from: n */
        public int f360n = 10000;

        /* renamed from: o */
        public int f361o = 10000;

        /* renamed from: p */
        public RequestStatistic f362p = null;

        public Builder addHeader(String str, String str2) {
            this.f350d.put(str, str2);
            return this;
        }

        public Builder addParam(String str, String str2) {
            if (this.f351e == null) {
                this.f351e = new HashMap();
            }
            this.f351e.put(str, str2);
            this.f348b = null;
            return this;
        }

        public Request build() {
            if (this.f353g == null && this.f351e == null && Method.m201a(this.f349c)) {
                ALog.m339e("awcn.Request", CompilerOutline.m1762g(CompilerOutline.m1765j("method "), this.f349c, " must have a request body"), null, new Object[0]);
            }
            if (this.f353g != null && !Method.m202b(this.f349c)) {
                ALog.m339e("awcn.Request", CompilerOutline.m1762g(CompilerOutline.m1765j("method "), this.f349c, " should not have a request body"), null, new Object[0]);
                this.f353g = null;
            }
            BodyEntry bodyEntry = this.f353g;
            if (bodyEntry != null && bodyEntry.getContentType() != null) {
                addHeader(HttpConstant.CONTENT_TYPE, this.f353g.getContentType());
            }
            return new Request(this);
        }

        public Builder setAllowRequestInBg(boolean z) {
            this.f363q = z;
            return this;
        }

        public Builder setBizId(String str) {
            this.f358l = str;
            return this;
        }

        public Builder setBody(BodyEntry bodyEntry) {
            this.f353g = bodyEntry;
            return this;
        }

        public Builder setCharset(String str) {
            this.f352f = str;
            this.f348b = null;
            return this;
        }

        public Builder setConnectTimeout(int i) {
            if (i > 0) {
                this.f360n = i;
            }
            return this;
        }

        public Builder setHeaders(Map<String, String> map) {
            this.f350d.clear();
            if (map != null) {
                this.f350d.putAll(map);
            }
            return this;
        }

        public Builder setHostnameVerifier(HostnameVerifier hostnameVerifier) {
            this.f356j = hostnameVerifier;
            return this;
        }

        public Builder setMethod(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("method is null or empty");
            }
            if ("GET".equalsIgnoreCase(str)) {
                this.f349c = "GET";
            } else if ("POST".equalsIgnoreCase(str)) {
                this.f349c = "POST";
            } else if (Method.OPTION.equalsIgnoreCase(str)) {
                this.f349c = Method.OPTION;
            } else if (Method.HEAD.equalsIgnoreCase(str)) {
                this.f349c = Method.HEAD;
            } else if (Method.PUT.equalsIgnoreCase(str)) {
                this.f349c = Method.PUT;
            } else if (Method.DELETE.equalsIgnoreCase(str)) {
                this.f349c = Method.DELETE;
            } else {
                this.f349c = "GET";
            }
            return this;
        }

        public Builder setParams(Map<String, String> map) {
            this.f351e = map;
            this.f348b = null;
            return this;
        }

        public Builder setReadTimeout(int i) {
            if (i > 0) {
                this.f361o = i;
            }
            return this;
        }

        public Builder setRedirectEnable(boolean z) {
            this.f354h = z;
            return this;
        }

        public Builder setRedirectTimes(int i) {
            this.f355i = i;
            return this;
        }

        public Builder setRequestStatistic(RequestStatistic requestStatistic) {
            this.f362p = requestStatistic;
            return this;
        }

        public Builder setSeq(String str) {
            this.f359m = str;
            return this;
        }

        public Builder setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.f357k = sSLSocketFactory;
            return this;
        }

        public Builder setUrl(HttpUrl httpUrl) {
            this.f347a = httpUrl;
            this.f348b = null;
            return this;
        }

        public Builder setUrl(String str) {
            HttpUrl httpUrl = HttpUrl.parse(str);
            this.f347a = httpUrl;
            this.f348b = null;
            if (httpUrl != null) {
                return this;
            }
            throw new IllegalArgumentException(CompilerOutline.m1760e("toURL is invalid! toURL = ", str));
        }
    }

    /* compiled from: Taobao */
    public static final class Method {
        public static final String DELETE = "DELETE";
        public static final String GET = "GET";
        public static final String HEAD = "HEAD";
        public static final String OPTION = "OPTIONS";
        public static final String POST = "POST";
        public static final String PUT = "PUT";

        /* renamed from: a */
        public static boolean m201a(String str) {
            return str.equals("POST") || str.equals(PUT);
        }

        /* renamed from: b */
        public static boolean m202b(String str) {
            return m201a(str) || str.equals(DELETE) || str.equals(OPTION);
        }
    }

    /* renamed from: a */
    private Map<String, String> m165a() {
        return AwcnConfig.isCookieHeaderRedundantFix() ? new HashMap(this.f334g) : this.f334g;
    }

    /* renamed from: b */
    private void m166b() {
        String strM330a = C0413c.m330a(this.f335h, getContentEncoding());
        if (!TextUtils.isEmpty(strM330a)) {
            if (Method.m201a(this.f333f) && this.f337j == null) {
                try {
                    this.f337j = new ByteArrayEntry(strM330a.getBytes(getContentEncoding()));
                    this.f334g.put(HttpConstant.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=" + getContentEncoding());
                } catch (UnsupportedEncodingException unused) {
                }
            } else {
                String strUrlString = this.f329b.urlString();
                StringBuilder sb = new StringBuilder(strUrlString);
                if (sb.indexOf("?") == -1) {
                    sb.append('?');
                } else if (strUrlString.charAt(strUrlString.length() - 1) != '&') {
                    sb.append('&');
                }
                sb.append(strM330a);
                HttpUrl httpUrl = HttpUrl.parse(sb.toString());
                if (httpUrl != null) {
                    this.f330c = httpUrl;
                }
            }
        }
        if (this.f330c == null) {
            this.f330c = this.f329b;
        }
    }

    public boolean containsBody() {
        return this.f337j != null;
    }

    public String getBizId() {
        return this.f339l;
    }

    public byte[] getBodyBytes() {
        if (this.f337j == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(128);
        try {
            postBody(byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public int getConnectTimeout() {
        return this.f342o;
    }

    public String getContentEncoding() {
        String str = this.f336i;
        return str != null ? str : "UTF-8";
    }

    public Map<String, String> getHeaders() {
        return Collections.unmodifiableMap(this.f334g);
    }

    public String getHost() {
        return this.f330c.host();
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f344q;
    }

    public HttpUrl getHttpUrl() {
        return this.f330c;
    }

    public String getMethod() {
        return this.f333f;
    }

    public int getReadTimeout() {
        return this.f343p;
    }

    public int getRedirectTimes() {
        return this.f341n;
    }

    public String getSeq() {
        return this.f340m;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f345r;
    }

    public URL getUrl() {
        if (this.f332e == null) {
            HttpUrl httpUrl = this.f331d;
            if (httpUrl == null) {
                httpUrl = this.f330c;
            }
            this.f332e = httpUrl.toURL();
        }
        return this.f332e;
    }

    public String getUrlString() {
        return this.f330c.urlString();
    }

    public boolean isAllowRequestInBg() {
        return this.f346s;
    }

    public boolean isRedirectEnable() {
        return this.f338k;
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.f349c = this.f333f;
        builder.f350d = m165a();
        builder.f351e = this.f335h;
        builder.f353g = this.f337j;
        builder.f352f = this.f336i;
        builder.f354h = this.f338k;
        builder.f355i = this.f341n;
        builder.f356j = this.f344q;
        builder.f357k = this.f345r;
        builder.f347a = this.f329b;
        builder.f348b = this.f330c;
        builder.f358l = this.f339l;
        builder.f359m = this.f340m;
        builder.f360n = this.f342o;
        builder.f361o = this.f343p;
        builder.f362p = this.f328a;
        builder.f363q = this.f346s;
        return builder;
    }

    public int postBody(OutputStream outputStream) {
        BodyEntry bodyEntry = this.f337j;
        if (bodyEntry != null) {
            return bodyEntry.writeTo(outputStream);
        }
        return 0;
    }

    public void setDnsOptimize(String str, int i) throws JSONException {
        if (str != null) {
            if (this.f331d == null) {
                this.f331d = new HttpUrl(this.f330c);
            }
            this.f331d.replaceIpAndPort(str, i);
        } else {
            this.f331d = null;
        }
        this.f332e = null;
        this.f328a.setIPAndPort(str, i);
    }

    public void setUrlScheme(boolean z) {
        if (this.f331d == null) {
            this.f331d = new HttpUrl(this.f330c);
        }
        this.f331d.setScheme(z ? HttpConstant.HTTPS : HttpConstant.HTTP);
        this.f332e = null;
    }

    public Request(Builder builder) {
        this.f333f = "GET";
        this.f338k = true;
        this.f341n = 0;
        this.f342o = 10000;
        this.f343p = 10000;
        this.f333f = builder.f349c;
        this.f334g = builder.f350d;
        this.f335h = builder.f351e;
        this.f337j = builder.f353g;
        this.f336i = builder.f352f;
        this.f338k = builder.f354h;
        this.f341n = builder.f355i;
        this.f344q = builder.f356j;
        this.f345r = builder.f357k;
        this.f339l = builder.f358l;
        this.f340m = builder.f359m;
        this.f342o = builder.f360n;
        this.f343p = builder.f361o;
        this.f329b = builder.f347a;
        HttpUrl httpUrl = builder.f348b;
        this.f330c = httpUrl;
        if (httpUrl == null) {
            m166b();
        }
        this.f328a = builder.f362p != null ? builder.f362p : new RequestStatistic(getHost(), this.f339l);
        this.f346s = builder.f363q;
    }
}
