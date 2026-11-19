package anetwork.channel.interceptor;

import anet.channel.util.ALog;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class InterceptorManager {

    /* renamed from: a */
    public static final CopyOnWriteArrayList<Interceptor> f747a = new CopyOnWriteArrayList<>();

    public static void addInterceptor(Interceptor interceptor) {
        if (f747a.contains(interceptor)) {
            return;
        }
        f747a.add(interceptor);
        ALog.m340i("anet.InterceptorManager", "[addInterceptor]", null, "interceptors", f747a.toString());
    }

    public static boolean contains(Interceptor interceptor) {
        return f747a.contains(interceptor);
    }

    public static Interceptor getInterceptor(int i) {
        return f747a.get(i);
    }

    public static int getSize() {
        return f747a.size();
    }

    public static void removeInterceptor(Interceptor interceptor) {
        f747a.remove(interceptor);
        ALog.m340i("anet.InterceptorManager", "[remoteInterceptor]", null, "interceptors", f747a.toString());
    }
}
