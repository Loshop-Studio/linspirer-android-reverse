package com.p061ta.p062a.p064b;

import android.text.TextUtils;
import com.p061ta.p062a.p065c.C1878b;
import com.p061ta.p062a.p065c.C1882f;
import com.p061ta.utdid2.p066a.p067a.C1883a;

/* renamed from: com.ta.a.b.a */
/* loaded from: classes.dex */
public class C1869a {

    /* renamed from: a */
    public int f5985a = -1;
    public long timestamp = 0;

    /* renamed from: a */
    public String f5986a = "";
    public byte[] data = null;

    /* renamed from: b */
    public long f5987b = 0;

    /* renamed from: a */
    public static boolean m5373a(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                C1882f.m5407b("", "result", str, "signature", str2);
                if (str2.equals(C1883a.encodeToString(C1878b.m5392d(str).getBytes(), 2))) {
                    C1882f.m5404a("", "signature is ok");
                    return true;
                }
                C1882f.m5404a("", "signature is error");
            }
        } catch (Exception e) {
            C1882f.m5404a("", e);
        }
        return false;
    }
}
