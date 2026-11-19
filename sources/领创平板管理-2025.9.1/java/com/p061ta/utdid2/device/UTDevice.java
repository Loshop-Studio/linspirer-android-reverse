package com.p061ta.utdid2.device;

import android.content.Context;
import com.p061ta.p062a.C1866a;

/* loaded from: classes.dex */
public class UTDevice {
    @Deprecated
    public static String getUtdid(Context context) {
        if (context == null) {
            return "ffffffffffffffffffffffff";
        }
        C1866a.m5365a().m5369a(context);
        return C1889a.m5422a().getUtdid(context);
    }
}
