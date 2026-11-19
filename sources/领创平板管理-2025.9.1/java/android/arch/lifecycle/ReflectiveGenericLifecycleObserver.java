package android.arch.lifecycle;

import com.huawei.hem.ArchitectureLifecycle;
import com.huawei.hem.ClassesInfoCache;
import com.huawei.hem.LifecycleOwner;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements GenericLifecycleObserver {

    /* renamed from: a */
    public final Object f10a;

    /* renamed from: b */
    public final ClassesInfoCache.a f11b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f10a = obj;
        this.f11b = ClassesInfoCache.f2577c.m1694b(obj.getClass());
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    /* renamed from: d */
    public void mo0d(LifecycleOwner interfaceC1042j, ArchitectureLifecycle.a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        ClassesInfoCache.a aVar2 = this.f11b;
        Object obj = this.f10a;
        ClassesInfoCache.a.m1696a(aVar2.f2580a.get(aVar), interfaceC1042j, aVar, obj);
        ClassesInfoCache.a.m1696a(aVar2.f2580a.get(ArchitectureLifecycle.a.ON_ANY), interfaceC1042j, aVar, obj);
    }
}
