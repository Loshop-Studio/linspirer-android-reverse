package com.huawei.hem;

import android.os.SystemClock;
import java.util.concurrent.Future;

/* renamed from: com.huawei.hem.m8 */
/* loaded from: classes.dex */
public class GrsPendingRequest {

    /* renamed from: a */
    public Future<GrsHttpResponse> f3243a;

    /* renamed from: b */
    public long f3244b = SystemClock.elapsedRealtime();

    public GrsPendingRequest(Future<GrsHttpResponse> future) {
        this.f3243a = future;
    }
}
