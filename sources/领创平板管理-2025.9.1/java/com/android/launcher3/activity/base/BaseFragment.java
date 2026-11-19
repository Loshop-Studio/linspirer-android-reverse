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
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.FileDownloadListener;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherNetworkUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.DownloadTask;
import com.huawei.hem.BaseFragmentDialogButtonListener;
import com.huawei.hem.HttpCore;
import com.huawei.hem.DBController;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherConstants;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.BaseDownloadTask;
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
    public UserInfoUtil f1802c;

    /* renamed from: e */
    public View f1804e;

    /* renamed from: f */
    public HttpCore f1805f;

    /* renamed from: d */
    public boolean f1803d = false;

    /* renamed from: g */
    public Map<String, BaseDownloadTask> f1806g = new HashMap();

    /* renamed from: h */
    public String f1807h = "";

    /* renamed from: com.android.launcher3.activity.base.BaseFragment$a */
    public class FragmentApkDownloadListener extends FileDownloadListener {

        /* renamed from: a */
        public final /* synthetic */ String f1808a;

        /* renamed from: b */
        public final /* synthetic */ ItemApp f1809b;

        public FragmentApkDownloadListener(String str, ItemApp itemApp) {
            this.f1808a = str;
            this.f1809b = itemApp;
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void completed(BaseDownloadTask interfaceC0956fe) {
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
            } else if (LTKDateUtil.m1416z(strMo1796j, md5sum)) {
                baseFragment.m1222h(strMo1796j);
            } else {
                LTKDateUtil.m1415y(baseFragment.f1800a, R.string.text_apk_check_not_pass);
                new File(strMo1796j).delete();
            }
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void error(BaseDownloadTask interfaceC0956fe, Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(" -- download app ,packageName = ");
            sbM1765j.append(this.f1808a);
            sbM1765j.append(" -- error = ");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("BaseFragment", string);
            LTKDateUtil.m1411u("BaseFragment", string);
            BaseFragment.this.f1806g.remove(this.f1808a);
            LTKDateUtil.m1415y(BaseFragment.this.f1800a, R.string.text_downloading_fail);
            interfaceC0956fe.pause();
            if (BaseFragment.this.f1806g.size() <= 0) {
                DialogUtil.hideDialog();
            }
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void paused(BaseDownloadTask interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void pending(BaseDownloadTask interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void progress(BaseDownloadTask interfaceC0956fe, int i, int i2) {
        }

        @Override // com.huawei.hem.AbstractC1158ne
        public void warn(BaseDownloadTask interfaceC0956fe) {
            DialogUtil.hideDialog();
        }
    }

    /* renamed from: com.android.launcher3.activity.base.BaseFragment$b */
    public class FragmentUpdateListResponse extends LTKListResponseListener<ItemApp> {
        public FragmentUpdateListResponse(Class cls) {
            super(cls);
        }

        @Override // com.android.launcher3.network.response.LTKListResponseListener
        public void handleResult(List<ItemApp> list) {
            LTKDateUtil.m1403m("BaseFragment -- check update sucess");
            DialogUtil.hideDialog();
            BaseFragment.m1215a(BaseFragment.this, list);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailed(Response response) {
            LTKDateUtil.m1403m("BaseFragment -- check update failed");
            DialogUtil.hideDialog();
            if (response == null) {
                LTKDateUtil.m1414x(BaseFragment.this.f1800a, R.string.network_error_note);
                return;
            }
            String string = BaseFragment.this.getString(R.string.request_fail_with_code);
            StringBuilder sbM1765j = CompilerOutline.m1765j("");
            sbM1765j.append(response.getCode());
            LTKDateUtil.m1413w(BaseFragment.this.f1800a, String.format(string, sbM1765j.toString()), 0);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailureByNet(Object obj) {
            LTKDateUtil.m1403m("BaseFragment -- check update failure");
            DialogUtil.hideDialog();
            LTKDateUtil.m1414x(BaseFragment.this.f1800a, R.string.network_error_note);
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
            if (LTKDateUtil.m1406p(baseFragment.f1800a, itemApp.getPackagename(), itemApp.getVersioncode())) {
                arrayList.add(itemApp);
            } else {
                StringBuilder sbM1765j = CompilerOutline.m1765j("BaseFragment");
                sbM1765j.append(itemApp.getPackagename());
                sbM1765j.append(" -- is no need update");
                LTKDateUtil.m1403m(sbM1765j.toString());
            }
        }
        if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
            LTKDateUtil.m1415y(baseFragment.f1800a, R.string.no_upgrade_note);
            return;
        }
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(baseFragment.f1800a, R.string.text_has_newversion, R.string.text_update_immediately, R.string.text_recall_again, 0.5d, 0.5d, false);
        commonDialog.setDialogOnClickEvent(new BaseFragmentDialogButtonListener(baseFragment, arrayList));
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
        if (UserInfoUtil.b.f4202a.m3023R()) {
            return;
        }
        if (!new LauncherNetworkUtil(this.f1800a).m1505a()) {
            LTKDateUtil.m1415y(this.f1800a, R.string.network_unable_note);
            return;
        }
        try {
            DialogUtil.showDialog(this.f1800a, getString(R.string.checking_upgrade));
            CheckUpdateParams checkUpdateParams = new CheckUpdateParams(this.f1800a);
            checkUpdateParams.setPackages(list);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(checkUpdateParams));
            v2Params.setMethod(RequestUrl.CHECK_UPDATE_METHOD);
            HttpCore c1255rb = this.f1805f;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new FragmentUpdateListResponse(ItemApp.class));
        } catch (Exception e) {
            e.printStackTrace();
            DialogUtil.hideDialog();
            LTKDateUtil.m1414x(this.f1800a, R.string.network_error_note);
        }
    }

    /* renamed from: d */
    public void m1218d(ItemApp itemApp, String str) {
        BaseDownloadTask interfaceC0956fe;
        String packagename = itemApp.getPackagename();
        CompilerOutline.m1779x("BaseFragment -- download app packageName = ", packagename);
        if (this.f1806g.containsKey(packagename)) {
            BaseDownloadTask interfaceC0956fe2 = this.f1806g.get(packagename);
            this.f1806g.put(packagename, interfaceC0956fe2);
            interfaceC0956fe = interfaceC0956fe2;
        } else {
            if (FileDownloader.m2788b() == null) {
                throw null;
            }
            DownloadTask c1007he = new DownloadTask(str);
            c1007he.m1947z(CompilerOutline.m1763h(new StringBuilder(), LauncherConstants.f4038a, packagename, ".apk"), false);
            interfaceC0956fe = c1007he;
        }
        if (interfaceC0956fe == null) {
            LTKDateUtil.m1403m("BaseFragmentdownload task empty can not  downloading");
        } else {
            interfaceC0956fe.mo1802x(new FragmentApkDownloadListener(packagename, itemApp));
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
        LTKDateUtil.m1403m("BaseFragment -- installing apk path = " + str);
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
        this.f1802c = UserInfoUtil.b.f4202a;
        this.f1801b = DBController.m2715a().m2719e();
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
        this.f1805f = new HttpCore();
        mo1220f();
        return this.f1804e;
    }
}
