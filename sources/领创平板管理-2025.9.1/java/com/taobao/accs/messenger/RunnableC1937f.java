package com.taobao.accs.messenger;

import android.content.Intent;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.f */
/* loaded from: classes.dex */
public class RunnableC1937f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f6202a;

    /* renamed from: b */
    public final /* synthetic */ Intent f6203b;

    /* renamed from: c */
    public final /* synthetic */ C1936e f6204c;

    public RunnableC1937f(C1936e c1936e, String str, Intent intent) {
        this.f6204c = c1936e;
        this.f6202a = str;
        this.f6203b = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6204c.m5620b(this.f6202a, this.f6203b);
    }
}
