package org.android.agoo.control;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.NotificationCompat;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.h */
/* loaded from: classes.dex */
public class AgooServiceMessageHandler extends Handler {

    /* renamed from: a */
    public final /* synthetic */ BaseIntentService f6483a;

    public AgooServiceMessageHandler(BaseIntentService baseIntentService) {
        this.f6483a = baseIntentService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message != null) {
            ALog.m5729i(BaseIntentService.TAG, "handleMessage on receive msg", NotificationCompat.CATEGORY_MESSAGE, message.toString());
            Intent intent = (Intent) message.getData().getParcelable("intent");
            if (intent != null) {
                ALog.m5729i(BaseIntentService.TAG, "handleMessage get intent success", "intent", intent.toString());
                ThreadPoolExecutorFactory.execute(new HandleAgooServiceMessageTask(this, intent));
            }
        }
    }
}
