package anet.channel.session;

import anet.channel.RequestCb;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.f */
/* loaded from: classes.dex */
public class HttpSessionExecuteRequestTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Request f402a;

    /* renamed from: b */
    public final /* synthetic */ RequestCb f403b;

    /* renamed from: c */
    public final /* synthetic */ RequestStatistic f404c;

    /* renamed from: d */
    public final /* synthetic */ AwcnHttpSession f405d;

    public HttpSessionExecuteRequestTask(AwcnHttpSession c0378d, Request request, RequestCb requestCb, RequestStatistic requestStatistic) {
        this.f405d = c0378d;
        this.f402a = request;
        this.f403b = requestCb;
        this.f404c = requestStatistic;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f402a.f328a.sendBeforeTime = System.currentTimeMillis() - this.f402a.f328a.reqStart;
        HttpUrlConnectionConnector.m226a(this.f402a, new HttpSessionRequestCallback(this));
    }
}
