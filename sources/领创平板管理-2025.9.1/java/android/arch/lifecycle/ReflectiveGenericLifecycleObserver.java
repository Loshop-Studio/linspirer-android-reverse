package android.arch.lifecycle;

import com.huawei.hem.AbstractC0992h;
import com.huawei.hem.C0941f;
import com.huawei.hem.InterfaceC1042j;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final Object f10a;

    /* renamed from: b */
    public final C0941f.a f11b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f10a = obj;
        this.f11b = C0941f.f2577c.m1694b(obj.getClass());
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(InterfaceC1042j interfaceC1042j, AbstractC0992h.a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        C0941f.a aVar2 = this.f11b;
        Object obj = this.f10a;
        C0941f.a.m1696a(aVar2.f2580a.get(aVar), interfaceC1042j, aVar, obj);
        C0941f.a.m1696a(aVar2.f2580a.get(AbstractC0992h.a.ON_ANY), interfaceC1042j, aVar, obj);
    }
}
