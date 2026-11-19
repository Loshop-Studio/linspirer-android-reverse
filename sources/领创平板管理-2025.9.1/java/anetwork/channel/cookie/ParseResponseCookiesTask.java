package anetwork.channel.cookie;

import anet.channel.util.ALog;
import java.net.HttpCookie;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.cookie.b */
/* loaded from: classes.dex */
public final class ParseResponseCookiesTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f685a;

    public ParseResponseCookiesTask(String str) {
        this.f685a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CookieManager.f678d == null) {
            return;
        }
        try {
            for (HttpCookie httpCookie : HttpCookie.parse(this.f685a)) {
                if (httpCookie.getName().equals(CookieManager.f678d.f680a)) {
                    CookieManager.f678d.f681b = httpCookie.toString();
                    CookieManager.f678d.f683d = httpCookie.getDomain();
                    CookieManager.f678d.f682c = this.f685a;
                    CookieManager.f678d.m398a();
                    return;
                }
            }
        } catch (Exception e) {
            ALog.m338e(CookieManager.TAG, "cookieMonitorSave error.", null, e, new Object[0]);
        }
    }
}
