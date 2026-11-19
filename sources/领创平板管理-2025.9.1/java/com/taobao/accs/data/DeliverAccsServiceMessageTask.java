package com.taobao.accs.data;

import android.content.Intent;
import android.text.TextUtils;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.j */
/* loaded from: classes.dex */
public class DeliverAccsServiceMessageTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f6164a;

    /* renamed from: b */
    public final /* synthetic */ MsgDistributeService f6165b;

    public DeliverAccsServiceMessageTask(MsgDistributeService msgDistributeService, Intent intent) {
        this.f6165b = msgDistributeService;
        this.f6164a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        ALog.m5729i("MsgDistributeService", "onStartCommand send message", new Object[0]);
        ACCSManager.AccsRequest accsRequest = (ACCSManager.AccsRequest) this.f6164a.getSerializableExtra(Constants.KEY_SEND_REQDATA);
        String stringExtra = this.f6164a.getStringExtra(Constants.KEY_PACKAGE_NAME);
        String stringExtra2 = this.f6164a.getStringExtra(Constants.KEY_APP_KEY);
        String stringExtra3 = this.f6164a.getStringExtra(Constants.KEY_CONFIG_TAG);
        if (TextUtils.isEmpty(stringExtra3)) {
            stringExtra3 = stringExtra2;
        }
        ACCSManager.getAccsInstance(this.f6165b.getApplicationContext(), stringExtra2, stringExtra3).sendRequest(this.f6165b.getApplicationContext(), accsRequest, stringExtra, true);
    }
}
