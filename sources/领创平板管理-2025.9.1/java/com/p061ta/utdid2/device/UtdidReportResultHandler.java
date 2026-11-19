package com.p061ta.utdid2.device;

import com.p061ta.p062a.p064b.UtdidTransportResult;
import com.p061ta.p062a.p065c.UtCallsiteLogger;

/* renamed from: com.ta.utdid2.device.e */
/* loaded from: classes.dex */
public class UtdidReportResultHandler {
    /* renamed from: a */
    public static boolean m5443a(UtdidTransportResult c1869a) {
        String str = "";
        try {
            str = new String(c1869a.data, "UTF-8");
        } catch (Exception e) {
            UtCallsiteLogger.m5404a("", e);
        }
        if (UtdidTransportResult.m5373a(str, c1869a.f5986a)) {
            return UtdidBusinessResponse.m5428a(UtdidBusinessResponse.m5427a(str).f6025d);
        }
        return false;
    }
}
