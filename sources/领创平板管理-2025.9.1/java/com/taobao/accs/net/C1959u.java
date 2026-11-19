package com.taobao.accs.net;

import android.content.Context;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.u */
/* loaded from: classes.dex */
public class C1959u extends AbstractC1944f {

    /* renamed from: c */
    public ScheduledFuture f6282c;

    public C1959u(Context context) {
        super(context);
    }

    @Override // com.taobao.accs.net.AbstractC1944f
    /* renamed from: a */
    public void mo5623a(int i) {
        ScheduledFuture scheduledFuture = this.f6282c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f6282c = null;
        }
        long j = i;
        this.f6282c = ThreadPoolExecutorFactory.getScheduledExecutor().scheduleAtFixedRate(new RunnableC1960v(this), j, j, TimeUnit.SECONDS);
    }
}
