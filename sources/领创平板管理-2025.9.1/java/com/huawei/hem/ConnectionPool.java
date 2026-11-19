package com.huawei.hem;

import java.util.concurrent.TimeUnit;

/* compiled from: ConnectionPool.java */
/* renamed from: com.huawei.hem.oj */
/* loaded from: classes.dex */
public final class ConnectionPool {

    /* renamed from: a */
    public final RealConnectionPool f3410a = new RealConnectionPool(5, 5, TimeUnit.MINUTES);
}
