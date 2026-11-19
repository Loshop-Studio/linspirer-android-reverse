package com.huawei.hem;

import java.util.HashMap;
import java.util.Iterator;

/* compiled from: ViewModelStore.java */
/* renamed from: com.huawei.hem.t */
/* loaded from: classes.dex */
public class C1293t {

    /* renamed from: a */
    public final HashMap<String, AbstractC1243r> f3737a = new HashMap<>();

    /* renamed from: a */
    public final void m2710a() {
        Iterator<AbstractC1243r> it = this.f3737a.values().iterator();
        while (it.hasNext()) {
            it.next().onCleared();
        }
        this.f3737a.clear();
    }
}
