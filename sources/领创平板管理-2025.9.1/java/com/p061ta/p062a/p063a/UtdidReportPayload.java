package com.p061ta.p062a.p063a;

import android.content.Context;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.p061ta.p062a.UtDeviceApplicationContext;
import com.p061ta.utdid2.p066a.p067a.UtStringUtilities;
import java.util.HashMap;
import org.json.JSONObject;

/* renamed from: com.ta.a.a.a */
/* loaded from: classes.dex */
public class UtdidReportPayload {
    /* renamed from: a */
    public static String m5370a(String str) {
        Context context = UtDeviceApplicationContext.m5365a().getContext();
        return context == null ? "" : UtStringUtilities.m5418e(String.format("{\"type\":\"%s\",\"timestamp\":%s,\"data\":%s}", "audid", UtDeviceApplicationContext.m5365a().m5367a(), m5371a(str, "", "", context.getPackageName())));
    }

    /* renamed from: a */
    public static String m5371a(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put("audid", str2);
        map.put("utdid", str);
        map.put("appkey", str3);
        map.put(DispatchConstants.APP_NAME, str4);
        return new JSONObject(UtStringUtilities.m5416a(map)).toString();
    }
}
