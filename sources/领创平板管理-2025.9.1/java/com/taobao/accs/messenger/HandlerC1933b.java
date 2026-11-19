package com.taobao.accs.messenger;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.b */
/* loaded from: classes.dex */
public class HandlerC1933b extends Handler {

    /* renamed from: a */
    public final /* synthetic */ MessengerService f6190a;

    public HandlerC1933b(MessengerService messengerService) {
        this.f6190a = messengerService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Intent intent;
        if (message == null || (intent = (Intent) message.getData().getParcelable("intent")) == null) {
            return;
        }
        this.f6190a.f6186a.execute(new RunnableC1934c(this, intent));
    }
}
