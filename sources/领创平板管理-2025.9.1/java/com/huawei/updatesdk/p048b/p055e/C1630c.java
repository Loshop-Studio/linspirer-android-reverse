package com.huawei.updatesdk.p048b.p055e;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1025i7;
import com.huawei.hem.C1126m7;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p034a.p043b.p046c.AsyncTaskC1602b;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1605c;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d;
import com.huawei.updatesdk.p048b.p053c.AbstractC1618c;
import com.huawei.updatesdk.p048b.p053c.C1617b;
import com.huawei.updatesdk.p048b.p058h.C1641c;
import com.huawei.updatesdk.service.appmgr.bean.C1648a;
import com.huawei.updatesdk.service.appmgr.bean.C1649b;
import java.util.Iterator;

/* renamed from: com.huawei.updatesdk.b.e.c */
/* loaded from: classes.dex */
public class C1630c extends AbstractC1628a {

    /* renamed from: a */
    public static String f4702a;

    /* renamed from: e */
    private String m3735e() {
        String strM2039b = null;
        try {
            Context contextM3592a = C1598a.m3591c().m3592a();
            C1025i7 c1025i7 = new C1025i7();
            Intent intent = new Intent("com.huawei.appmarket.appmarket.intent.action.AppDetail.withdetailId");
            c1025i7.f2900g = contextM3592a.getApplicationContext();
            C1025i7.a aVar = C1025i7.a.ACTIVITY;
            c1025i7.f2902i = intent;
            if (aVar == null) {
                C1126m7.f3241b.m2349a("ServiceVerifyKit", "error input type");
            } else {
                c1025i7.f2903j = aVar;
            }
            AbstractC1618c abstractC1618cM3690a = C1617b.m3690a();
            Iterator<String> it = abstractC1618cM3690a.mo3688g().iterator();
            while (it.hasNext()) {
                c1025i7.m2038a(abstractC1618cM3690a.mo3684a(), it.next());
            }
            strM2039b = c1025i7.m2039b();
            C1581a.m3501b("DefaultTaskInit", "UpdateSDK get market packagename from verify kit is: " + strM2039b);
            return strM2039b;
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("UpdateSDK genVerifiedPackageName error: ");
            sbM1765j.append(th.toString());
            C1581a.m3502c("DefaultTaskInit", sbM1765j.toString());
            return strM2039b;
        }
    }

    /* renamed from: f */
    private void m3736f() {
        String string;
        C1605c.m3624c(mo3730a(C1598a.m3591c().m3592a()));
        C1606d c1606dM3620c = new AsyncTaskC1602b(new C1648a(null), null).m3620c();
        if (c1606dM3620c.m3641f()) {
            C1649b c1649b = (C1649b) c1606dM3620c;
            if (c1649b.m3801g() != null) {
                f4702a = c1649b.m3801g().m3805d();
                StringBuilder sbM1765j = C0948f6.m1765j("getPackageName from store: ");
                sbM1765j.append(f4702a);
                string = sbM1765j.toString();
            } else {
                StringBuilder sbM1765j2 = C0948f6.m1765j("getPackageName from store: error");
                sbM1765j2.append(c1649b.toString());
                string = sbM1765j2.toString();
            }
            C1581a.m3501b("DefaultTaskInit", string);
        }
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: a */
    public String mo3729a() {
        return "com.huawei.updatesdk";
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: a */
    public String mo3730a(Context context) {
        return C1641c.m3775d(context, "upsdk_store_url");
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: b */
    public String mo3731b() {
        return f4702a;
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: d */
    public void mo3734d() {
        if (TextUtils.isEmpty(f4702a)) {
            String strM3735e = m3735e();
            f4702a = strM3735e;
            if (TextUtils.isEmpty(strM3735e)) {
                m3736f();
            }
            StringBuilder sbM1765j = C0948f6.m1765j("UpdateSDK genVerifiedPackageName is: ");
            sbM1765j.append(f4702a);
            C1581a.m3501b("DefaultTaskInit", sbM1765j.toString());
        }
    }
}
