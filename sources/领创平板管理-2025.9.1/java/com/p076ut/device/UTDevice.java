package com.p076ut.device;

import android.content.Context;
import com.p061ta.utdid2.device.UtdidValueGenerator;

/* loaded from: classes.dex */
public class UTDevice {
    public static String getUtdid(Context context) {
        return com.p061ta.utdid2.device.UTDevice.getUtdid(context);
    }

    public static void setExtendFactor(String str) {
        UtdidValueGenerator.setExtendFactor(str);
    }
}
