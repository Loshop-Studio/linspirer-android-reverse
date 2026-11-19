package org.android.agoo.control;

import com.taobao.accs.client.AdapterGlobalClientInfo;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.k */
/* loaded from: classes.dex */
public class RunnableC2019k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BaseIntentService f6487a;

    public RunnableC2019k(BaseIntentService baseIntentService) {
        this.f6487a = baseIntentService;
    }

    @Override // java.lang.Runnable
    public void run() {
        AdapterGlobalClientInfo.mStartServiceTimes.incrementAndGet();
        BaseIntentService baseIntentService = this.f6487a;
        baseIntentService.agooFactory = AgooFactory.getInstance(baseIntentService.getApplicationContext());
        BaseIntentService baseIntentService2 = this.f6487a;
        baseIntentService2.notifyManager = baseIntentService2.agooFactory.getNotifyManager();
        BaseIntentService baseIntentService3 = this.f6487a;
        baseIntentService3.messageService = baseIntentService3.agooFactory.getMessageService();
    }
}
