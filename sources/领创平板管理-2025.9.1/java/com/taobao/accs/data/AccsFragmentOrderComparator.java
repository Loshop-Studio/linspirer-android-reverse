package com.taobao.accs.data;

import java.util.Comparator;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.b */
/* loaded from: classes.dex */
public class AccsFragmentOrderComparator implements Comparator<Integer> {

    /* renamed from: a */
    public final /* synthetic */ AccsMessageAssembler f6139a;

    public AccsFragmentOrderComparator(AccsMessageAssembler c1918a) {
        this.f6139a = c1918a;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Integer num, Integer num2) {
        return num.intValue() - num2.intValue();
    }
}
