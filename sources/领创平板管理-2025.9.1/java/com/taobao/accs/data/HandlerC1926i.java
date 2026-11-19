package com.taobao.accs.data;

import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.NotificationCompat;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.i */
/* loaded from: classes.dex */
public class HandlerC1926i extends Handler {

    /* renamed from: a */
    public final /* synthetic */ MsgDistributeService f6163a;

    public HandlerC1926i(MsgDistributeService msgDistributeService) {
        this.f6163a = msgDistributeService;
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        if (message != null) {
            ALog.m5729i("MsgDistributeService", "handleMessage on receive msg", NotificationCompat.CATEGORY_MESSAGE, message.toString());
            Intent intent = (Intent) message.getData().getParcelable("intent");
            if (intent != null) {
                ALog.m5729i("MsgDistributeService", "handleMessage get intent success", "intent", intent.toString());
                this.f6163a.onStartCommand(intent, 0, 0);
            }
        }
    }
}
