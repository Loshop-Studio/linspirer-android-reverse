package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.GeneratedAdapter;
import com.huawei.hem.LifecycleOwner;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final GeneratedAdapter f13a;

    public SingleGeneratedAdapterObserver(GeneratedAdapter interfaceC0967g) {
        this.f13a = interfaceC0967g;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(LifecycleOwner interfaceC1042j, AbstractC0992h.a aVar) {
        this.f13a.m1844a(interfaceC1042j, aVar, false, null);
        this.f13a.m1844a(interfaceC1042j, aVar, true, null);
    }
}
