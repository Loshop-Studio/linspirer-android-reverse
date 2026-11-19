package com.aliyun.ams.emas.push;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.huawei.hem.AgooNotificationIntentBridge;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooRegistrationPreferences;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NotificationActivity extends Activity {

    /* renamed from: a */
    public AgooNotificationIntentBridge f1446a = new AgooNotificationIntentBridge();

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            String action = intent.getAction();
            ALog.m5726d("MPS:NotificationActivity", CompilerOutline.m1760e("MsgService onStartCommand begin...action=", action), new Object[0]);
            if (TextUtils.equals(action, AgooRegistrationPreferences.f3911b)) {
                this.f1446a.m1295a(intent, getApplicationContext(), 1);
            }
        }
        finish();
    }
}
