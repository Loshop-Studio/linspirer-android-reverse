package com.huawei.hem;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;

/* renamed from: com.huawei.hem.g7 */
/* loaded from: classes.dex */
public class ServicePriorityComparator implements Comparator<Map.Entry<String, Integer>>, Serializable {
    public ServicePriorityComparator() {
    }

    public ServicePriorityComparator(C0949f7 c0949f7) {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Map.Entry<String, Integer> entry, Map.Entry<String, Integer> entry2) {
        return entry.getValue().intValue() - entry2.getValue().intValue();
    }
}
