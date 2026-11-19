package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.huawei.hem.e8 */
/* loaded from: classes.dex */
public class C0924e8 {

    /* renamed from: b */
    public static Map<String, C0924e8> f2516b = new ConcurrentHashMap(16);

    /* renamed from: a */
    public AbstractC0898d8 f2517a;

    public C0924e8(Context context, GrsBaseInfo grsBaseInfo, boolean z) {
        C0976g8 c0976g8 = new C0976g8(context, z);
        this.f2517a = c0976g8;
        if (!c0976g8.f2390d) {
            this.f2517a = new C0950f8(context, z);
        }
        f2516b.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
    }

    /* renamed from: a */
    public static C0924e8 m1669a(String str, GrsBaseInfo grsBaseInfo) {
        Map<String, C0924e8> map = f2516b;
        StringBuilder sbM1765j = C0948f6.m1765j(str);
        sbM1765j.append(grsBaseInfo.uniqueCode());
        return map.get(sbM1765j.toString());
    }

    /* renamed from: d */
    public static void m1670d(Context context, GrsBaseInfo grsBaseInfo) {
        C0847b9 c0847b9;
        C0924e8 c0924e8M1669a = m1669a(context.getPackageName(), grsBaseInfo);
        if (c0924e8M1669a == null || (c0847b9 = c0924e8M1669a.f2517a.f2387a) == null) {
            return;
        }
        Logger.m3434i("LocalManagerProxy", "appGrs is not null and clear services.");
        Map<String, C0899d9> map = c0847b9.f2285b;
        if (map != null) {
            map.clear();
        }
    }

    /* renamed from: b */
    public String m1671b(Context context, C0820a8 c0820a8, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z) {
        Map<String, String> mapM1571d = this.f2517a.m1571d(context, c0820a8, grsBaseInfo, str, z);
        if (mapM1571d != null) {
            return mapM1571d.get(str2);
        }
        Logger.m3440w("AbstractLocalManager", "addresses not found by routeby in local config{%s}", str);
        return null;
    }

    /* renamed from: c */
    public Map<String, String> m1672c(Context context, C0820a8 c0820a8, GrsBaseInfo grsBaseInfo, String str, boolean z) {
        return this.f2517a.m1571d(context, c0820a8, grsBaseInfo, str, z);
    }
}
