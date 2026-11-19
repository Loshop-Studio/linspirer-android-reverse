package com.huawei.hem;

import android.arch.lifecycle.GenericLifecycleObserver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.SafeIterableMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: LifecycleRegistry.java */
/* renamed from: com.huawei.hem.k */
/* loaded from: classes.dex */
public class LifecycleRegistry extends AbstractC0992h {

    /* renamed from: c */
    public final WeakReference<LifecycleOwner> f2995c;

    /* renamed from: a */
    public FastSafeIterableMap<LifecycleObserver, a> f2993a = new FastSafeIterableMap<>();

    /* renamed from: d */
    public int f2996d = 0;

    /* renamed from: e */
    public boolean f2997e = false;

    /* renamed from: f */
    public boolean f2998f = false;

    /* renamed from: g */
    public ArrayList<AbstractC0992h.b> f2999g = new ArrayList<>();

    /* renamed from: b */
    public AbstractC0992h.b f2994b = AbstractC0992h.b.INITIALIZED;

    /* compiled from: LifecycleRegistry.java */
    /* renamed from: com.huawei.hem.k$a */
    public static class a {

        /* renamed from: a */
        public AbstractC0992h.b f3000a;

        /* renamed from: b */
        public GenericLifecycleObserver f3001b;

        public a(LifecycleObserver interfaceC1017i, AbstractC0992h.b bVar) {
            this.f3001b = Lifecycling.m2342c(interfaceC1017i);
            this.f3000a = bVar;
        }

        /* renamed from: a */
        public void m2155a(LifecycleOwner interfaceC1042j, AbstractC0992h.a aVar) {
            AbstractC0992h.b bVarM2147b = LifecycleRegistry.m2147b(aVar);
            this.f3000a = LifecycleRegistry.m2148d(this.f3000a, bVarM2147b);
            this.f3001b.mo0d(interfaceC1042j, aVar);
            this.f3000a = bVarM2147b;
        }
    }

    public LifecycleRegistry(@NonNull LifecycleOwner interfaceC1042j) {
        this.f2995c = new WeakReference<>(interfaceC1042j);
    }

    /* renamed from: b */
    public static AbstractC0992h.b m2147b(AbstractC0992h.a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    return AbstractC0992h.b.RESUMED;
                }
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            return AbstractC0992h.b.DESTROYED;
                        }
                        throw new IllegalArgumentException("Unexpected event value " + aVar);
                    }
                }
            }
            return AbstractC0992h.b.STARTED;
        }
        return AbstractC0992h.b.CREATED;
    }

    /* renamed from: d */
    public static AbstractC0992h.b m2148d(@NonNull AbstractC0992h.b bVar, @Nullable AbstractC0992h.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    /* renamed from: h */
    public static AbstractC0992h.a m2149h(AbstractC0992h.b bVar) {
        int iOrdinal = bVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return AbstractC0992h.a.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return AbstractC0992h.a.ON_START;
        }
        if (iOrdinal == 3) {
            return AbstractC0992h.a.ON_RESUME;
        }
        if (iOrdinal == 4) {
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Unexpected state value " + bVar);
    }

    /* renamed from: a */
    public final AbstractC0992h.b m2150a(LifecycleObserver interfaceC1017i) {
        FastSafeIterableMap<LifecycleObserver, a> c0889d = this.f2993a;
        AbstractC0992h.b bVar = null;
        SafeIterableMap.d<LifecycleObserver, a> dVar = c0889d.f2364e.containsKey(interfaceC1017i) ? c0889d.f2364e.get(interfaceC1017i).f2496d : null;
        AbstractC0992h.b bVar2 = dVar != null ? dVar.getValue().f3000a : null;
        if (!this.f2999g.isEmpty()) {
            bVar = this.f2999g.get(r0.size() - 1);
        }
        return m2148d(m2148d(this.f2994b, bVar2), bVar);
    }

    /* renamed from: c */
    public void m2151c(@NonNull AbstractC0992h.a aVar) {
        m2152e(m2147b(aVar));
    }

    /* renamed from: e */
    public final void m2152e(AbstractC0992h.b bVar) {
        if (this.f2994b == bVar) {
            return;
        }
        this.f2994b = bVar;
        if (this.f2997e || this.f2996d != 0) {
            this.f2998f = true;
            return;
        }
        this.f2997e = true;
        m2154g();
        this.f2997e = false;
    }

    /* renamed from: f */
    public final void m2153f() {
        this.f2999g.remove(r0.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2154g() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1067k.m2154g():void");
    }
}
