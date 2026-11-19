package com.taobao.agoo.p074a.p075a;

import android.text.TextUtils;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.JsonUtility;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.a.a.d */
/* loaded from: classes.dex */
public class C2004d extends AbstractC2002b {
    public static final String JSON_CMD_DISABLEPUSH = "disablePush";
    public static final String JSON_CMD_ENABLEPUSH = "enablePush";

    /* renamed from: a */
    public String f6436a;

    /* renamed from: b */
    public String f6437b;

    /* renamed from: c */
    public String f6438c;

    /* renamed from: a */
    public byte[] m5816a() {
        try {
            JsonUtility.JsonObjectBuilder jsonObjectBuilder = new JsonUtility.JsonObjectBuilder();
            jsonObjectBuilder.put(AbstractC2002b.JSON_CMD, this.f6420e).put(Constants.KEY_APP_KEY, this.f6436a);
            if (TextUtils.isEmpty(this.f6437b)) {
                jsonObjectBuilder.put("utdid", this.f6438c);
            } else {
                jsonObjectBuilder.put("deviceId", this.f6437b);
            }
            String string = jsonObjectBuilder.build().toString();
            ALog.m5729i("SwitchDO", "buildData", Constants.KEY_DATA, string);
            return string.getBytes("utf-8");
        } catch (Throwable th) {
            ALog.m5727e("SwitchDO", "buildData", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m5815a(String str, String str2, String str3, boolean z) {
        C2004d c2004d = new C2004d();
        c2004d.f6436a = str;
        c2004d.f6437b = str2;
        c2004d.f6438c = str3;
        if (z) {
            c2004d.f6420e = JSON_CMD_ENABLEPUSH;
        } else {
            c2004d.f6420e = JSON_CMD_DISABLEPUSH;
        }
        return c2004d.m5816a();
    }
}
