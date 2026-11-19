package com.huawei.hem;

import android.app.PackageDeleteObserver;
import android.app.PackageInstallObserver;
import android.content.Context;
import android.os.ServiceManager;
import android.util.Log;
import com.huawei.hem.InterfaceC0922e6;

/* compiled from: ApiManager.java */
/* renamed from: com.huawei.hem.d6 */
/* loaded from: classes.dex */
public class C0896d6 {

    /* renamed from: a */
    public final InterfaceC0922e6 f2386a;

    /* compiled from: ApiManager.java */
    /* renamed from: com.huawei.hem.d6$a */
    public class a extends PackageDeleteObserver {
        public a(C0896d6 c0896d6) {
        }
    }

    /* compiled from: ApiManager.java */
    /* renamed from: com.huawei.hem.d6$b */
    public class b extends PackageInstallObserver {
        public b(C0896d6 c0896d6) {
        }
    }

    public C0896d6(Context context) {
        Log.d("ApiManager", "ApiManager created");
        this.f2386a = InterfaceC0922e6.a.m1668J(ServiceManager.getService("apimanager"));
        new b(this);
        new a(this);
    }
}
