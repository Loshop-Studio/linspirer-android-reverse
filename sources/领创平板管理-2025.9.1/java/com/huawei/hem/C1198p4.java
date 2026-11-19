package com.huawei.hem;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.R;
import com.android.launcher3.activity.AdminLoginActivity;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.DialogUtil;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AppCheckUpdateHelper.java */
/* renamed from: com.huawei.hem.p4 */
/* loaded from: classes.dex */
public class C1198p4 extends C1248r4 {

    /* renamed from: c */
    public static Activity f3427c;

    /* renamed from: d */
    public static C1198p4 f3428d;

    /* renamed from: a */
    public InterfaceC0945f3 f3429a;

    /* renamed from: b */
    public Map<String, InterfaceC0956fe> f3430b = new HashMap();

    /* compiled from: AppCheckUpdateHelper.java */
    /* renamed from: com.huawei.hem.p4$a */
    public class a extends AbstractC1158ne {

        /* renamed from: a */
        public final /* synthetic */ String f3431a;

        /* renamed from: b */
        public final /* synthetic */ ItemApp f3432b;

        public a(String str, ItemApp itemApp) {
            this.f3431a = str;
            this.f3432b = itemApp;
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void completed(InterfaceC0956fe interfaceC0956fe) {
            DialogUtil.hideDialog();
            C1198p4.this.f3430b.remove(this.f3432b.getPackagename());
            InterfaceC0945f3 interfaceC0945f3 = C1198p4.this.f3429a;
            if (interfaceC0945f3 != null) {
                ItemApp itemApp = this.f3432b;
                AdminLoginActivity adminLoginActivity = (AdminLoginActivity) interfaceC0945f3;
                String strMo1796j = interfaceC0956fe.mo1796j();
                String md5sum = itemApp.getMd5sum();
                if (TextUtils.isEmpty(md5sum)) {
                    adminLoginActivity.m1176g(strMo1796j);
                } else if (C0850bc.m1416z(strMo1796j, md5sum)) {
                    adminLoginActivity.m1176g(strMo1796j);
                } else {
                    C0850bc.m1413w(adminLoginActivity, adminLoginActivity.getResources().getString(R.string.text_apk_check_not_pass), 0);
                    new File(strMo1796j).delete();
                }
            }
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void error(InterfaceC0956fe interfaceC0956fe, Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j(" -- download app ,packageName = ");
            sbM1765j.append(this.f3431a);
            sbM1765j.append(" -- error = ");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("AppCheckUpdateHelper", string);
            C0850bc.m1411u("AppCheckUpdateHelper", string);
            C1198p4.this.f3430b.remove(this.f3431a);
            C0850bc.m1415y(C1198p4.this.mContext, R.string.text_downloading_fail);
            interfaceC0956fe.pause();
            if (C1198p4.this.f3430b.size() <= 0) {
                DialogUtil.hideDialog();
            }
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void paused(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void pending(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void progress(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void warn(InterfaceC0956fe interfaceC0956fe) {
        }
    }

    /* renamed from: a */
    public final void m2459a(ItemApp itemApp, String str) {
        InterfaceC0956fe interfaceC0956fe;
        String packagename = itemApp.getPackagename();
        C0948f6.m1779x("AppCheckUpdateHelper -- download app packageName = ", packagename);
        if (this.f3430b.containsKey(packagename)) {
            InterfaceC0956fe interfaceC0956fe2 = this.f3430b.get(packagename);
            this.f3430b.put(packagename, interfaceC0956fe2);
            interfaceC0956fe = interfaceC0956fe2;
        } else {
            if (C1333ue.m2788b() == null) {
                throw null;
            }
            C1007he c1007he = new C1007he(str);
            c1007he.m1947z(C0948f6.m1763h(new StringBuilder(), C1395x1.f4038a, packagename, ".apk"), false);
            interfaceC0956fe = c1007he;
        }
        if (interfaceC0956fe == null) {
            C0850bc.m1403m("AppCheckUpdateHelper -- download task empty can not  downloading");
        } else {
            interfaceC0956fe.mo1802x(new a(packagename, itemApp));
            interfaceC0956fe.start();
        }
    }
}
