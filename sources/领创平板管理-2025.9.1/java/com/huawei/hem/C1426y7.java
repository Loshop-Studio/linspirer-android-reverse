package com.huawei.hem;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.huawei.hem.y7 */
/* loaded from: classes.dex */
public final class C1426y7<TResult> extends AbstractC1376w7<TResult> {

    /* renamed from: b */
    public boolean f4205b;

    /* renamed from: c */
    public TResult f4206c;

    /* renamed from: a */
    public final Object f4204a = new Object();

    /* renamed from: d */
    public List<InterfaceC1351v7<TResult>> f4207d = new ArrayList();

    /* renamed from: a */
    public final void m3082a() {
        synchronized (this.f4204a) {
            Iterator<InterfaceC1351v7<TResult>> it = this.f4207d.iterator();
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
