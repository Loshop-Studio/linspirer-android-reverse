package anet.channel.session;

import anet.channel.IAuth;
import anet.channel.heartbeat.IHeartbeat;
import anet.channel.statist.SessionStatistic;
import anet.channel.util.ALog;
import com.huawei.hem.C0948f6;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.i */
/* loaded from: classes.dex */
public class C0383i implements IAuth.AuthCallback {

    /* renamed from: a */
    public final /* synthetic */ TnetSpdySession f408a;

    public C0383i(TnetSpdySession tnetSpdySession) {
        this.f408a = tnetSpdySession;
    }

    @Override // anet.channel.IAuth.AuthCallback
    public void onAuthFail(int i, String str) {
        this.f408a.notifyStatus(5, null);
        SessionStatistic sessionStatistic = this.f408a.f111q;
        if (sessionStatistic != null) {
            sessionStatistic.closeReason = C0948f6.m1754L("Accs_Auth_Fail:", i);
            this.f408a.f111q.errorCode = i;
        }
        this.f408a.close();
    }

    @Override // anet.channel.IAuth.AuthCallback
    public void onAuthSuccess() {
        this.f408a.notifyStatus(4, null);
        this.f408a.f387z = System.currentTimeMillis();
        TnetSpdySession tnetSpdySession = this.f408a;
        IHeartbeat iHeartbeat = tnetSpdySession.f378D;
        if (iHeartbeat != null) {
            iHeartbeat.start(tnetSpdySession);
        }
        TnetSpdySession tnetSpdySession2 = this.f408a;
        SessionStatistic sessionStatistic = tnetSpdySession2.f111q;
        sessionStatistic.ret = 1;
        ALog.m337d("awcn.TnetSpdySession", "spdyOnStreamResponse", tnetSpdySession2.f110p, "authTime", Long.valueOf(sessionStatistic.authTime));
        TnetSpdySession tnetSpdySession3 = this.f408a;
        if (tnetSpdySession3.f375A > 0) {
            tnetSpdySession3.f111q.authTime = System.currentTimeMillis() - this.f408a.f375A;
        }
    }
}
