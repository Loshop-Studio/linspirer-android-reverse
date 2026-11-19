package com.p061ta.p062a.p063a;

import android.text.TextUtils;
import com.p061ta.p062a.p065c.UtdidStreamCipher;
import com.p061ta.p062a.p065c.UtCallsiteLogger;
import com.p061ta.utdid2.p066a.p067a.UtBase64Encoder;

/* renamed from: com.ta.a.a.b */
/* loaded from: classes.dex */
public class UtdidReportEncoder {
    /* renamed from: b */
    public static String m5372b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(UtBase64Encoder.encode(UtdidStreamCipher.m5399b(str.getBytes()), 2), "UTF-8");
        } catch (Exception e) {
            UtCallsiteLogger.m5403a("", e, new Object[0]);
            return "";
        }
    }
}
