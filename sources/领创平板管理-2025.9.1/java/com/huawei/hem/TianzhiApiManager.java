package com.huawei.hem;

import android.app.PackageDeleteObserver;
import android.app.PackageInstallObserver;
import android.content.Context;
import android.os.ServiceManager;
import android.util.Log;
import com.huawei.hem.TianzhiApiService;

/* compiled from: ApiManager.java */
/* renamed from: com.huawei.hem.d6 */
/* loaded from: classes.dex */
public class TianzhiApiManager {

    /* renamed from: a */
    public final TianzhiApiService f2386a;

    /* compiled from: ApiManager.java */
    /* renamed from: com.huawei.hem.d6$a */
    public class a extends PackageDeleteObserver {
        public a(TianzhiApiManager c0896d6) {
        }
    }

    /* compiled from: ApiManager.java */
    /* renamed from: com.huawei.hem.d6$b */
    public class b extends PackageInstallObserver {
        public b(TianzhiApiManager c0896d6) {
        }
    }

    public TianzhiApiManager(Context context) {
        Log.d("ApiManager", "ApiManager created");
        this.f2386a = TianzhiApiService.a.m1668J(ServiceManager.getService("apimanager"));
        new b(this);
        new a(this);
    }
}
