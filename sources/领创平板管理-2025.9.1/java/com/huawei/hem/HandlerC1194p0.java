package com.huawei.hem;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.aliyun.ams.emas.push.AgooMessageIntentService;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.p0 */
/* loaded from: classes.dex */
public class HandlerC1194p0 extends Handler {

    /* renamed from: a */
    public final /* synthetic */ AgooMessageIntentService f3421a;

    public HandlerC1194p0(AgooMessageIntentService agooMessageIntentService) {
        this.f3421a = agooMessageIntentService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Intent intent;
        if (message == null || (intent = (Intent) message.getData().getParcelable("intent")) == null) {
            return;
        }
        this.f3421a.onStartCommand(intent, 0, 0);
    }
}
