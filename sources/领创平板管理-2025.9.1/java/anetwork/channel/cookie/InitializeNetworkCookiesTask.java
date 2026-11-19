package anetwork.channel.cookie;

import android.text.TextUtils;
import anet.channel.util.ALog;
import anetwork.channel.cookie.CookieManager;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.cookie.a */
/* loaded from: classes.dex */
public final class InitializeNetworkCookiesTask implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            if (TextUtils.isEmpty(CookieManager.m397f())) {
                return;
            }
            CookieManager.CookieMonitorRecord unused = CookieManager.f678d = new CookieManager.CookieMonitorRecord(CookieManager.m397f());
        } catch (Exception e) {
            ALog.m338e(CookieManager.TAG, "", null, e, new Object[0]);
        }
    }
}
