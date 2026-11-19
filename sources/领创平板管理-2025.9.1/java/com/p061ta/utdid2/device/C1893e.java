package com.p061ta.utdid2.device;

import com.p061ta.p062a.p064b.C1869a;
import com.p061ta.p062a.p065c.C1882f;

/* renamed from: com.ta.utdid2.device.e */
/* loaded from: classes.dex */
public class C1893e {
    /* renamed from: a */
    public static boolean m5443a(C1869a c1869a) {
        String str = "";
        try {
            str = new String(c1869a.data, "UTF-8");
        } catch (Exception e) {
            C1882f.m5404a("", e);
        }
        if (C1869a.m5373a(str, c1869a.f5986a)) {
            return C1890b.m5428a(C1890b.m5427a(str).f6025d);
        }
        return false;
    }
}
