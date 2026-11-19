package org.android.agoo.control;

import android.content.Intent;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.l */
/* loaded from: classes.dex */
public class RunnableC2020l implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f6488a;

    /* renamed from: b */
    public final /* synthetic */ BaseIntentService f6489b;

    public RunnableC2020l(BaseIntentService baseIntentService, Intent intent) {
        this.f6489b = baseIntentService;
        this.f6488a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6489b.onHandleIntent(this.f6488a);
    }
}
