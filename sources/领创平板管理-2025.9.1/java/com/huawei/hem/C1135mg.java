package com.huawei.hem;

import com.huawei.hem.C1059jg;
import com.huawei.hem.C1184of;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: MessageSnapshotThreadPool.java */
/* renamed from: com.huawei.hem.mg */
/* loaded from: classes.dex */
public class C1135mg {

    /* renamed from: a */
    public final List<a> f3262a = new ArrayList();

    /* renamed from: b */
    public final C1059jg.b f3263b;

    /* compiled from: MessageSnapshotThreadPool.java */
    /* renamed from: com.huawei.hem.mg$a */
    public class a {

        /* renamed from: a */
        public final List<Integer> f3264a = new ArrayList();

        /* renamed from: b */
        public final Executor f3265b;

        public a(int i) {
            this.f3265b = C1184of.b.m2443f(1, "Flow-" + i);
        }
    }

    public C1135mg(int i, C1059jg.b bVar) {
        this.f3263b = bVar;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3262a.add(new a(i2));
        }
    }
}
