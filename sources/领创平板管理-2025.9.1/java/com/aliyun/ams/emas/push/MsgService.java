package com.aliyun.ams.emas.push;

import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hem.AgooNotificationIntentBridge;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooRegistrationPreferences;
import com.taobao.accs.data.MsgDistributeService;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class MsgService extends MsgDistributeService {

    /* renamed from: b */
    public AgooNotificationIntentBridge f1445b = new AgooNotificationIntentBridge();

    @Override // com.taobao.accs.data.MsgDistributeService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            ALog.m5726d("MPS:MsgService", "intent null", new Object[0]);
            return super.onStartCommand(intent, i, i2);
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return super.onStartCommand(intent, i, i2);
        }
        ALog.m5726d("MPS:MsgService", CompilerOutline.m1760e("MsgService onStartCommand begin...action=", action), new Object[0]);
        if (!TextUtils.equals(action, AgooRegistrationPreferences.f3911b)) {
            return super.onStartCommand(intent, i, i2);
        }
        this.f1445b.m1295a(intent, getApplicationContext(), 0);
        return 2;
    }
}
