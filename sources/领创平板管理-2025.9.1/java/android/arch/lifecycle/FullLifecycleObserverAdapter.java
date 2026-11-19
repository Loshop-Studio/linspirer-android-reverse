package android.arch.lifecycle;

import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.LifecycleOwner;

/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements GenericLifecycleObserver {

    /* renamed from: a */
    public final FullLifecycleObserver f2a;

    public FullLifecycleObserverAdapter(FullLifecycleObserver fullLifecycleObserver) {
        this.f2a = fullLifecycleObserver;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(LifecycleOwner interfaceC1042j, AbstractC0992h.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.f2a.m5f(interfaceC1042j);
                return;
            case ON_START:
                this.f2a.m2b(interfaceC1042j);
                return;
            case ON_RESUME:
                this.f2a.m6g(interfaceC1042j);
                return;
            case ON_PAUSE:
                this.f2a.m3c(interfaceC1042j);
                return;
            case ON_STOP:
                this.f2a.m1a(interfaceC1042j);
                return;
            case ON_DESTROY:
                this.f2a.m4e(interfaceC1042j);
                return;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}
