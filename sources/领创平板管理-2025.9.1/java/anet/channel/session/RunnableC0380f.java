package anet.channel.session;

import anet.channel.RequestCb;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.f */
/* loaded from: classes.dex */
public class RunnableC0380f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Request f402a;

    /* renamed from: b */
    public final /* synthetic */ RequestCb f403b;

    /* renamed from: c */
    public final /* synthetic */ RequestStatistic f404c;

    /* renamed from: d */
    public final /* synthetic */ C0378d f405d;

    public RunnableC0380f(C0378d c0378d, Request request, RequestCb requestCb, RequestStatistic requestStatistic) {
        this.f405d = c0378d;
        this.f402a = request;
        this.f403b = requestCb;
        this.f404c = requestStatistic;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f402a.f328a.sendBeforeTime = System.currentTimeMillis() - this.f402a.f328a.reqStart;
        C0376b.m226a(this.f402a, new C0381g(this));
    }
}
