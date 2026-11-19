package com.p061ta.utdid2.p066a.p067a;

import com.p061ta.p062a.p065c.UtCallsiteLogger;

/* renamed from: com.ta.utdid2.a.a.e */
/* loaded from: classes.dex */
public class UtSystemProperties {
    public static String get(String str, String str2) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e) {
            UtCallsiteLogger.m5406b("", e, new Object[0]);
            return str2;
        }
    }
}
