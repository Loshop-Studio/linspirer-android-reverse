package com.huawei.hem;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.e */
/* loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public d<K, V> f2489a;

    /* renamed from: b */
    public d<K, V> f2490b;

    /* renamed from: c */
    public WeakHashMap<g<K, V>, Boolean> f2491c = new WeakHashMap<>();

    /* renamed from: d */
    public int f2492d = 0;

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$b */
    public static class b<K, V> extends f<K, V> {
        public b(d<K, V> dVar, d<K, V> dVar2) {
            super(dVar, dVar2);
        }

        @Override // com.huawei.hem.C0915e.f
        /* renamed from: b */
        public d<K, V> mo1623b(d<K, V> dVar) {
            return dVar.f2496d;
        }

        @Override // com.huawei.hem.C0915e.f
        /* renamed from: c */
        public d<K, V> mo1624c(d<K, V> dVar) {
            return dVar.f2495c;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$c */
    public static class c<K, V> extends f<K, V> {
        public c(d<K, V> dVar, d<K, V> dVar2) {
            super(dVar, dVar2);
        }

        @Override // com.huawei.hem.C0915e.f
        /* renamed from: b */
        public d<K, V> mo1623b(d<K, V> dVar) {
            return dVar.f2495c;
        }

        @Override // com.huawei.hem.C0915e.f
        /* renamed from: c */
        public d<K, V> mo1624c(d<K, V> dVar) {
            return dVar.f2496d;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$d */
    public static class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        @NonNull
        public final K f2493a;

        /* renamed from: b */
        @NonNull
        public final V f2494b;

        /* renamed from: c */
        public d<K, V> f2495c;

        /* renamed from: d */
        public d<K, V> f2496d;

        public d(@NonNull K k, @NonNull V v) {
            this.f2493a = k;
            this.f2494b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f2493a.equals(dVar.f2493a) && this.f2494b.equals(dVar.f2494b);
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f2493a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f2494b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f2493a + ContainerUtils.KEY_VALUE_DELIMITER + this.f2494b;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$e */
    public class e implements Iterator<Map.Entry<K, V>>, g<K, V> {

        /* renamed from: a */
        public d<K, V> f2497a;

        /* renamed from: b */
        public boolean f2498b = true;

        public e(a aVar) {
        }

        @Override // com.huawei.hem.C0915e.g
        /* renamed from: a */
        public void mo1625a(@NonNull d<K, V> dVar) {
            d<K, V> dVar2 = this.f2497a;
            if (dVar == dVar2) {
                d<K, V> dVar3 = dVar2.f2496d;
                this.f2497a = dVar3;
                this.f2498b = dVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2498b) {
                return SafeIterableMap.this.f2489a != null;
            }
            d<K, V> dVar = this.f2497a;
            return (dVar == null || dVar.f2495c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f2498b) {
                this.f2498b = false;
                this.f2497a = SafeIterableMap.this.f2489a;
            } else {
                d<K, V> dVar = this.f2497a;
                this.f2497a = dVar != null ? dVar.f2495c : null;
            }
            return this.f2497a;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$f */
    public static abstract class f<K, V> implements Iterator<Map.Entry<K, V>>, g<K, V> {

        /* renamed from: a */
        public d<K, V> f2500a;

        /* renamed from: b */
        public d<K, V> f2501b;

        public f(d<K, V> dVar, d<K, V> dVar2) {
            this.f2500a = dVar2;
            this.f2501b = dVar;
        }

        @Override // com.huawei.hem.C0915e.g
        /* renamed from: a */
        public void mo1625a(@NonNull d<K, V> dVar) {
            d<K, V> dVarMo1624c = null;
            if (this.f2500a == dVar && dVar == this.f2501b) {
                this.f2501b = null;
                this.f2500a = null;
            }
            d<K, V> dVar2 = this.f2500a;
            if (dVar2 == dVar) {
                this.f2500a = mo1623b(dVar2);
            }
            d<K, V> dVar3 = this.f2501b;
            if (dVar3 == dVar) {
                d<K, V> dVar4 = this.f2500a;
                if (dVar3 != dVar4 && dVar4 != null) {
                    dVarMo1624c = mo1624c(dVar3);
                }
                this.f2501b = dVarMo1624c;
            }
        }

        /* renamed from: b */
        public abstract d<K, V> mo1623b(d<K, V> dVar);

        /* renamed from: c */
        public abstract d<K, V> mo1624c(d<K, V> dVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2501b != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            d<K, V> dVar = this.f2501b;
            d<K, V> dVar2 = this.f2500a;
            this.f2501b = (dVar == dVar2 || dVar2 == null) ? null : mo1624c(dVar);
            return dVar;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: com.huawei.hem.e$g */
    public interface g<K, V> {
        /* renamed from: a */
        void mo1625a(@NonNull d<K, V> dVar);
    }

    /* renamed from: b */
    public d<K, V> mo1547b(K k) {
        d<K, V> dVar = this.f2489a;
        while (dVar != null && !dVar.f2493a.equals(k)) {
            dVar = dVar.f2495c;
        }
        return dVar;
    }

    /* renamed from: e */
    public d<K, V> m1622e(@NonNull K k, @NonNull V v) {
        d<K, V> dVar = new d<>(k, v);
        this.f2492d++;
        d<K, V> dVar2 = this.f2490b;
        if (dVar2 == null) {
            this.f2489a = dVar;
            this.f2490b = dVar;
            return dVar;
        }
        dVar2.f2495c = dVar;
        dVar.f2496d = dVar2;
        this.f2490b = dVar;
        return dVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        if (((com.huawei.hem.C0915e.f) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof com.huawei.hem.C0915e
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.huawei.hem.e r7 = (com.huawei.hem.C0915e) r7
            int r1 = r6.f2492d
            int r3 = r7.f2492d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            com.huawei.hem.e$f r3 = (com.huawei.hem.C0915e.f) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            com.huawei.hem.e$f r4 = (com.huawei.hem.C0915e.f) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            com.huawei.hem.e$f r7 = (com.huawei.hem.C0915e.f) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0915e.equals(java.lang.Object):boolean");
    }

    /* renamed from: g */
    public V mo1548g(@NonNull K k, @NonNull V v) {
        d<K, V> dVarMo1547b = mo1547b(k);
        if (dVarMo1547b != null) {
            return dVarMo1547b.f2494b;
        }
        m1622e(k, v);
        return null;
    }

    /* renamed from: h */
    public V mo1549h(@NonNull K k) {
        d<K, V> dVarMo1547b = mo1547b(k);
        if (dVarMo1547b == null) {
            return null;
        }
        this.f2492d--;
        if (!this.f2491c.isEmpty()) {
            Iterator<g<K, V>> it = this.f2491c.keySet().iterator();
            while (it.hasNext()) {
                it.next().mo1625a(dVarMo1547b);
            }
        }
        d<K, V> dVar = dVarMo1547b.f2496d;
        if (dVar != null) {
            dVar.f2495c = dVarMo1547b.f2495c;
        } else {
            this.f2489a = dVarMo1547b.f2495c;
        }
        d<K, V> dVar2 = dVarMo1547b.f2495c;
        if (dVar2 != null) {
            dVar2.f2496d = dVarMo1547b.f2496d;
        } else {
            this.f2490b = dVarMo1547b.f2496d;
        }
        dVarMo1547b.f2495c = null;
        dVarMo1547b.f2496d = null;
        return dVarMo1547b.f2494b;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        b bVar = new b(this.f2489a, this.f2490b);
        this.f2491c.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            f fVar = (f) it;
            if (!fVar.hasNext()) {
                sbM1765j.append("]");
                return sbM1765j.toString();
            }
            sbM1765j.append(((Map.Entry) fVar.next()).toString());
            if (fVar.hasNext()) {
                sbM1765j.append(", ");
            }
        }
    }
}
