package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.MethodCallsLogger;
import com.huawei.hem.GeneratedAdapter;
import com.huawei.hem.LifecycleOwner;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final GeneratedAdapter[] f1a;

    public CompositeGeneratedAdaptersObserver(GeneratedAdapter[] interfaceC0967gArr) {
        this.f1a = interfaceC0967gArr;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(LifecycleOwner interfaceC1042j, AbstractC0992h.a aVar) {
        MethodCallsLogger c1143n = new MethodCallsLogger();
        for (GeneratedAdapter interfaceC0967g : this.f1a) {
            interfaceC0967g.m1844a(interfaceC1042j, aVar, false, c1143n);
        }
        for (GeneratedAdapter interfaceC0967g2 : this.f1a) {
            interfaceC0967g2.m1844a(interfaceC1042j, aVar, true, c1143n);
        }
    }
}
