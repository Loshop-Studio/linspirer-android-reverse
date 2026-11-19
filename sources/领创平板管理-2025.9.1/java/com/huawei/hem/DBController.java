package com.huawei.hem;

import android.content.Context;
import android.os.Build;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.p027db.model.DaoMaster;
import com.android.launcher3.p027db.model.DaoSession;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.android.launcher3.p027db.model.ManageDeviceDao;

/* compiled from: DBController.java */
/* renamed from: com.huawei.hem.t3 */
/* loaded from: classes.dex */
public class DBController {

    /* renamed from: d */
    public static Context f3748d;

    /* renamed from: a */
    public Tactics3DBHelper f3749a;

    /* renamed from: b */
    public DaoSession f3750b;

    /* renamed from: c */
    public DaoSession f3751c;

    /* compiled from: DBController.java */
    /* renamed from: com.huawei.hem.t3$b */
    public static class b {

        /* renamed from: a */
        public static final DBController f3752a = new DBController(null);
    }

    public DBController(a aVar) {
        Context contextCreateDeviceProtectedStorageContext;
        if (Build.VERSION.SDK_INT >= 24) {
            contextCreateDeviceProtectedStorageContext = f3748d.createDeviceProtectedStorageContext();
            Context context = f3748d;
            if (Build.VERSION.SDK_INT >= 24 && contextCreateDeviceProtectedStorageContext.getDatabasePath("tactics3.db") == null && contextCreateDeviceProtectedStorageContext.moveDatabaseFrom(context, "tactics3.db")) {
                LTKDateUtil.m1403m("db has moved success");
            }
        } else {
            contextCreateDeviceProtectedStorageContext = f3748d;
        }
        Tactics3DBHelper c1322u3 = new Tactics3DBHelper(contextCreateDeviceProtectedStorageContext, "tactics3.db", null);
        this.f3749a = c1322u3;
        this.f3751c = new DaoMaster(c1322u3.getWritableDatabase()).newSession();
        this.f3750b = new DaoMaster(this.f3749a.getReadableDatabase()).newSession();
    }

    /* renamed from: a */
    public static DBController m2715a() {
        f3748d = GuardSecureApplication.f1640b;
        return b.f3752a;
    }

    /* renamed from: b */
    public GesturePasswordDao m2716b() {
        return this.f3750b.getGesturePasswordDao();
    }

    /* renamed from: c */
    public ItemAppDao m2717c() {
        return this.f3750b.getItemAppDao();
    }

    /* renamed from: d */
    public ManageDeviceDao m2718d() {
        return this.f3750b.getManageDeviceDao();
    }

    /* renamed from: e */
    public GesturePasswordDao m2719e() {
        return this.f3751c.getGesturePasswordDao();
    }
}
