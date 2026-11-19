package com.taobao.accs.messenger;

import android.content.Intent;
import android.os.RemoteException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.e */
/* loaded from: classes.dex */
public class C1936e {

    /* renamed from: a */
    public static final String f6199a = C1936e.class.getName() + ".TRY_COUNT";

    /* renamed from: b */
    public ScheduledExecutorService f6200b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: c */
    public C1932a f6201c;

    public C1936e(C1932a c1932a) {
        this.f6201c = c1932a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5620b(String str, Intent intent) {
        ServiceConnectionC1935d serviceConnectionC1935dM5611a = this.f6201c.m5611a(str);
        if (serviceConnectionC1935dM5611a == null) {
            this.f6201c.m5612a(str, intent);
            m5621c(str, intent);
            return;
        }
        try {
            serviceConnectionC1935dM5611a.m5615a(intent);
        } catch (RemoteException unused) {
            this.f6201c.m5614b(str, serviceConnectionC1935dM5611a);
            this.f6201c.m5612a(str, intent);
            m5621c(str, intent);
        }
    }

    /* renamed from: c */
    private void m5621c(String str, Intent intent) {
        int intExtra = intent.getIntExtra(f6199a, 0);
        if (intExtra > 10) {
            return;
        }
        intent.putExtra(f6199a, intExtra + 1);
        this.f6200b.schedule(new RunnableC1937f(this, str, intent), 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public void m5622a(String str, Intent intent) {
        m5620b(str, intent);
    }
}
