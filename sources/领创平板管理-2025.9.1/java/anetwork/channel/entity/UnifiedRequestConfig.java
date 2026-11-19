package anetwork.channel.entity;

import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import anet.channel.util.Utils;
import anetwork.channel.aidl.ParcelableRequest;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.util.NetworkRequestSequence;
import anetwork.channel.util.RequestConstant;
import com.huawei.hem.CompilerOutline;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.g */
/* loaded from: classes.dex */
public class UnifiedRequestConfig {

    /* renamed from: b */
    public RequestStatistic f737b;

    /* renamed from: c */
    public final int f738c;

    /* renamed from: d */
    public final int f739d;

    /* renamed from: e */
    public final String f740e;

    /* renamed from: f */
    public final int f741f;

    /* renamed from: g */
    public ParcelableRequest f742g;

    /* renamed from: h */
    public Request f743h;

    /* renamed from: j */
    public int f745j;

    /* renamed from: k */
    public final boolean f746k;

    /* renamed from: i */
    public int f744i = 0;

    /* renamed from: a */
    public int f736a = 0;

    public UnifiedRequestConfig(ParcelableRequest parcelableRequest, int i, boolean z) {
        this.f743h = null;
        this.f745j = 0;
        if (parcelableRequest == null) {
            throw new IllegalArgumentException("request is null");
        }
        this.f742g = parcelableRequest;
        this.f741f = i;
        this.f746k = z;
        this.f740e = NetworkRequestSequence.m464a(parcelableRequest.seqNo, i == 0 ? "HTTP" : "DGRD");
        int i2 = parcelableRequest.connectTimeout;
        this.f738c = i2 <= 0 ? (int) (Utils.getNetworkTimeFactor() * 12000.0f) : i2;
        int i3 = parcelableRequest.readTimeout;
        this.f739d = i3 <= 0 ? (int) (Utils.getNetworkTimeFactor() * 12000.0f) : i3;
        int i4 = parcelableRequest.retryTime;
        this.f745j = (i4 < 0 || i4 > 3) ? 2 : i4;
        HttpUrl httpUrlM424l = m424l();
        RequestStatistic requestStatistic = new RequestStatistic(httpUrlM424l.host(), String.valueOf(parcelableRequest.bizId));
        this.f737b = requestStatistic;
        requestStatistic.url = httpUrlM424l.simpleUrlString();
        this.f743h = m422b(httpUrlM424l);
    }

    /* renamed from: b */
    private Request m422b(HttpUrl httpUrl) {
        Request.Builder requestStatistic = new Request.Builder().setUrl(httpUrl).setMethod(this.f742g.method).setBody(this.f742g.bodyEntry).setReadTimeout(this.f739d).setConnectTimeout(this.f738c).setRedirectEnable(this.f742g.allowRedirect).setRedirectTimes(this.f744i).setBizId(this.f742g.bizId).setSeq(this.f740e).setRequestStatistic(this.f737b);
        requestStatistic.setParams(this.f742g.params);
        String str = this.f742g.charset;
        if (str != null) {
            requestStatistic.setCharset(str);
        }
        requestStatistic.setHeaders(m423c(httpUrl));
        return requestStatistic.build();
    }

    /* renamed from: l */
    private HttpUrl m424l() {
        HttpUrl httpUrl = HttpUrl.parse(this.f742g.url);
        if (httpUrl == null) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("url is invalid. url=");
            sbM1765j.append(this.f742g.url);
            throw new IllegalArgumentException(sbM1765j.toString());
        }
        if (!NetworkConfigCenter.isSSLEnabled()) {
            ALog.m340i("anet.RequestConfig", "request ssl disabled.", this.f740e, new Object[0]);
            httpUrl.downgradeSchemeAndLock();
        } else if (RequestConstant.FALSE.equalsIgnoreCase(this.f742g.getExtProperty(RequestConstant.ENABLE_SCHEME_REPLACE))) {
            httpUrl.lockScheme();
        }
        return httpUrl;
    }

    /* renamed from: a */
    public Request m425a() {
        return this.f743h;
    }

    /* renamed from: c */
    public boolean m430c() {
        return this.f746k;
    }

    /* renamed from: d */
    public boolean m431d() {
        return this.f736a < this.f745j;
    }

    /* renamed from: e */
    public boolean m432e() {
        return NetworkConfigCenter.isHttpSessionEnable() && !RequestConstant.FALSE.equalsIgnoreCase(this.f742g.getExtProperty(RequestConstant.ENABLE_HTTP_DNS)) && (NetworkConfigCenter.isAllowHttpIpRetry() || this.f736a == 0);
    }

    /* renamed from: f */
    public HttpUrl m433f() {
        return this.f743h.getHttpUrl();
    }

    /* renamed from: g */
    public String m434g() {
        return this.f743h.getUrlString();
    }

    /* renamed from: h */
    public Map<String, String> m435h() {
        return this.f743h.getHeaders();
    }

    /* renamed from: i */
    public boolean m436i() {
        return !RequestConstant.FALSE.equalsIgnoreCase(this.f742g.getExtProperty(RequestConstant.ENABLE_COOKIE));
    }

    /* renamed from: j */
    public boolean m437j() {
        return RequestConstant.TRUE.equals(this.f742g.getExtProperty(RequestConstant.CHECK_CONTENT_LENGTH));
    }

    /* renamed from: k */
    public void m438k() {
        int i = this.f736a + 1;
        this.f736a = i;
        this.f737b.retryTimes = i;
    }

    /* renamed from: c */
    private Map<String, String> m423c(HttpUrl httpUrl) {
        String strHost = httpUrl.host();
        boolean z = !AmdcStringEncoding.m331a(strHost);
        if (strHost.length() > 2 && strHost.charAt(0) == '[' && strHost.charAt(strHost.length() - 1) == ']' && AmdcStringEncoding.m332b(strHost.substring(1, strHost.length() - 1))) {
            z = false;
        }
        HashMap map = new HashMap();
        Map<String, String> map2 = this.f742g.headers;
        if (map2 != null) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                String key = entry.getKey();
                if (!HttpConstant.HOST.equalsIgnoreCase(key) && !":host".equalsIgnoreCase(key)) {
                    boolean zEqualsIgnoreCase = RequestConstant.TRUE.equalsIgnoreCase(this.f742g.getExtProperty(RequestConstant.KEEP_CUSTOM_COOKIE));
                    if (!HttpConstant.COOKIE.equalsIgnoreCase(key) || zEqualsIgnoreCase) {
                        map.put(key, entry.getValue());
                    }
                } else if (!z) {
                    map.put(HttpConstant.HOST, entry.getValue());
                }
            }
        }
        return map;
    }

    /* renamed from: a */
    public void m427a(Request request) {
        this.f743h = request;
    }

    /* renamed from: a */
    public String m426a(String str) {
        return this.f742g.getExtProperty(str);
    }

    /* renamed from: a */
    public void m428a(HttpUrl httpUrl) {
        ALog.m340i("anet.RequestConfig", "redirect", this.f740e, "to url", httpUrl.toString());
        this.f744i++;
        this.f737b.url = httpUrl.simpleUrlString();
        this.f743h = m422b(httpUrl);
    }

    /* renamed from: b */
    public int m429b() {
        return (this.f745j + 1) * this.f739d;
    }
}
