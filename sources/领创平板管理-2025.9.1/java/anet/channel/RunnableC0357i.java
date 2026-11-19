package anet.channel;

import anet.channel.SessionRequest;
import anet.channel.util.C0428i;

/* compiled from: Taobao */
/* renamed from: anet.channel.i */
/* loaded from: classes.dex */
public class RunnableC0357i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Session f285a;

    /* renamed from: b */
    public final /* synthetic */ SessionRequest.C0304a f286b;

    public RunnableC0357i(SessionRequest.C0304a c0304a, Session session) {
        this.f286b = c0304a;
        this.f285a = session;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            SessionRequest.this.m55a(this.f286b.f147c, this.f285a.getConnType().getType(), C0428i.m364a(SessionRequest.this.f133a.f124c), (SessionGetCallback) null, 0L);
        } catch (Exception unused) {
        }
    }
}
