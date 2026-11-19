package com.taobao.accs.internal;

import android.content.Context;
import com.taobao.accs.ACCSClient;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.internal.a */
/* loaded from: classes.dex */
public class RunnableC1928a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6177a;

    /* renamed from: b */
    public final /* synthetic */ Context f6178b;

    /* renamed from: c */
    public final /* synthetic */ ACCSManagerImpl f6179c;

    public RunnableC1928a(ACCSManagerImpl aCCSManagerImpl, String str, Context context) {
        this.f6179c = aCCSManagerImpl;
        this.f6177a = str;
        this.f6178b = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ACCSClient.getAccsClient(this.f6177a).addConnectionListener(new C1929b(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
