package com.huawei.updatesdk.p048b.p057g;

import android.os.AsyncTask;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p043b.p046c.UpdateStoreRequestTask;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.StoreRequestCallback;
import com.huawei.updatesdk.p048b.p052b.StoreRequestEnvelope;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.huawei.updatesdk.b.g.b */
/* loaded from: classes.dex */
public class StoreTaskAgent {

    /* renamed from: a */
    public static List<AsyncTask> f4710a = new CopyOnWriteArrayList();

    /* renamed from: a */
    public static UpdateStoreRequestTask m3749a(StoreRequestEnvelope c1614c, StoreRequestCallback interfaceC1603a) {
        UpdateStoreRequestTask asyncTaskC1602b = new UpdateStoreRequestTask(c1614c, interfaceC1603a);
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
    public static void m3752a(UpdateStoreRequestTask asyncTaskC1602b, StoreRequestEnvelope c1614c) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("executeTask, ActiveCount:");
        sbM1765j.append(StoreTaskExecutors.f4711a.getActiveCount());
        sbM1765j.append(", TaskCount:");
        sbM1765j.append(StoreTaskExecutors.f4711a.getTaskCount());
        UpdateLogWriter.m3514a("StoreAgent", sbM1765j.toString());
        asyncTaskC1602b.m3618a(StoreTaskExecutors.f4711a);
    }
}
