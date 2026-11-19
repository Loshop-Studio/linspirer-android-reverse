package com.huawei.hem;

import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.huawei.hem.y8 */
/* loaded from: classes.dex */
public class C1427y8 {

    /* renamed from: a */
    public static Map<String, a> f4208a = new ConcurrentHashMap(16);

    /* renamed from: com.huawei.hem.y8$a */
    public static class a {

        /* renamed from: a */
        public long f4209a;

        /* renamed from: b */
        public long f4210b;

        public a(long j, long j2) {
            this.f4209a = j;
            this.f4210b = j2;
        }
    }

    /* renamed from: a */
    public static a m3083a(String str) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("map size of get is before:");
        sbM1765j.append(f4208a.size());
        Logger.m3436v("RequestUtil", sbM1765j.toString());
        a aVar = f4208a.get(str);
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("map size of get is after:");
        sbM1765j2.append(f4208a.size());
        Logger.m3436v("RequestUtil", sbM1765j2.toString());
        return aVar;
    }

    /* renamed from: b */
    public static void m3084b(String str, a aVar) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("map size of put is before:");
        sbM1765j.append(f4208a.size());
        Logger.m3436v("RequestUtil", sbM1765j.toString());
        f4208a.put(str, aVar);
        Logger.m3436v("RequestUtil", "map size of put is after:" + f4208a.size());
    }
}
