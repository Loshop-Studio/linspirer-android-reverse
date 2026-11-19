package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.InterfaceC0967g;
import com.huawei.hem.InterfaceC1042j;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final InterfaceC0967g f13a;

    public SingleGeneratedAdapterObserver(InterfaceC0967g interfaceC0967g) {
        this.f13a = interfaceC0967g;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(InterfaceC1042j interfaceC1042j, AbstractC0992h.a aVar) {
        this.f13a.m1844a(interfaceC1042j, aVar, false, null);
        this.f13a.m1844a(interfaceC1042j, aVar, true, null);
    }
}
