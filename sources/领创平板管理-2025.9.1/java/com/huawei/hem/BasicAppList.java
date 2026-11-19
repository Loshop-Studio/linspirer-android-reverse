package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.model.AppItem;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.huawei.hem.ISVCustomer;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BasicAppList.java */
/* renamed from: com.huawei.hem.p3 */
/* loaded from: classes.dex */
public class BasicAppList {

    /* renamed from: a */
    public Context f3423a = GuardSecureApplication.f1640b;

    /* renamed from: b */
    public UserInfoUtil f3424b = UserInfoUtil.b.f4202a;

    /* renamed from: d */
    public ISVCustomer f3426d = ISVCustomer.b.f3370a;

    /* renamed from: c */
    public ItemAppDao f3425c = DBController.m2715a().m2717c();

    /* renamed from: a */
    public final void m2456a(List<AppItem> list) {
        if (DeviceTypeUtil.m1525r()) {
            try {
                PackageManager packageManager = this.f3423a.getPackageManager();
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.DEFAULT");
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                    if ("com.android.gallery3d.app.GalleryActivity".equals(resolveInfo.activityInfo.name)) {
                        AppItem appItem = new AppItem(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                        appItem.setName((String) resolveInfo.loadLabel(packageManager));
                        appItem.setResolveInfo(resolveInfo);
                        appItem.setWeight(-493);
                        list.add(appItem);
                        return;
                    }
                }
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("query gallery exception:");
                sbM1765j.append(e.getMessage());
                LTKDateUtil.m1403m(sbM1765j.toString());
            }
        }
    }

    /* renamed from: b */
    public List<AppItem> m2457b() {
        ArrayList arrayList = new ArrayList();
        try {
            PackageManager packageManager = this.f3423a.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                AppItem appItem = new AppItem(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                appItem.setName((String) resolveInfo.loadLabel(packageManager));
                appItem.setResolveInfo(resolveInfo);
                arrayList.add(appItem);
            }
            m2456a(arrayList);
            if (!LTKDateUtil.m1405o("com.ndwill.swd.appstore", this.f3423a)) {
                AppItem appItem2 = new AppItem("com.ndwill.swd.appstore", "com.ndwill.swd.appstore");
                appItem2.setName(this.f3423a.getResources().getString(R.string.appstore_text));
                arrayList.add(appItem2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1403m("BasicAppList  -- queryAllApps error = " + e.getMessage());
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0050 A[DONT_GENERATE] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m2458c() {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.android.launcher3.db.model.ItemAppDao r1 = r4.f3425c
            org.greenrobot.greendao.query.QueryBuilder r1 = r1.queryBuilder()
            org.greenrobot.greendao.Property r2 = com.android.launcher3.db.model.ItemAppDao.Properties.IsForceApps
            r3 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            org.greenrobot.greendao.query.WhereCondition r2 = r2.m5870eq(r3)
            r3 = 0
            org.greenrobot.greendao.query.WhereCondition[] r3 = new org.greenrobot.greendao.query.WhereCondition[r3]
            org.greenrobot.greendao.query.QueryBuilder r1 = r1.where(r2, r3)
            org.greenrobot.greendao.query.CursorQuery r1 = r1.buildCursor()
            android.database.Cursor r1 = r1.query()
            if (r1 == 0) goto L4e
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r2 <= 0) goto L4e
        L2d:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r2 == 0) goto L4e
            org.greenrobot.greendao.Property r2 = com.android.launcher3.db.model.ItemAppDao.Properties.Packagename     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r2 = r2.columnName     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r0.add(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            goto L2d
        L43:
            r0 = move-exception
            goto L4a
        L45:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L43
            goto L50
        L4a:
            r1.close()
            throw r0
        L4e:
            if (r1 == 0) goto L53
        L50:
            r1.close()
        L53:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1197p3.m2458c():java.util.List");
    }
}
