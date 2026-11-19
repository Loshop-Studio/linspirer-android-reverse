package com.huawei.updatesdk.p048b.p057g;

import android.os.AsyncTask;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p043b.p046c.AsyncTaskC1602b;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a;
import com.huawei.updatesdk.p048b.p052b.C1614c;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.huawei.updatesdk.b.g.b */
/* loaded from: classes.dex */
public class C1637b {

    /* renamed from: a */
    public static List<AsyncTask> f4710a = new CopyOnWriteArrayList();

    /* renamed from: a */
    public static AsyncTaskC1602b m3749a(C1614c c1614c, InterfaceC1603a interfaceC1603a) {
        AsyncTaskC1602b asyncTaskC1602b = new AsyncTaskC1602b(c1614c, interfaceC1603a);
        m3752a(asyncTaskC1602b, c1614c);
        return asyncTaskC1602b;
    }

    /* renamed from: a */
    public static List<AsyncTask> m3750a() {
        return f4710a;
    }

    /* renamed from: a */
    public static void m3751a(AsyncTask asyncTask) {
        if (asyncTask == null) {
            return;
        }
        for (AsyncTask asyncTask2 : f4710a) {
            if (asyncTask2 != null && (asyncTask2.getStatus() == AsyncTask.Status.FINISHED || asyncTask2.isCancelled())) {
                f4710a.remove(asyncTask);
            }
        }
        f4710a.add(asyncTask);
    }

    /* renamed from: a */
    public static void m3752a(AsyncTaskC1602b asyncTaskC1602b, C1614c c1614c) {
        StringBuilder sbM1765j = C0948f6.m1765j("executeTask, ActiveCount:");
        sbM1765j.append(C1638c.f4711a.getActiveCount());
        sbM1765j.append(", TaskCount:");
        sbM1765j.append(C1638c.f4711a.getTaskCount());
        C1584a.m3514a("StoreAgent", sbM1765j.toString());
        asyncTaskC1602b.m3618a(C1638c.f4711a);
    }
}
