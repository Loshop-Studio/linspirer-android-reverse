package anetwork.channel.unified;

import anetwork.channel.entity.C0458g;
import anetwork.channel.interceptor.Callback;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.j */
/* loaded from: classes.dex */
public class C0469j {

    /* renamed from: a */
    public final C0458g f793a;

    /* renamed from: b */
    public Callback f794b;

    /* renamed from: c */
    public final String f795c;

    /* renamed from: d */
    public volatile AtomicBoolean f796d = new AtomicBoolean();

    /* renamed from: e */
    public volatile IUnifiedTask f797e = null;

    /* renamed from: f */
    public volatile Future f798f = null;

    public C0469j(C0458g c0458g, Callback callback) {
        this.f793a = c0458g;
        this.f795c = c0458g.f740e;
        this.f794b = callback;
    }

    /* renamed from: a */
    public void m458a() {
        Future future = this.f798f;
        if (future != null) {
            future.cancel(true);
            this.f798f = null;
        }
    }

    /* renamed from: b */
    public void m459b() {
        if (this.f797e != null) {
            this.f797e.cancel();
            this.f797e = null;
        }
    }
}
