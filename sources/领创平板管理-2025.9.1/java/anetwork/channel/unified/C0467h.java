package anetwork.channel.unified;

import anet.channel.Session;
import anet.channel.SessionCenter;
import anet.channel.SessionGetCallback;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anet.channel.util.HttpUrl;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.h */
/* loaded from: classes.dex */
public class C0467h implements SessionGetCallback {

    /* renamed from: a */
    public final /* synthetic */ RequestStatistic f783a;

    /* renamed from: b */
    public final /* synthetic */ long f784b;

    /* renamed from: c */
    public final /* synthetic */ Request f785c;

    /* renamed from: d */
    public final /* synthetic */ SessionCenter f786d;

    /* renamed from: e */
    public final /* synthetic */ HttpUrl f787e;

    /* renamed from: f */
    public final /* synthetic */ boolean f788f;

    /* renamed from: g */
    public final /* synthetic */ C0464e f789g;

    public C0467h(C0464e c0464e, RequestStatistic requestStatistic, long j, Request request, SessionCenter sessionCenter, HttpUrl httpUrl, boolean z) {
        this.f789g = c0464e;
        this.f783a = requestStatistic;
        this.f784b = j;
        this.f785c = request;
        this.f786d = sessionCenter;
        this.f787e = httpUrl;
        this.f788f = z;
    }

    @Override // anet.channel.SessionGetCallback
    public void onSessionGetFail() {
        ALog.m339e(C0464e.TAG, "onSessionGetFail", this.f789g.f760a.f795c, AgooConstants.OPEN_URL, this.f783a.url);
        this.f783a.connWaitTime = System.currentTimeMillis() - this.f784b;
        C0464e c0464e = this.f789g;
        c0464e.m452a(c0464e.m447a(null, this.f786d, this.f787e, this.f788f), this.f785c);
    }

    @Override // anet.channel.SessionGetCallback
    public void onSessionGetSuccess(Session session) {
        ALog.m340i(C0464e.TAG, "onSessionGetSuccess", this.f789g.f760a.f795c, "Session", session);
        this.f783a.connWaitTime = System.currentTimeMillis() - this.f784b;
        this.f783a.spdyRequestSend = true;
        this.f789g.m452a(session, this.f785c);
    }
}
