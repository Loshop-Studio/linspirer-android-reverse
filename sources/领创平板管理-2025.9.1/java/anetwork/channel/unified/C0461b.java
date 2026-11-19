package anetwork.channel.unified;

import android.text.TextUtils;
import anet.channel.request.Cancelable;
import anet.channel.request.Request;
import anet.channel.session.C0376b;
import anet.channel.util.HttpConstant;
import anet.channel.util.StringUtils;
import anetwork.channel.cookie.CookieManager;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.b */
/* loaded from: classes.dex */
public class C0461b implements IUnifiedTask {

    /* renamed from: c */
    public C0469j f753c;

    /* renamed from: f */
    public Request f756f;

    /* renamed from: b */
    public volatile boolean f752b = false;

    /* renamed from: a */
    public volatile Cancelable f751a = null;

    /* renamed from: d */
    public int f754d = 0;

    /* renamed from: e */
    public int f755e = 0;

    public C0461b(C0469j c0469j) {
        this.f753c = c0469j;
        this.f756f = c0469j.f793a.m425a();
    }

    /* renamed from: b */
    public static /* synthetic */ int m441b(C0461b c0461b) {
        int i = c0461b.f755e;
        c0461b.f755e = i + 1;
        return i;
    }

    @Override // anet.channel.request.Cancelable
    public void cancel() {
        this.f752b = true;
        if (this.f751a != null) {
            this.f751a.cancel();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f752b) {
            return;
        }
        if (this.f753c.f793a.m436i()) {
            String cookie = CookieManager.getCookie(this.f753c.f793a.m434g());
            if (!TextUtils.isEmpty(cookie)) {
                Request.Builder builderNewBuilder = this.f756f.newBuilder();
                String str = this.f756f.getHeaders().get(HttpConstant.COOKIE);
                if (!TextUtils.isEmpty(str)) {
                    cookie = StringUtils.concatString(str, "; ", cookie);
                }
                builderNewBuilder.addHeader(HttpConstant.COOKIE, cookie);
                this.f756f = builderNewBuilder.build();
            }
        }
        this.f756f.f328a.degraded = 2;
        this.f756f.f328a.sendBeforeTime = System.currentTimeMillis() - this.f756f.f328a.reqStart;
        C0376b.m226a(this.f756f, new C0462c(this));
    }
}
