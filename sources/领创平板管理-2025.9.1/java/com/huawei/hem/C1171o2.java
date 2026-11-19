package com.huawei.hem;

import android.view.View;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragment;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.CommonDialog;
import com.android.launcher3.view.DialogUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: BaseFragment.java */
/* renamed from: com.huawei.hem.o2 */
/* loaded from: classes.dex */
public class C1171o2 implements CommonDialog.DialogButtonOnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f3368a;

    /* renamed from: b */
    public final /* synthetic */ BaseFragment f3369b;

    public C1171o2(BaseFragment baseFragment, ArrayList arrayList) {
        this.f3369b = baseFragment;
        this.f3368a = arrayList;
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickCancelButton(View view) {
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickConfirmButton(View view, String str) {
        BaseFragment baseFragment = this.f3369b;
        ArrayList arrayList = this.f3368a;
        DialogUtil.showDialog(baseFragment.f1800a, baseFragment.getString(R.string.text_downloading));
        C1423y4.m3001v(baseFragment.getActivity(), true);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ItemApp itemApp = (ItemApp) it.next();
            File file = new File(C1395x1.f4038a + itemApp.getPackagename() + ".apk");
            StringBuilder sb = new StringBuilder();
            sb.append(itemApp.getPath());
            sb.append(C0904de.m1593j(baseFragment.f1800a));
            String string = sb.toString();
            if (!file.exists()) {
                baseFragment.m1218d(itemApp, string);
            } else if (C0850bc.m1416z(file.getAbsolutePath(), itemApp.getMd5sum())) {
                baseFragment.m1222h(file.getAbsolutePath());
                DialogUtil.hideDialog();
            } else {
                file.delete();
                baseFragment.m1218d(itemApp, string);
            }
        }
    }
}
