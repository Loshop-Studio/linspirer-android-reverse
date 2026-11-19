package com.huawei.hem;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.huawei.hem.y7 */
/* loaded from: classes.dex */
public final class HmsTaskResultState<TResult> extends HmsResultTaskBase<TResult> {

    /* renamed from: b */
    public boolean f4205b;

    /* renamed from: c */
    public TResult f4206c;

    /* renamed from: a */
    public final Object f4204a = new Object();

    /* renamed from: d */
    public List<HmsCancellationHandle<TResult>> f4207d = new ArrayList();

    /* renamed from: a */
    public final void m3082a() {
        synchronized (this.f4204a) {
            Iterator<HmsCancellationHandle<TResult>> it = this.f4207d.iterator();
            while (it.hasNext()) {
                try {
                    it.next().m2857a(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f4207d = null;
        }
    }
}
