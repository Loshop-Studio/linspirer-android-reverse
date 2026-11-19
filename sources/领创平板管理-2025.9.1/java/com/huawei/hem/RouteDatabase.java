package com.huawei.hem;

import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: RouteDatabase.java */
/* renamed from: com.huawei.hem.hl */
/* loaded from: classes.dex */
public final class RouteDatabase {

    /* renamed from: a */
    public final Set<Route> f2878a = new LinkedHashSet();

    /* renamed from: a */
    public synchronized void m1970a(Route c1164nk) {
        this.f2878a.remove(c1164nk);
    }
}
