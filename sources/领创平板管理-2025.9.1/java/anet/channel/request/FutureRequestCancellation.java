package anet.channel.request;

import anet.channel.util.ALog;
import java.util.concurrent.Future;

/* compiled from: Taobao */
/* renamed from: anet.channel.request.b */
/* loaded from: classes.dex */
public class FutureRequestCancellation implements Cancelable {
    public static final FutureRequestCancellation NULL = new FutureRequestCancellation(null, null);

    /* renamed from: a */
    public final Future<?> f364a;

    /* renamed from: b */
    public final String f365b;

    public FutureRequestCancellation(Future<?> future, String str) {
        this.f364a = future;
        this.f365b = str;
    }

    @Override // anet.channel.request.Cancelable
    public void cancel() {
        if (this.f364a != null) {
            ALog.m340i("awcn.FutureCancelable", "cancel request", this.f365b, new Object[0]);
            this.f364a.cancel(true);
        }
    }
}
