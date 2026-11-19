package com.huawei.hem;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.AppHashInfo;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: AppWhiteHelper.java */
/* renamed from: com.huawei.hem.x4 */
/* loaded from: classes.dex */
public class AppWhiteHelper {

    /* renamed from: a */
    public Context f4046a = GuardSecureApplication.f1640b;

    /* renamed from: b */
    public UserInfoUtil f4047b = UserInfoUtil.b.f4202a;

    /* renamed from: d */
    public ItemAppDao f4049d = DBController.m2715a().m2717c();

    /* renamed from: c */
    public List<String> f4048c = new ArrayList();

    /* compiled from: AppWhiteHelper.java */
    /* renamed from: com.huawei.hem.x4$b */
    public static class b {

        /* renamed from: a */
        public static final AppWhiteHelper f4050a = new AppWhiteHelper(null);
    }

    /* compiled from: AppWhiteHelper.java */
    /* renamed from: com.huawei.hem.x4$c */
    public class c extends AsyncTask {

        /* renamed from: a */
        public List<AppHashInfo> f4051a;

        public c(List<AppHashInfo> list) {
            this.f4051a = list;
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x01a1, code lost:
        
            com.huawei.hem.C0850bc.m1403m("ApkHashUtils server not get hash no need check");
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doInBackground(java.lang.Object[] r13) {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1398x4.c.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
        }
    }

    public AppWhiteHelper(a aVar) {
    }

    /* renamed from: a */
    public void m2927a() {
        if (this.f4047b.m3023R()) {
            LTKDateUtil.m1403m("AppWhiteHelper device is release  write white app null to system");
            LTKDateUtil.f2294f.mo1328s(null);
            return;
        }
        List<ItemApp> listLoadAll = this.f4049d.loadAll();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!AbstractC1102l9.m2273N(listLoadAll)) {
            for (ItemApp itemApp : listLoadAll) {
                AppHashInfo appHashInfo = new AppHashInfo();
                appHashInfo.setPackName(itemApp.getPackagename());
                String sha1 = itemApp.getSha1();
                if (TextUtils.isEmpty(sha1) || "null".equalsIgnoreCase(sha1)) {
                    sha1 = DeviceTypeUtil.m1510c() ? "miahash" : "ltkhash";
                }
                appHashInfo.setHash(sha1);
                appHashInfo.setPackWithHash(itemApp.getPackagename() + ";" + sha1);
                arrayList.add(appHashInfo);
                arrayList2.add(itemApp.getPackagename());
            }
        }
        m2928b(arrayList, arrayList2);
    }

    /* renamed from: b */
    public void m2928b(List<AppHashInfo> list, List<String> list2) {
        if (this.f4047b.m3023R()) {
            LTKDateUtil.m1403m("AppWhiteHelper device is release  write white app null to system");
            LTKDateUtil.f2294f.mo1328s(null);
            return;
        }
        String strM3064q = this.f4047b.m3064q();
        StringBuilder sbM1765j = CompilerOutline.m1765j("AppWhiteHelper read isv set white apps:");
        sbM1765j.append(strM3064q.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        List<String> listM2277R = AbstractC1102l9.m2277R(strM3064q, ",");
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        arrayList.add("com.linspirer.exclusivebrowser");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("com.zykj.manage");
        if (!AbstractC1102l9.m2273N(arrayList2)) {
            arrayList.addAll(arrayList2);
        }
        if (!AbstractC1102l9.m2273N(listM2277R)) {
            arrayList.addAll(listM2277R);
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<AppHashInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList3.add(it.next().getPackWithHash());
        }
        String str = DeviceTypeUtil.m1510c() ? "miahash" : "ltkhash";
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (!list.contains(str2)) {
                arrayList3.add(str2 + ";" + str);
                list2.add(str2);
            }
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("AppWhiteHelper app white write to system total:");
        sbM1765j2.append(list2.toString());
        LTKDateUtil.m1403m(sbM1765j2.toString());
        LTKDateUtil.m1403m("AppWhiteHelper app white write to system total with hash:" + arrayList3.toString());
        if (!LTKDateUtil.f2294f.mo1350l(arrayList3)) {
            LTKDateUtil.m1403m("AppWhiteHelper   write app white with no hash");
            LTKDateUtil.f2294f.mo1328s(list2);
        }
        this.f4048c.clear();
        this.f4048c.addAll(list2);
        if (this.f4047b.m3019N() == 1) {
            new c(list).execute(new Object[0]);
        }
    }
}
