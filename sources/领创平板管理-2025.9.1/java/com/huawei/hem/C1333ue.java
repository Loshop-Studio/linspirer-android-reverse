package com.huawei.hem;

import android.content.Context;
import com.huawei.hem.C1082ke;
import com.huawei.hem.C1184of;
import com.huawei.hem.C1233qe;
import java.util.HashMap;
import java.util.LinkedList;

/* compiled from: FileDownloader.java */
/* renamed from: com.huawei.hem.ue */
/* loaded from: classes.dex */
public class C1333ue {

    /* renamed from: c */
    public static final Object f3863c = new Object();

    /* renamed from: d */
    public static final Object f3864d = new Object();

    /* renamed from: a */
    public InterfaceC1433ye f3865a;

    /* renamed from: b */
    public InterfaceC1408xe f3866b;

    /* compiled from: FileDownloader.java */
    /* renamed from: com.huawei.hem.ue$a */
    public static final class a {

        /* renamed from: a */
        public static final C1333ue f3867a = new C1333ue();
    }

    /* renamed from: b */
    public static C1333ue m2788b() {
        return a.f3867a;
    }

    /* renamed from: f */
    public static void m2789f(Context context) {
        C1184of.b.f3400a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m2790a(AbstractC1057je abstractC1057je) {
        C1082ke c1082ke = C1082ke.b.f3080a;
        if (c1082ke == null) {
            throw null;
        }
        LinkedList<AbstractC1434yf> linkedList = c1082ke.f3953b.get("event.service.connect.changed");
        if (linkedList == null) {
            synchronized ("event.service.connect.changed".intern()) {
                linkedList = c1082ke.f3953b.get("event.service.connect.changed");
                if (linkedList == null) {
                    HashMap<String, LinkedList<AbstractC1434yf>> map = c1082ke.f3953b;
                    linkedList = new LinkedList<>();
                    map.put("event.service.connect.changed", linkedList);
                }
            }
        }
        synchronized ("event.service.connect.changed".intern()) {
            linkedList.add(abstractC1057je);
        }
    }

    /* renamed from: c */
    public InterfaceC1408xe m2791c() {
        if (this.f3866b == null) {
            synchronized (f3864d) {
                if (this.f3866b == null) {
                    C0853bf c0853bf = new C0853bf();
                    this.f3866b = c0853bf;
                    m2790a(c0853bf);
                }
            }
        }
        return this.f3866b;
    }

    /* renamed from: d */
    public InterfaceC1433ye m2792d() {
        if (this.f3865a == null) {
            synchronized (f3863c) {
                if (this.f3865a == null) {
                    this.f3865a = new C0931ef();
                }
            }
        }
        return this.f3865a;
    }

    /* renamed from: e */
    public boolean m2793e() {
        return C1233qe.b.f3535a.f3534a.isConnected();
    }
}
