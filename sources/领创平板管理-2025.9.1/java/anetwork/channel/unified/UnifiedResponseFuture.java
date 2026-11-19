package anetwork.channel.unified;

import anetwork.channel.Response;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.d */
/* loaded from: classes.dex */
public class UnifiedResponseFuture implements Future<Response> {

    /* renamed from: a */
    public UnifiedRequestCoordinator f758a;

    /* renamed from: b */
    public boolean f759b;

    public UnifiedResponseFuture(UnifiedRequestCoordinator c0470k) {
        this.f758a = c0470k;
    }

    @Override // java.util.concurrent.Future
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Response get() {
        throw new RuntimeException("NOT SUPPORT!");
    }

    /* renamed from: b */
    public Response m446b() {
        throw new RuntimeException("NOT SUPPORT!");
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        if (!this.f759b) {
            this.f758a.m463b();
            this.f759b = true;
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f759b;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        throw new RuntimeException("NOT SUPPORT!");
    }

    @Override // java.util.concurrent.Future
    public /* synthetic */ Response get(long j, TimeUnit timeUnit) {
        return m446b();
    }
}
