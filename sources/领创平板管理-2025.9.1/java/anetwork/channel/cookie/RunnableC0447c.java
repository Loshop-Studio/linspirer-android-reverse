package anetwork.channel.cookie;

import android.text.TextUtils;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.CookieMonitorStat;
import anet.channel.util.ALog;
import anet.channel.util.HttpUrl;
import com.huawei.hms.framework.common.ContainerUtils;
import java.net.HttpCookie;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.cookie.c */
/* loaded from: classes.dex */
public final class RunnableC0447c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f686a;

    /* renamed from: b */
    public final /* synthetic */ String f687b;

    public RunnableC0447c(String str, String str2) {
        this.f686a = str;
        this.f687b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CookieManager.f678d == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(CookieManager.f678d.f680a) || !HttpCookie.domainMatches(CookieManager.f678d.f683d, HttpUrl.parse(this.f686a).host()) || TextUtils.isEmpty(this.f687b)) {
                return;
            }
            if (this.f687b.contains(CookieManager.f678d.f680a + ContainerUtils.KEY_VALUE_DELIMITER)) {
                return;
            }
            CookieMonitorStat cookieMonitorStat = new CookieMonitorStat(this.f686a);
            cookieMonitorStat.cookieName = CookieManager.f678d.f680a;
            cookieMonitorStat.cookieText = CookieManager.f678d.f681b;
            cookieMonitorStat.setCookie = CookieManager.f678d.f682c;
            cookieMonitorStat.missType = 1;
            AppMonitor.getInstance().commitStat(cookieMonitorStat);
        } catch (Exception e) {
            ALog.m338e(CookieManager.TAG, "cookieMonitorReport error.", null, e, new Object[0]);
        }
    }
}
