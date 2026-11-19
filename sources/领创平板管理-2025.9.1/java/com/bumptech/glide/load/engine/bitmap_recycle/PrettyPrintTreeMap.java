package com.bumptech.glide.load.engine.bitmap_recycle;

import com.huawei.hem.CompilerOutline;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class PrettyPrintTreeMap<K, V> extends TreeMap<K, V> {
    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("( ");
        for (Map.Entry<K, V> entry : entrySet()) {
            sbM1765j.append('{');
            sbM1765j.append(entry.getKey());
            sbM1765j.append(':');
            sbM1765j.append(entry.getValue());
            sbM1765j.append("}, ");
        }
        if (!isEmpty()) {
            sbM1765j.replace(sbM1765j.length() - 2, sbM1765j.length(), "");
        }
        sbM1765j.append(" )");
        return sbM1765j.toString();
    }
}
