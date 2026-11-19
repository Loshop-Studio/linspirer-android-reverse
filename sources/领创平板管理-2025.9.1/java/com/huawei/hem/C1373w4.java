package com.huawei.hem;

import android.text.TextUtils;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.huawei.hem.C1424y5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* compiled from: AppWhiteExceptionHelper.java */
/* renamed from: com.huawei.hem.w4 */
/* loaded from: classes.dex */
public class C1373w4 {

    /* renamed from: a */
    public ArrayList<String> f3986a = new ArrayList<>();

    /* renamed from: c */
    public C1424y5 f3988c = C1424y5.b.f4202a;

    /* renamed from: b */
    public List<String> f3987b = new ArrayList();

    /* compiled from: AppWhiteExceptionHelper.java */
    /* renamed from: com.huawei.hem.w4$b */
    public static class b {

        /* renamed from: a */
        public static final C1373w4 f3989a = new C1373w4(null);
    }

    public C1373w4(a aVar) {
        List<ItemApp> list = C1297t3.m2715a().m2717c().queryBuilder().where(ItemAppDao.Properties.Exception_white_url.m5870eq(1), new WhereCondition[0]).list();
        ArrayList arrayList = new ArrayList();
        if (!AbstractC1102l9.m2273N(list)) {
            Iterator<ItemApp> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getPackagename());
            }
        }
        this.f3987b.addAll(arrayList);
    }

    /* renamed from: a */
    public void m2898a() {
        if (this.f3988c.m3023R()) {
            C0850bc.m1403m("AppWhiteExceptionHelper devices is release no need handle");
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        arrayList.add("com.huawei.alliance.enterprise");
        ArrayList arrayList2 = new ArrayList();
        if (AbstractC1102l9.m2273N(arrayList2)) {
            C0850bc.m1403m("AppWhiteExceptionHelper read isv set app exception list is null");
        } else {
            StringBuilder sbM1765j = C0948f6.m1765j("AppWhiteExceptionHelper read isv set app exception list:");
            sbM1765j.append(arrayList2.toString());
            C0850bc.m1403m(sbM1765j.toString());
            arrayList.addAll(arrayList2);
        }
        arrayList.addAll(this.f3987b);
        C1424y5 c1424y5 = this.f3988c;
        if (TextUtils.isEmpty(c1424y5.f4187r)) {
            c1424y5.f4187r = c1424y5.f4130D.f2199a.getString("app_net_white", "");
        }
        List<String> listM2277R = AbstractC1102l9.m2277R(c1424y5.f4187r, ",");
        if (!AbstractC1102l9.m2273N(listM2277R)) {
            arrayList.addAll(listM2277R);
        }
        if (C1424y5.b.f4202a.m3022Q()) {
            arrayList.addAll(C1219q0.m2501C());
        }
        ArrayList arrayList3 = new ArrayList(new HashSet(arrayList));
        List<String> listMo1307G0 = C0850bc.f2294f.mo1307G0();
        if (!AbstractC1102l9.m2273N(listMo1307G0) && listMo1307G0.toString().equals(arrayList3.toString())) {
            C0850bc.m1403m("AppWhiteExceptionHelper  app network white is the same");
            return;
        }
        this.f3986a.clear();
        this.f3986a.addAll(arrayList3);
        C0850bc.m1403m("AppWhiteExceptionHelper prepare to write to network exception white app:" + this.f3986a.toString());
        C0850bc.f2294f.mo1323h();
        C0850bc.f2294f.mo1308I0(this.f3986a);
        StringBuilder sb = new StringBuilder();
        sb.append("AppWhiteExceptionHelper read network exception white app:");
        sb.append(C0850bc.f2294f.mo1307G0() == null ? null : C0850bc.f2294f.mo1307G0());
        C0850bc.m1403m(sb.toString());
    }
}
