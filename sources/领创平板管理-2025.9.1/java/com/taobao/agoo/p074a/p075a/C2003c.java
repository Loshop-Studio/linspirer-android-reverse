package com.taobao.agoo.p074a.p075a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.JsonUtility;
import com.taobao.accs.utl.RomInfoCollecter;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.a.a.c */
/* loaded from: classes.dex */
public class C2003c extends AbstractC2002b {
    public static final String JSON_CMD_REGISTER = "register";

    /* renamed from: a */
    public String f6421a;

    /* renamed from: b */
    public String f6422b;

    /* renamed from: c */
    public String f6423c;

    /* renamed from: d */
    public String f6424d = String.valueOf(221);

    /* renamed from: f */
    public String f6425f;

    /* renamed from: g */
    public String f6426g;

    /* renamed from: h */
    public String f6427h;

    /* renamed from: i */
    public String f6428i;

    /* renamed from: j */
    public String f6429j;

    /* renamed from: k */
    public String f6430k;

    /* renamed from: l */
    public String f6431l;

    /* renamed from: m */
    public String f6432m;

    /* renamed from: n */
    public String f6433n;

    /* renamed from: o */
    public String f6434o;

    /* renamed from: p */
    public String f6435p;

    /* renamed from: a */
    public byte[] m5814a() {
        try {
            String string = new JsonUtility.JsonObjectBuilder().put(AbstractC2002b.JSON_CMD, this.f6420e).put(Constants.KEY_APP_KEY, this.f6421a).put("utdid", this.f6422b).put("appVersion", this.f6423c).put(Constants.KEY_SDK_VERSION, this.f6424d).put(Constants.KEY_TTID, this.f6425f).put(Constants.KEY_PACKAGE_NAME, this.f6426g).put("notifyEnable", this.f6427h).put("romInfo", this.f6428i).put("c0", this.f6429j).put("c1", this.f6430k).put("c2", this.f6431l).put("c3", this.f6432m).put("c4", this.f6433n).put("c5", this.f6434o).put("c6", this.f6435p).build().toString();
            ALog.m5729i("RegisterDO", "buildData", Constants.KEY_DATA, string);
            return string.getBytes("utf-8");
        } catch (Throwable th) {
            ALog.m5727e("RegisterDO", "buildData", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m5813a(Context context, String str, String str2) {
        C2003c c2003c;
        String deviceId;
        String packageName;
        String str3;
        try {
            deviceId = UtilityImpl.getDeviceId(context);
            packageName = context.getPackageName();
            str3 = GlobalClientInfo.getInstance(context).getPackageInfo().versionName;
        } catch (Throwable th) {
            th = th;
            c2003c = null;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(deviceId) && !TextUtils.isEmpty(str3)) {
            c2003c = new C2003c();
            try {
                c2003c.f6420e = JSON_CMD_REGISTER;
                c2003c.f6421a = str;
                c2003c.f6422b = deviceId;
                c2003c.f6423c = str3;
                c2003c.f6425f = str2;
                c2003c.f6426g = packageName;
                c2003c.f6429j = Build.BRAND;
                c2003c.f6430k = Build.MODEL;
                c2003c.f6431l = null;
                c2003c.f6432m = null;
                c2003c.f6427h = AdapterUtilityImpl.isNotificationEnabled(context);
                c2003c.f6428i = RomInfoCollecter.getCollecter().collect();
            } catch (Throwable th2) {
                th = th2;
                try {
                    ALog.m5732w("RegisterDO", "buildRegister", th.getMessage());
                    if (c2003c == null) {
                        return null;
                    }
                    return c2003c.m5814a();
                } finally {
                    if (c2003c != null) {
                        c2003c.m5814a();
                    }
                }
            }
            return c2003c.m5814a();
        }
        ALog.m5728e("RegisterDO", "buildRegister param null", Constants.KEY_APP_KEY, str, "utdid", deviceId, "appVersion", str3);
        return null;
    }
}
