package anet.channel.strategy.utils;

import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class SerialLruCache<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a */
    public int f557a;

    public SerialLruCache(LinkedHashMap<K, V> linkedHashMap, int i) {
        super(linkedHashMap);
        this.f557a = i;
    }

    public boolean entryRemoved(Map.Entry<K, V> entry) {
        return true;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, V> entry) {
        if (size() > this.f557a) {
            return entryRemoved(entry);
        }
        return false;
    }

    @Deprecated
    public SerialLruCache(LinkedHashMap<K, V> linkedHashMap) {
        this(linkedHashMap, 256);
    }

    public SerialLruCache(int i) {
        super(i + 1, 1.0f, true);
        this.f557a = i;
    }
}
