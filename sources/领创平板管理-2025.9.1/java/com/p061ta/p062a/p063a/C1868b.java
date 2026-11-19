package com.p061ta.p062a.p063a;

import android.text.TextUtils;
import com.p061ta.p062a.p065c.C1881e;
import com.p061ta.p062a.p065c.C1882f;
import com.p061ta.utdid2.p066a.p067a.C1883a;

/* renamed from: com.ta.a.a.b */
/* loaded from: classes.dex */
public class C1868b {
    /* renamed from: b */
    public static String m5372b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(C1883a.encode(C1881e.m5399b(str.getBytes()), 2), "UTF-8");
        } catch (Exception e) {
            C1882f.m5403a("", e, new Object[0]);
            return "";
        }
    }
}
