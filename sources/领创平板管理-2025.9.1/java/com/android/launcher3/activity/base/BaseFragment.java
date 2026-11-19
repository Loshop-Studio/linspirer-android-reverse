package com.android.launcher3.activity.base;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.asm.Label;
import com.android.launcher3.R;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.CheckUpdateParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.CommonDialog;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.AbstractC1158ne;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0876cc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1007he;
import com.huawei.hem.C1171o2;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1333ue;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC0956fe;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {

    /* renamed from: a */
    public Context f1800a;

    /* renamed from: b */
    public GesturePasswordDao f1801b;

    /* renamed from: c */
    public C1424y5 f1802c;

    /* renamed from: e */
    public View f1804e;

    /* renamed from: f */
    public C1255rb f1805f;

    /* renamed from: d */
    public boolean f1803d = false;

    /* renamed from: g */
    public Map<String, InterfaceC0956fe> f1806g = new HashMap();

    /* renamed from: h */
    public String f1807h = "";

    /* renamed from: com.android.launcher3.activity.base.BaseFragment$a */
    public class C0642a extends AbstractC1158ne {

        /* renamed from: a */
        public final /* synthetic */ String f1808a;

        /* renamed from: b */
        public final /* synthetic */ ItemApp f1809b;

        public C0642a(String str, ItemApp itemApp) {
            this.f1808a = str;
            this.f1809b = itemApp;
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void completed(InterfaceC0956fe interfaceC0956fe) {
            BaseFragment baseFragment = BaseFragment.this;
            ItemApp itemApp = this.f1809b;
            if (baseFragment == null) {
                throw null;
            }
            DialogUtil.hideDialog();
            baseFragment.f1806g.remove(itemApp.getPackagename());
            String strMo1796j = interfaceC0956fe.mo1796j();
            String md5sum = itemApp.getMd5sum();
            if (TextUtils.isEmpty(md5sum)) {
                baseFragment.m1222h(strMo1796j);
            } else if (C0850bc.m1416z(strMo1796j, md5sum)) {
                baseFragment.m1222h(strMo1796j);
            } else {
                C0850bc.m1415y(baseFragment.f1800a, R.string.text_apk_check_not_pass);
                new File(strMo1796j).delete();
            }
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void error(InterfaceC0956fe interfaceC0956fe, Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j(" -- download app ,packageName = ");
            sbM1765j.append(this.f1808a);
            sbM1765j.append(" -- error = ");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("BaseFragment", string);
            C0850bc.m1411u("BaseFragment", string);
            BaseFragment.this.f1806g.remove(this.f1808a);
            C0850bc.m1415y(BaseFragment.this.f1800a, R.string.text_downloading_fail);
            interfaceC0956fe.pause();
            if (BaseFragment.this.f1806g.size() <= 0) {
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
            DialogUtil.hideDialog();
        }
    }

    /* renamed from: com.android.launcher3.activity.base.BaseFragment$b */
    public class C0643b extends LTKListResponseListener<ItemApp> {
        public C0643b(Class cls) {
            super(cls);
        }

        @Override // com.android.launcher3.network.response.LTKListResponseListener
        public void handleResult(List<ItemApp> list) {
            C0850bc.m1403m("BaseFragment -- check update sucess");
            DialogUtil.hideDialog();
            BaseFragment.m1215a(BaseFragment.this, list);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailed(Response response) {
            C0850bc.m1403m("BaseFragment -- check update failed");
            DialogUtil.hideDialog();
            if (response == null) {
                C0850bc.m1414x(BaseFragment.this.f1800a, R.string.network_error_note);
                return;
            }
            String string = BaseFragment.this.getString(R.string.request_fail_with_code);
            StringBuilder sbM1765j = C0948f6.m1765j("");
            sbM1765j.append(response.getCode());
            C0850bc.m1413w(BaseFragment.this.f1800a, String.format(string, sbM1765j.toString()), 0);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailureByNet(Object obj) {
            C0850bc.m1403m("BaseFragment -- check update failure");
            DialogUtil.hideDialog();
            C0850bc.m1414x(BaseFragment.this.f1800a, R.string.network_error_note);
        }
    }

    /* renamed from: a */
    public static void m1215a(BaseFragment baseFragment, List list) {
        if (baseFragment == null) {
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ItemApp itemApp = (ItemApp) it.next();
            if (C0850bc.m1406p(baseFragment.f1800a, itemApp.getPackagename(), itemApp.getVersioncode())) {
                arrayList.add(itemApp);
            } else {
                StringBuilder sbM1765j = C0948f6.m1765j("BaseFragment");
                sbM1765j.append(itemApp.getPackagename());
                sbM1765j.append(" -- is no need update");
                C0850bc.m1403m(sbM1765j.toString());
            }
        }
        if (AbstractC1102l9.m2272M(arrayList)) {
            C0850bc.m1415y(baseFragment.f1800a, R.string.no_upgrade_note);
            return;
        }
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(baseFragment.f1800a, R.string.text_has_newversion, R.string.text_update_immediately, R.string.text_recall_again, 0.5d, 0.5d, false);
        commonDialog.setDialogOnClickEvent(new C1171o2(baseFragment, arrayList));
    }

    /* renamed from: b */
    public boolean m1216b() {
        boolean zCanRequestPackageInstalls = true;
        if (this.f1800a.getApplicationInfo().targetSdkVersion <= 25) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 26 && !(zCanRequestPackageInstalls = this.f1800a.getPackageManager().canRequestPackageInstalls())) {
            startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:com.android.launcher3")), 100);
        }
        return zCanRequestPackageInstalls;
    }

    /* renamed from: c */
    public void m1217c(List<String> list) {
        if (C1424y5.b.f4202a.m3023R()) {
            return;
        }
        if (!new C0876cc(this.f1800a).m1505a()) {
            C0850bc.m1415y(this.f1800a, R.string.network_unable_note);
            return;
        }
        try {
            DialogUtil.showDialog(this.f1800a, getString(R.string.checking_upgrade));
            CheckUpdateParams checkUpdateParams = new CheckUpdateParams(this.f1800a);
            checkUpdateParams.setPackages(list);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(checkUpdateParams));
            v2Params.setMethod(RequestUrl.CHECK_UPDATE_METHOD);
            C1255rb c1255rb = this.f1805f;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new C0643b(ItemApp.class));
        } catch (Exception e) {
            e.printStackTrace();
            DialogUtil.hideDialog();
            C0850bc.m1414x(this.f1800a, R.string.network_error_note);
        }
    }

    /* renamed from: d */
    public void m1218d(ItemApp itemApp, String str) {
        InterfaceC0956fe interfaceC0956fe;
        String packagename = itemApp.getPackagename();
        C0948f6.m1779x("BaseFragment -- download app packageName = ", packagename);
        if (this.f1806g.containsKey(packagename)) {
            InterfaceC0956fe interfaceC0956fe2 = this.f1806g.get(packagename);
            this.f1806g.put(packagename, interfaceC0956fe2);
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
            C0850bc.m1403m("BaseFragmentdownload task empty can not  downloading");
        } else {
            interfaceC0956fe.mo1802x(new C0642a(packagename, itemApp));
            interfaceC0956fe.start();
        }
    }

    /* renamed from: e */
    public abstract int mo1219e();

    /* renamed from: f */
    public void mo1220f() {
    }

    /* renamed from: g */
    public void mo1221g(View view) {
    }

    /* renamed from: h */
    public void m1222h(String str) {
        C0850bc.m1403m("BaseFragment -- installing apk path = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f1807h = str;
        if (m1216b()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            File file = new File(str);
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriForFile = FileProvider.getUriForFile(this.f1800a, "com.android.launcher3.lspfileprovider", file);
                intent.addFlags(1);
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            } else {
                intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            this.f1800a.startActivity(intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (100 == i) {
            m1222h(this.f1807h);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f1800a = getActivity();
        this.f1802c = C1424y5.b.f4202a;
        this.f1801b = C1297t3.m2715a().m2719e();
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View view = this.f1804e;
        if (view == null) {
            this.f1804e = LayoutInflater.from(this.f1800a).inflate(mo1219e(), viewGroup, false);
        } else {
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f1804e);
            }
        }
        mo1221g(this.f1804e);
        this.f1805f = new C1255rb();
        mo1220f();
        return this.f1804e;
    }
}
