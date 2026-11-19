package com.huawei.updatesdk.p048b.p058h;

import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.gyf.immersionbar.OSUtils;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.b.h.a */
/* loaded from: classes.dex */
public final class C1639a {

    /* renamed from: b */
    public static final Map<Integer, String> f4715b = new HashMap();

    /* renamed from: c */
    public static C1639a f4716c = new C1639a();

    /* renamed from: a */
    public int f4717a;

    static {
        f4715b.put(1, "1.0");
        f4715b.put(2, "1.5");
        f4715b.put(3, "1.6");
        f4715b.put(4, "2.0");
        f4715b.put(5, "2.0");
        f4715b.put(6, "2.3");
        f4715b.put(7, "3.0");
        f4715b.put(8, "3.0.5");
        f4715b.put(8, "3.1");
        f4715b.put(9, "4.0");
        f4715b.put(10, "4.1");
        f4715b.put(11, DispatchConstants.VER_CODE);
        f4715b.put(12, "5.1");
    }

    public C1639a() {
        this.f4717a = 0;
        int iM3755c = m3755c();
        this.f4717a = iM3755c;
        if (iM3755c == 0) {
            this.f4717a = m3754b();
        }
        StringBuilder sbM1765j = C0948f6.m1765j("emuiVersion:");
        sbM1765j.append(this.f4717a);
        C1584a.m3514a("EMUISupportUtil", sbM1765j.toString());
    }

    /* renamed from: a */
    private String m3753a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split("_");
            if (strArrSplit.length == 2) {
                return strArrSplit[1];
            }
        }
        return "";
    }

    /* renamed from: b */
    private int m3754b() {
        String strM3753a = m3753a(C1594c.m3561a(OSUtils.KEY_EMUI_VERSION_NAME, ""));
        if (TextUtils.isEmpty(strM3753a)) {
            return 0;
        }
        for (Map.Entry<Integer, String> entry : f4715b.entrySet()) {
            if (strM3753a.equals(entry.getValue())) {
                return entry.getKey().intValue();
            }
        }
        return 0;
    }

    /* renamed from: c */
    private int m3755c() {
        return C1594c.m3558a("ro.build.hw_emui_api_level", 0);
    }

    /* renamed from: d */
    public static C1639a m3756d() {
        return f4716c;
    }

    /* renamed from: a */
    public int m3757a() {
        return this.f4717a;
    }
}
