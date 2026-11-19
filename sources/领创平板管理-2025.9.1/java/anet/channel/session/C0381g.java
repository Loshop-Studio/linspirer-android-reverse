package anet.channel.session;

import anet.channel.RequestCb;
import anet.channel.bytes.ByteArray;
import anet.channel.entity.C0347b;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anet.channel.util.HttpHelper;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.g */
/* loaded from: classes.dex */
public class C0381g implements RequestCb {

    /* renamed from: a */
    public final /* synthetic */ RunnableC0380f f406a;

    public C0381g(RunnableC0380f runnableC0380f) {
        this.f406a = runnableC0380f;
    }

    @Override // anet.channel.RequestCb
    public void onDataReceive(ByteArray byteArray, boolean z) {
        this.f406a.f403b.onDataReceive(byteArray, z);
    }

    @Override // anet.channel.RequestCb
    public void onFinish(int i, String str, RequestStatistic requestStatistic) {
        if (i <= 0 && i != -204) {
            this.f406a.f405d.handleCallbacks(2, new C0347b(2, 0, "Http connect fail"));
        }
        this.f406a.f403b.onFinish(i, str, requestStatistic);
    }

    @Override // anet.channel.RequestCb
    public void onResponseCode(int i, Map<String, List<String>> map) {
        ALog.m340i("awcn.HttpSession", "", this.f406a.f402a.getSeq(), "httpStatusCode", Integer.valueOf(i));
        ALog.m340i("awcn.HttpSession", "", this.f406a.f402a.getSeq(), "response headers", map);
        this.f406a.f403b.onResponseCode(i, map);
        this.f406a.f404c.serverRT = HttpHelper.parseServerRT(map);
        RunnableC0380f runnableC0380f = this.f406a;
        runnableC0380f.f405d.handleResponseCode(runnableC0380f.f402a, i);
        RunnableC0380f runnableC0380f2 = this.f406a;
        runnableC0380f2.f405d.handleResponseHeaders(runnableC0380f2.f402a, map);
    }
}
