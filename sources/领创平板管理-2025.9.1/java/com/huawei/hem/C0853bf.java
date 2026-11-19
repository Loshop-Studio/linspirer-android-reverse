package com.huawei.hem;

import com.huawei.hem.C1184of;
import com.huawei.hem.C1233qe;
import com.huawei.hem.C1333ue;
import com.huawei.hem.InterfaceC0956fe;
import java.util.ArrayList;

/* compiled from: LostServiceConnectedHandler.java */
/* renamed from: com.huawei.hem.bf */
/* loaded from: classes.dex */
public class C0853bf extends AbstractC1057je implements InterfaceC1408xe {

    /* renamed from: b */
    public final ArrayList<InterfaceC0956fe.a> f2302b = new ArrayList<>();

    /* renamed from: a */
    public boolean m1418a(InterfaceC0956fe.a aVar) {
        if (!C1333ue.a.f3867a.m2793e()) {
            synchronized (this.f2302b) {
                if (!C1333ue.a.f3867a.m2793e()) {
                    C1233qe c1233qe = C1233qe.b.f3535a;
                    c1233qe.f3534a.mo2450p(C1184of.b.f3400a);
                    if (!this.f2302b.contains(aVar)) {
                        aVar.mo1804e();
                        this.f2302b.add(aVar);
                    }
                    return true;
                }
            }
        }
        m1419b(aVar);
        return false;
    }

    /* renamed from: b */
    public void m1419b(InterfaceC0956fe.a aVar) {
        if (this.f2302b.isEmpty()) {
            return;
        }
        synchronized (this.f2302b) {
            this.f2302b.remove(aVar);
        }
    }
}
