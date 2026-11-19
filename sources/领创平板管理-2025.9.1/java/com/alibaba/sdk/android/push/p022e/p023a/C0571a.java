package com.alibaba.sdk.android.push.p022e.p023a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.alibaba.sdk.android.ams.common.p007a.C0494a;
import com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b;
import com.alibaba.sdk.android.ams.common.util.C0506b;
import com.alibaba.sdk.android.ams.common.util.StringUtil;
import com.alibaba.sdk.android.push.common.util.AppInfoUtil;
import com.alibaba.sdk.android.push.common.util.p019a.EnumC0566d;
import com.huawei.hem.CompilerOutline;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.push.e.a.a */
/* loaded from: classes.dex */
public class C0571a implements InterfaceC0497b {

    /* renamed from: b */
    public String f1203b = null;

    /* renamed from: c */
    public String f1204c = null;

    /* renamed from: d */
    public String f1205d = null;

    /* renamed from: a */
    public SharedPreferences f1202a = C0494a.m474f();

    /* renamed from: a */
    public static int m786a(Context context, String str) {
        return context.getResources().getIdentifier(str, "string", context.getPackageName());
    }

    /* renamed from: b */
    public static String m787b(Context context, String str) {
        try {
            return context.getResources().getString(m786a(context, str));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: f */
    private String m788f() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("mps_deviceId_");
        sbM1765j.append(mo480a());
        return sbM1765j.toString();
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: a */
    public String mo480a() throws PackageManager.NameNotFoundException {
        if (!StringUtil.isEmpty(this.f1203b)) {
            return this.f1203b;
        }
        String strM469a = C0494a.m469a("com.alibaba.app.appkey");
        this.f1203b = strM469a;
        if (!StringUtil.isEmpty(strM469a)) {
            return this.f1203b;
        }
        String strM787b = m787b(C0494a.m470b(), "ams_appKey");
        this.f1203b = strM787b;
        return strM787b;
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: a */
    public String mo481a(Map<String, String> map, String str) throws NumberFormatException {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(map.keySet());
        arrayList.add("appSecret");
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!str2.equals(EnumC0566d.f1183u)) {
                boolean zEquals = "appSecret".equals(str2);
                sb.append(str2);
                sb.append(zEquals ? mo488d() : map.get(str2));
            }
        }
        if (map.containsKey(EnumC0566d.f1183u)) {
            int i = Integer.parseInt(map.get(EnumC0566d.f1183u));
            map.remove(EnumC0566d.f1183u);
            if (i > EnumC0566d.m773b()) {
                return C0506b.m521a().m537a(sb.toString());
            }
        }
        return C0506b.m521a().m538b(sb.toString());
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: a */
    public void mo482a(String str) {
        this.f1205d = str;
        this.f1202a.edit().putString(m788f(), str).putLong("mps_device_store_time", System.currentTimeMillis()).commit();
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: a */
    public void mo483a(String str, String str2) {
        this.f1202a.edit().putString(str, str2).commit();
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: b */
    public String mo484b() {
        String str = this.f1205d;
        if (str != null) {
            return str;
        }
        String string = this.f1202a.getString(m788f(), "");
        if (System.currentTimeMillis() - this.f1202a.getLong("mps_device_store_time", 0L) > 604800000) {
            return "";
        }
        this.f1205d = string;
        return string;
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: b */
    public void mo485b(String str) {
        this.f1202a.edit().putString("mps_utdid", str).commit();
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: c */
    public String mo486c() {
        return this.f1202a.getString("mps_utdid", "");
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: c */
    public String mo487c(String str) {
        return this.f1202a.getString(str, "");
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: d */
    public String mo488d() throws PackageManager.NameNotFoundException {
        if (!StringUtil.isEmpty(this.f1204c)) {
            return this.f1204c;
        }
        String strM469a = C0494a.m469a("com.alibaba.app.appsecret");
        this.f1204c = strM469a;
        if (!StringUtil.isEmpty(strM469a)) {
            return this.f1204c;
        }
        String strM787b = m787b(C0494a.m470b(), "ams_appSecret");
        this.f1204c = strM787b;
        return strM787b;
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: d */
    public void mo489d(String str) {
        this.f1203b = str;
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: e */
    public String mo490e() {
        return AppInfoUtil.getAppVersionName(C0494a.m470b());
    }

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b
    /* renamed from: e */
    public void mo491e(String str) {
        this.f1204c = str;
    }
}
