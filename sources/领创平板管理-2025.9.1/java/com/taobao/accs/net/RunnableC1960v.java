package com.taobao.accs.net;

import android.content.Intent;
import com.taobao.accs.common.Constants;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.utl.AdapterUtilityImpl;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.v */
/* loaded from: classes.dex */
public class RunnableC1960v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1959u f6283a;

    public RunnableC1960v(C1959u c1959u) {
        this.f6283a = c1959u;
    }

    @Override // java.lang.Runnable
    public void run() {
        String packageName = this.f6283a.f6234a.getPackageName();
        Intent intent = new Intent();
        intent.setPackage(packageName);
        intent.setAction(Constants.ACTION_COMMAND);
        intent.putExtra("command", 201);
        intent.setClassName(packageName, AdapterUtilityImpl.channelService);
        IntentDispatch.dispatchIntent(this.f6283a.f6234a.getApplicationContext(), intent, AdapterUtilityImpl.channelService);
    }
}
