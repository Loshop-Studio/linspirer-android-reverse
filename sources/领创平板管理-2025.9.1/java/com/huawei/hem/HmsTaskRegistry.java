package com.huawei.hem;

/* renamed from: com.huawei.hem.x7 */
/* loaded from: classes.dex */
public class HmsTaskRegistry<TResult> {

    /* renamed from: a */
    public final HmsTaskResultState<TResult> f4053a = new HmsTaskResultState<>();

    /* renamed from: a */
    public void m2930a(Exception exc) {
        HmsTaskResultState<TResult> c1426y7 = this.f4053a;
        synchronized (c1426y7.f4204a) {
            if (!c1426y7.f4205b) {
                c1426y7.f4205b = true;
                c1426y7.f4204a.notifyAll();
                c1426y7.m3082a();
            }
        }
    }

    /* renamed from: b */
    public void m2931b(TResult tresult) {
        HmsTaskResultState<TResult> c1426y7 = this.f4053a;
        synchronized (c1426y7.f4204a) {
            if (!c1426y7.f4205b) {
                c1426y7.f4205b = true;
                c1426y7.f4206c = tresult;
                c1426y7.f4204a.notifyAll();
                c1426y7.m3082a();
            }
        }
    }
}
