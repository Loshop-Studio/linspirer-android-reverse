package com.taobao.accs.internal;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.base.IBaseReceiver;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.dispatch.IntentDispatch;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.UtilityImpl;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ReceiverImpl implements IBaseReceiver {
    /* renamed from: a */
    private boolean m5593a(Intent intent) {
        String action = intent.getAction();
        return action.equals("android.intent.action.USER_PRESENT") || action.equals("android.intent.action.BOOT_COMPLETED") || action.equals("android.intent.action.PACKAGE_REMOVED") || action.equals("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // com.taobao.accs.base.IBaseReceiver
    public void onReceive(Context context, Intent intent) {
        ALog.m5726d("ReceiverImpl", "ReceiverImpl onReceive begin......", new Object[0]);
        if (intent == null || TextUtils.isEmpty(intent.getAction())) {
            intent = new Intent();
        } else if (!m5593a(intent)) {
            return;
        }
        if (UtilityImpl.m5753b(context, true)) {
            return;
        }
        try {
            intent.setClassName(context.getPackageName(), AdapterUtilityImpl.channelService);
            IntentDispatch.dispatchIntent(context.getApplicationContext(), intent, AdapterUtilityImpl.channelService);
            if (UtilityImpl.m5759d(context)) {
                String agooCustomServiceName = AdapterGlobalClientInfo.getAgooCustomServiceName(context);
                intent.setClassName(context, agooCustomServiceName);
                IntentDispatch.dispatchIntent(context.getApplicationContext(), intent, agooCustomServiceName);
            }
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ReceiverImpl onReceive,exception,e=");
            sbM1765j.append(th.getMessage());
            ALog.m5728e("ReceiverImpl", sbM1765j.toString(), new Object[0]);
        }
    }
}
