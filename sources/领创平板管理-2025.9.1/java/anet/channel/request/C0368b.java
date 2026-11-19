package anet.channel.request;

import anet.channel.util.ALog;
import java.util.concurrent.Future;

/* compiled from: Taobao */
/* renamed from: anet.channel.request.b */
/* loaded from: classes.dex */
public class C0368b implements Cancelable {
    public static final C0368b NULL = new C0368b(null, null);

    /* renamed from: a */
    public final Future<?> f364a;

    /* renamed from: b */
    public final String f365b;

    public C0368b(Future<?> future, String str) {
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
