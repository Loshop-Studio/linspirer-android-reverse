package com.alibaba.sdk.android.push.common.util.p020b;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.push.common.util.b.a */
/* loaded from: classes.dex */
public class PushConnectivityConstants {

    /* renamed from: com.alibaba.sdk.android.push.common.util.b.a$a */
    public enum a {
        UNKNOWN(1),
        WIFI(2),
        G2(3),
        G3(4),
        G4(5);


        /* renamed from: f */
        public static Map<Integer, a> f1192f = new HashMap();

        /* renamed from: g */
        public int f1194g;

        static {
            for (a aVar : values()) {
                f1192f.put(Integer.valueOf(aVar.f1194g), aVar);
            }
        }

        a(int i) {
            this.f1194g = i;
        }
    }
}
