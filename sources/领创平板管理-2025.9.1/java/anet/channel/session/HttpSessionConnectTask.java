package anet.channel.session;

import anet.channel.RequestCb;
import anet.channel.entity.SessionEventDetails;
import anet.channel.request.Request;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.e */
/* loaded from: classes.dex */
public class HttpSessionConnectTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Request f400a;

    /* renamed from: b */
    public final /* synthetic */ AwcnHttpSession f401b;

    public HttpSessionConnectTask(AwcnHttpSession c0378d, Request request) {
        this.f401b = c0378d;
        this.f400a = request;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = HttpUrlConnectionConnector.m226a(this.f400a, (RequestCb) null).f393a;
        if (i > 0) {
            this.f401b.notifyStatus(4, new SessionEventDetails(1));
        } else {
            this.f401b.handleCallbacks(256, new SessionEventDetails(256, i, "Http connect fail"));
        }
    }
}
