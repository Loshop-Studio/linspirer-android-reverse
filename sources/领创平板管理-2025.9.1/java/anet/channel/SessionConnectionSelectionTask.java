package anet.channel;

import anet.channel.SessionRequest;
import anet.channel.util.SessionSequenceGenerator;

/* compiled from: Taobao */
/* renamed from: anet.channel.i */
/* loaded from: classes.dex */
public class SessionConnectionSelectionTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Session f285a;

    /* renamed from: b */
    public final /* synthetic */ SessionRequest.SessionConnectionResultCallback f286b;

    public SessionConnectionSelectionTask(SessionRequest.SessionConnectionResultCallback c0304a, Session session) {
        this.f286b = c0304a;
        this.f285a = session;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            SessionRequest.this.m55a(this.f286b.f147c, this.f285a.getConnType().getType(), SessionSequenceGenerator.m364a(SessionRequest.this.f133a.f124c), (SessionGetCallback) null, 0L);
        } catch (Exception unused) {
        }
    }
}
