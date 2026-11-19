package com.huawei.hem;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import com.huawei.hem.SafeIterableMap;
import java.util.HashMap;

/* compiled from: FastSafeIterableMap.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.d */
/* loaded from: classes.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {

    /* renamed from: e */
    public HashMap<K, SafeIterableMap.d<K, V>> f2364e = new HashMap<>();

    @Override // com.huawei.hem.C0915e
    /* renamed from: b */
    public SafeIterableMap.d<K, V> mo1547b(K k) {
        return this.f2364e.get(k);
    }

    public boolean contains(K k) {
        return this.f2364e.containsKey(k);
    }

    @Override // com.huawei.hem.C0915e
    /* renamed from: g */
    public V mo1548g(@NonNull K k, @NonNull V v) {
        SafeIterableMap.d<K, V> dVar = this.f2364e.get(k);
        if (dVar != null) {
            return dVar.f2494b;
        }
        this.f2364e.put(k, m1622e(k, v));
        return null;
    }

    @Override // com.huawei.hem.C0915e
    /* renamed from: h */
    public V mo1549h(@NonNull K k) {
        V v = (V) super.mo1549h(k);
        this.f2364e.remove(k);
        return v;
    }
}
