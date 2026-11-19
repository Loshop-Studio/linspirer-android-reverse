package com.taobao.accs.net;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.e */
/* loaded from: classes.dex */
public class PublishAccsConnectionStateTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f6230a;

    /* renamed from: b */
    public final /* synthetic */ AccsConnectionBase f6231b;

    public PublishAccsConnectionStateTask(AccsConnectionBase abstractC1940b, Context context) {
        this.f6231b = abstractC1940b;
        this.f6230a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (UtilityImpl.m5771l(this.f6230a)) {
            ALog.m5726d(this.f6231b.mo5641d(), "startChannelService", new Object[0]);
            Intent intent = new Intent(Constants.ACTION_START_SERVICE);
            intent.putExtra(Constants.KEY_APP_KEY, this.f6231b.m5646i());
            intent.putExtra(Constants.KEY_TTID, this.f6231b.f6209a);
            intent.putExtra(Constants.KEY_PACKAGE_NAME, this.f6230a.getPackageName());
            intent.putExtra("app_sercet", this.f6231b.f6217i.getAppSecret());
            intent.putExtra(Constants.KEY_MODE, AccsClientConfig.mEnv);
            intent.putExtra(Constants.KEY_CONFIG_TAG, this.f6231b.f6221m);
            intent.setClassName(this.f6230a.getPackageName(), AdapterUtilityImpl.channelService);
            IntentDispatch.dispatchIntent(this.f6230a, intent, AdapterUtilityImpl.channelService);
            Intent intent2 = new Intent();
            intent2.setAction("org.agoo.android.intent.action.REPORT");
            intent2.setPackage(this.f6230a.getPackageName());
            String agooCustomServiceName = AdapterGlobalClientInfo.getAgooCustomServiceName(this.f6230a);
            if (TextUtils.isEmpty(agooCustomServiceName)) {
                return;
            }
            intent2.setClassName(this.f6230a.getPackageName(), agooCustomServiceName);
            IntentDispatch.dispatchIntent(this.f6230a, intent2, agooCustomServiceName);
        }
    }
}
