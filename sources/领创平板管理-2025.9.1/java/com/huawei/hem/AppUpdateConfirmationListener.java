package com.huawei.hem;

import android.view.View;
import com.android.launcher3.R;
import com.android.launcher3.activity.AdminLoginActivity;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.CommonDialog;
import com.android.launcher3.view.DialogUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: AppCheckUpdateHelper.java */
/* renamed from: com.huawei.hem.o4 */
/* loaded from: classes.dex */
public class AppUpdateConfirmationListener implements CommonDialog.DialogButtonOnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f3371a;

    /* renamed from: b */
    public final /* synthetic */ LauncherAppUpdateRequest f3372b;

    public AppUpdateConfirmationListener(LauncherAppUpdateRequest c1198p4, ArrayList arrayList) {
        this.f3372b = c1198p4;
        this.f3371a = arrayList;
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickCancelButton(View view) {
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickConfirmButton(View view, String str) {
        LauncherAppUpdateRequest c1198p4 = this.f3372b;
        ArrayList arrayList = this.f3371a;
        DialogUtil.showDialog(LauncherAppUpdateRequest.f3427c, c1198p4.mContext.getString(R.string.text_downloading));
        LauncherMenuHelper.m3001v(LauncherAppUpdateRequest.f3427c, true);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ItemApp itemApp = (ItemApp) it.next();
            File file = new File(LauncherConstants.f4038a + itemApp.getPackagename() + ".apk");
            StringBuilder sb = new StringBuilder();
            sb.append(itemApp.getPath());
            sb.append(LauncherDeviceUtils.m1593j(c1198p4.mContext));
            String string = sb.toString();
            if (!file.exists()) {
                c1198p4.m2459a(itemApp, string);
            } else if (LTKDateUtil.m1416z(file.getAbsolutePath(), itemApp.getMd5sum())) {
                AppUpdateSccessListener interfaceC0945f3 = c1198p4.f3429a;
                if (interfaceC0945f3 != null) {
                    ((AdminLoginActivity) interfaceC0945f3).m1176g(file.getAbsolutePath());
                }
            } else {
                file.delete();
                c1198p4.m2459a(itemApp, string);
            }
        }
    }
}
