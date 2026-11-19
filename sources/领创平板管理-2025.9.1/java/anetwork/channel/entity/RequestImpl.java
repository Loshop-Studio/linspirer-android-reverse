package anetwork.channel.entity;

import android.text.TextUtils;
import anet.channel.request.BodyEntry;
import anet.channel.util.ALog;
import anetwork.channel.Header;
import anetwork.channel.IBodyHandler;
import anetwork.channel.Param;
import anetwork.channel.Request;
import anetwork.channel.util.RequestConstant;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class RequestImpl implements Request {

    /* renamed from: a */
    @Deprecated
    public URI f702a;

    /* renamed from: b */
    @Deprecated
    public URL f703b;

    /* renamed from: c */
    public String f704c;

    /* renamed from: e */
    public List<Header> f706e;

    /* renamed from: g */
    public List<Param> f708g;

    /* renamed from: k */
    public int f712k;

    /* renamed from: l */
    public int f713l;

    /* renamed from: m */
    public String f714m;

    /* renamed from: n */
    public String f715n;

    /* renamed from: o */
    public Map<String, String> f716o;

    /* renamed from: d */
    public boolean f705d = true;

    /* renamed from: f */
    public String f707f = "GET";

    /* renamed from: h */
    public int f709h = 2;

    /* renamed from: i */
    public String f710i = "utf-8";

    /* renamed from: j */
    public BodyEntry f711j = null;

    public RequestImpl() {
    }

    @Override // anetwork.channel.Request
    public void addHeader(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        if (this.f706e == null) {
            this.f706e = new ArrayList();
        }
        this.f706e.add(new BasicHeader(str, str2));
    }

    @Override // anetwork.channel.Request
    public String getBizId() {
        return this.f714m;
    }

    @Override // anetwork.channel.Request
    public BodyEntry getBodyEntry() {
        return this.f711j;
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public IBodyHandler getBodyHandler() {
        return null;
    }

    @Override // anetwork.channel.Request
    public String getCharset() {
        return this.f710i;
    }

    @Override // anetwork.channel.Request
    public int getConnectTimeout() {
        return this.f712k;
    }

    @Override // anetwork.channel.Request
    public Map<String, String> getExtProperties() {
        return this.f716o;
    }

    @Override // anetwork.channel.Request
    public String getExtProperty(String str) {
        Map<String, String> map = this.f716o;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // anetwork.channel.Request
    public boolean getFollowRedirects() {
        return this.f705d;
    }

    @Override // anetwork.channel.Request
    public List<Header> getHeaders() {
        return this.f706e;
    }

    @Override // anetwork.channel.Request
    public String getMethod() {
        return this.f707f;
    }

    @Override // anetwork.channel.Request
    public List<Param> getParams() {
        return this.f708g;
    }

    @Override // anetwork.channel.Request
    public int getReadTimeout() {
        return this.f713l;
    }

    @Override // anetwork.channel.Request
    public int getRetryTime() {
        return this.f709h;
    }

    @Override // anetwork.channel.Request
    public String getSeqNo() {
        return this.f715n;
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public URI getURI() {
        URI uri = this.f702a;
        if (uri != null) {
            return uri;
        }
        if (this.f704c != null) {
            try {
                this.f702a = new URI(this.f704c);
            } catch (Exception e) {
                ALog.m338e("anet.RequestImpl", "uri error", this.f715n, e, new Object[0]);
            }
        }
        return this.f702a;
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public URL getURL() {
        URL url = this.f703b;
        if (url != null) {
            return url;
        }
        if (this.f704c != null) {
            try {
                this.f703b = new URL(this.f704c);
            } catch (Exception e) {
                ALog.m338e("anet.RequestImpl", "url error", this.f715n, e, new Object[0]);
            }
        }
        return this.f703b;
    }

    @Override // anetwork.channel.Request
    public String getUrlString() {
        return this.f704c;
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public boolean isCookieEnabled() {
        return !RequestConstant.FALSE.equals(getExtProperty(RequestConstant.ENABLE_COOKIE));
    }

    @Override // anetwork.channel.Request
    public void removeHeader(Header header) {
        List<Header> list = this.f706e;
        if (list != null) {
            list.remove(header);
        }
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public void setBizId(int i) {
        this.f714m = String.valueOf(i);
    }

    @Override // anetwork.channel.Request
    public void setBodyEntry(BodyEntry bodyEntry) {
        this.f711j = bodyEntry;
    }

    @Override // anetwork.channel.Request
    public void setBodyHandler(IBodyHandler iBodyHandler) {
        this.f711j = new BodyHandlerEntry(iBodyHandler);
    }

    @Override // anetwork.channel.Request
    public void setCharset(String str) {
        this.f710i = str;
    }

    @Override // anetwork.channel.Request
    public void setConnectTimeout(int i) {
        this.f712k = i;
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public void setCookieEnabled(boolean z) {
        setExtProperty(RequestConstant.ENABLE_COOKIE, z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    @Override // anetwork.channel.Request
    public void setExtProperty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f716o == null) {
            this.f716o = new HashMap();
        }
        this.f716o.put(str, str2);
    }

    @Override // anetwork.channel.Request
    public void setFollowRedirects(boolean z) {
        this.f705d = z;
    }

    @Override // anetwork.channel.Request
    public void setHeader(Header header) {
        if (header == null) {
            return;
        }
        if (this.f706e == null) {
            this.f706e = new ArrayList();
        }
        int i = 0;
        int size = this.f706e.size();
        while (true) {
            if (i >= size) {
                break;
            }
            if (header.getName().equalsIgnoreCase(this.f706e.get(i).getName())) {
                this.f706e.set(i, header);
                break;
            }
            i++;
        }
        if (i < this.f706e.size()) {
            this.f706e.add(header);
        }
    }

    @Override // anetwork.channel.Request
    public void setHeaders(List<Header> list) {
        this.f706e = list;
    }

    @Override // anetwork.channel.Request
    public void setMethod(String str) {
        this.f707f = str;
    }

    @Override // anetwork.channel.Request
    public void setParams(List<Param> list) {
        this.f708g = list;
    }

    @Override // anetwork.channel.Request
    public void setReadTimeout(int i) {
        this.f713l = i;
    }

    @Override // anetwork.channel.Request
    public void setRetryTime(int i) {
        this.f709h = i;
    }

    @Override // anetwork.channel.Request
    public void setSeqNo(String str) {
        this.f715n = str;
    }

    @Deprecated
    public void setUrL(URL url) {
        this.f703b = url;
        this.f704c = url.toString();
    }

    @Override // anetwork.channel.Request
    @Deprecated
    public void setUri(URI uri) {
        this.f702a = uri;
    }

    @Override // anetwork.channel.Request
    public Header[] getHeaders(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.f706e == null) {
            return null;
        }
        for (int i = 0; i < this.f706e.size(); i++) {
            if (this.f706e.get(i) != null && this.f706e.get(i).getName() != null && this.f706e.get(i).getName().equalsIgnoreCase(str)) {
                arrayList.add(this.f706e.get(i));
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        Header[] headerArr = new Header[arrayList.size()];
        arrayList.toArray(headerArr);
        return headerArr;
    }

    @Override // anetwork.channel.Request
    public void setBizId(String str) {
        this.f714m = str;
    }

    @Deprecated
    public RequestImpl(URI uri) {
        this.f702a = uri;
        this.f704c = uri.toString();
    }

    @Deprecated
    public RequestImpl(URL url) {
        this.f703b = url;
        this.f704c = url.toString();
    }

    public RequestImpl(String str) {
        this.f704c = str;
    }
}
