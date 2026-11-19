package com.taobao.accs.net;

import anet.channel.session.TnetSpdySession;
import com.alibaba.sdk.android.logger.ILog;
import com.huawei.hem.C0948f6;
import com.taobao.accs.AccsState;
import com.taobao.accs.common.Constants;
import com.taobao.accs.p072ut.p073a.C1968d;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.o */
/* loaded from: classes.dex */
public class RunnableC1953o implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f6268a;

    /* renamed from: b */
    public final /* synthetic */ int f6269b;

    /* renamed from: c */
    public final /* synthetic */ byte[] f6270c;

    /* renamed from: d */
    public final /* synthetic */ TnetSpdySession f6271d;

    /* renamed from: e */
    public final /* synthetic */ C1948j f6272e;

    public RunnableC1953o(C1948j c1948j, int i, int i2, byte[] bArr, TnetSpdySession tnetSpdySession) {
        this.f6272e = c1948j;
        this.f6268a = i;
        this.f6269b = i2;
        this.f6270c = bArr;
        this.f6271d = tnetSpdySession;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6272e.f6250t.mo670i("onDataReceive", "type", Integer.valueOf(this.f6268a), Constants.KEY_DATA_ID, Integer.valueOf(this.f6269b));
        AccsState.getInstance().m5450a(this.f6272e.f6221m, AccsState.LAST_MSG_RECEIVE_TIME, Integer.valueOf(this.f6269b));
        if (this.f6268a != 200) {
            ILog iLog = this.f6272e.f6250t;
            StringBuilder sbM1765j = C0948f6.m1765j("drop frame len:");
            sbM1765j.append(this.f6270c.length);
            sbM1765j.append(" frameType");
            sbM1765j.append(this.f6268a);
            iLog.mo666e(sbM1765j.toString());
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f6272e.f6213e.m5559a(this.f6270c, this.f6271d.getHost());
            C1968d c1968dM5567g = this.f6272e.f6213e.m5567g();
            if (c1968dM5567g != null) {
                c1968dM5567g.f6347c = String.valueOf(jCurrentTimeMillis);
                c1968dM5567g.f6351g = this.f6272e.f6211c == 0 ? "service" : "inapp";
                c1968dM5567g.m5720a();
            }
        } catch (Throwable th) {
            this.f6272e.f6250t.mo667e("onDataReceive", th);
            UTMini.getInstance().commitEvent(66001, "DATA_RECEIVE", UtilityImpl.m5740a(th));
        }
    }
}
