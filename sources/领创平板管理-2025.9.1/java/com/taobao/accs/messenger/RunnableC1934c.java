package com.taobao.accs.messenger;

import android.content.Intent;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.c */
/* loaded from: classes.dex */
public class RunnableC1934c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f6191a;

    /* renamed from: b */
    public final /* synthetic */ HandlerC1933b f6192b;

    public RunnableC1934c(HandlerC1933b handlerC1933b, Intent intent) {
        this.f6192b = handlerC1933b;
        this.f6191a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessengerService.m5609a();
    }
}
