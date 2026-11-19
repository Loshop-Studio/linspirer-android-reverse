package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.C1143n;
import com.huawei.hem.InterfaceC0967g;
import com.huawei.hem.InterfaceC1042j;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final InterfaceC0967g[] f1a;

    public CompositeGeneratedAdaptersObserver(InterfaceC0967g[] interfaceC0967gArr) {
        this.f1a = interfaceC0967gArr;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(InterfaceC1042j interfaceC1042j, AbstractC0992h.a aVar) {
        C1143n c1143n = new C1143n();
        for (InterfaceC0967g interfaceC0967g : this.f1a) {
            interfaceC0967g.m1844a(interfaceC1042j, aVar, false, c1143n);
        }
        for (InterfaceC0967g interfaceC0967g2 : this.f1a) {
            interfaceC0967g2.m1844a(interfaceC1042j, aVar, true, c1143n);
        }
    }
}
