package com.huawei.hem;

import android.content.Context;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.huawei.hem.a8 */
/* loaded from: classes.dex */
public class C0820a8 {

    /* renamed from: a */
    public Map<String, Map<String, Map<String, String>>> f2186a = new ConcurrentHashMap(16);

    /* renamed from: b */
    public Map<String, Long> f2187b = new ConcurrentHashMap(16);

    /* renamed from: c */
    public C0872c8 f2188c;

    /* renamed from: d */
    public C0872c8 f2189d;

    /* renamed from: e */
    public C1352v8 f2190e;

    public C0820a8(C0872c8 c0872c8, C0872c8 c0872c82, C1352v8 c1352v8) {
        this.f2189d = c0872c82;
        this.f2188c = c0872c8;
        this.f2190e = c1352v8;
        c1352v8.f3931d = this;
    }

    /* renamed from: a */
    public Map<String, String> m1300a(GrsBaseInfo grsBaseInfo, String str, C0846b8 c0846b8, Context context) throws UnsupportedEncodingException {
        Map<String, Map<String, String>> map = this.f2186a.get(grsBaseInfo.getGrsParasKey(false, true, context));
        if (map == null || map.isEmpty()) {
            return new HashMap();
        }
        Long l = this.f2187b.get(grsBaseInfo.getGrsParasKey(false, true, context));
        if (LauncherMenuHelper.m2986g(l)) {
            c0846b8.f2283a = 2;
        } else {
            if (LauncherMenuHelper.m2987h(l, InactivityTimer.INACTIVITY_DELAY_MS)) {
                this.f2190e.m2859b(new C1152n8(grsBaseInfo, context), null, str, this.f2189d);
            }
            c0846b8.f2283a = 1;
        }
        return map.get(str);
    }

    /* renamed from: b */
    public void m1301b(GrsBaseInfo grsBaseInfo, C1252r8 c1252r8, Context context, C1152n8 c1152n8) throws UnsupportedEncodingException {
        if (c1252r8.f3610h == 2) {
            Logger.m3438w("a", "update cache from server failed");
            return;
        }
        if (c1152n8.f3291c.size() != 0) {
            C0872c8 c0872c8 = this.f2188c;
            c0872c8.f2329a.putString("geoipCountryCode", c1252r8.f3609g);
            C0872c8 c0872c82 = this.f2188c;
            c0872c82.f2329a.putString("geoipCountryCodetime", c1252r8.f3612j);
            return;
        }
        String grsParasKey = grsBaseInfo.getGrsParasKey(false, true, context);
        C0872c8 c0872c83 = this.f2188c;
        c0872c83.f2329a.putString(grsParasKey, c1252r8.f3609g);
        C0872c8 c0872c84 = this.f2188c;
        c0872c84.f2329a.putString(CompilerOutline.m1760e(grsParasKey, "time"), c1252r8.f3612j);
        this.f2186a.put(grsParasKey, C1451z7.m3139d(c1252r8.f3609g));
        this.f2187b.put(grsParasKey, Long.valueOf(Long.parseLong(c1252r8.f3612j)));
    }
}
