package com.huawei.updatesdk.service.appmgr.bean;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1593b;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;
import com.huawei.updatesdk.p048b.p052b.C1612a;
import com.huawei.updatesdk.p048b.p052b.C1614c;
import com.huawei.updatesdk.p048b.p053c.C1617b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.huawei.updatesdk.service.appmgr.bean.d */
/* loaded from: classes.dex */
public class C1651d extends C1614c {
    public static final String APIMETHOD = "client.updateCheck";
    public static final int DEFAULT_UPGRADE_RESULT = 0;
    public static final int FULL_UPGRADE_RESULT = 1;
    public static final int INSTALL_CHECK_DEFAULT = 0;
    public String agVersion_;
    public C1593b deviceSpecParams_;
    public int getSafeGame_;
    public int gmsSupport_;

    @SDKNetTransmission
    public int hardwareType;
    public int installCheck_;
    public int isFullUpgrade_;

    @SDKNetTransmission
    public int isUpdateSdk;

    @SDKNetTransmission
    public String locale;
    public int mapleVer_;
    public String packageName_;
    public a pkgInfo_;
    public String serviceCountry_;

    @SDKNetTransmission
    public int serviceType;
    public int supportMaple_;
    public int versionCode_;
    public String version_;

    /* renamed from: com.huawei.updatesdk.service.appmgr.bean.d$a */
    public static class a extends AbstractC1604b {
        public List<Param> params_;

        /* renamed from: a */
        public void m3820a(List<Param> list) {
            this.params_ = list;
        }
    }

    public C1651d() {
        this.serviceType = 0;
        this.isUpdateSdk = 1;
        this.installCheck_ = 0;
        this.isFullUpgrade_ = 0;
        this.getSafeGame_ = 1;
        this.supportMaple_ = 0;
        this.locale = null;
        Context contextM3592a = C1598a.m3591c().m3592a();
        m3626a(APIMETHOD);
        m3628b("1.2");
        this.locale = C1594c.m3576h();
        m3819g(C1594c.m3577h(contextM3592a));
        m3817f(C1594c.m3575g(contextM3592a));
        m3809a(C1594c.m3579i(contextM3592a) ? 1 : 0);
        m3816e(C1598a.m3591c().m3592a().getPackageName());
        m3818f(C1612a.m3665d().m3666a());
        m3815e(C1594c.m3568d().m3580a());
        m3812c(C1594c.m3568d().m3582b());
        this.deviceSpecParams_ = new C1593b.b(contextM3592a).m3556a(true).m3557a();
        this.hardwareType = C1617b.m3690a().mo3685b();
    }

    public C1651d(List<Param> list) {
        this();
        a aVar = new a();
        aVar.m3820a(list);
        m3810a(aVar);
    }

    /* renamed from: a */
    public static C1651d m3808a(List<PackageInfo> list) {
        C1651d c1651d = new C1651d();
        a aVar = new a();
        c1651d.m3810a(aVar);
        ArrayList arrayList = new ArrayList();
        aVar.m3820a(arrayList);
        Iterator<PackageInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Param(it.next()));
        }
        return c1651d;
    }

    /* renamed from: a */
    public void m3809a(int i) {
        this.gmsSupport_ = i;
    }

    /* renamed from: a */
    public void m3810a(a aVar) {
        this.pkgInfo_ = aVar;
    }

    /* renamed from: b */
    public void m3811b(int i) {
        this.installCheck_ = i;
    }

    /* renamed from: c */
    public void m3812c(int i) {
        this.mapleVer_ = i;
    }

    /* renamed from: d */
    public void m3813d(int i) {
        this.serviceType = i;
    }

    /* renamed from: d */
    public void m3814d(String str) {
        this.agVersion_ = str;
    }

    /* renamed from: e */
    public void m3815e(int i) {
        this.supportMaple_ = i;
    }

    /* renamed from: e */
    public void m3816e(String str) {
        this.packageName_ = str;
    }

    /* renamed from: f */
    public void m3817f(int i) {
        this.versionCode_ = i;
    }

    /* renamed from: f */
    public void m3818f(String str) {
        this.serviceCountry_ = str;
    }

    /* renamed from: g */
    public void m3819g(String str) {
        this.version_ = str;
    }
}
