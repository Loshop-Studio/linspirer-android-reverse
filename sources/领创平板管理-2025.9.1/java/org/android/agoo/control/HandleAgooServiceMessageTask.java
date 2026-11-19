package org.android.agoo.control;

import android.content.Intent;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.i */
/* loaded from: classes.dex */
public class HandleAgooServiceMessageTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f6484a;

    /* renamed from: b */
    public final /* synthetic */ AgooServiceMessageHandler f6485b;

    public HandleAgooServiceMessageTask(AgooServiceMessageHandler handlerC2016h, Intent intent) {
        this.f6485b = handlerC2016h;
        this.f6484a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6485b.f6483a.onHandleIntent(this.f6484a);
    }
}
