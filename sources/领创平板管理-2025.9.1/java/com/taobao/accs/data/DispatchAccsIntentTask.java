package com.taobao.accs.data;

import android.content.Context;
import android.content.Intent;
import com.taobao.accs.net.AccsConnectionBase;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.h */
/* loaded from: classes.dex */
public final class DispatchAccsIntentTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f6160a;

    /* renamed from: b */
    public final /* synthetic */ AccsConnectionBase f6161b;

    /* renamed from: c */
    public final /* synthetic */ Intent f6162c;

    public DispatchAccsIntentTask(Context context, AccsConnectionBase abstractC1940b, Intent intent) {
        this.f6160a = context;
        this.f6161b = abstractC1940b;
        this.f6162c = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        AccsMessageDistributor.m5569a().m5575b(this.f6160a, this.f6161b, this.f6162c);
    }
}
