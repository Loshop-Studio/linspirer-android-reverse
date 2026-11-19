package com.aliyun.ams.emas.push;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooNotificationHandler;
import com.huawei.hem.AgooIntentHandler;
import com.huawei.hem.AgooMessageCallbacks;
import com.huawei.hem.AgooNotificationCustomizer;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class AgooMessageIntentService extends Service implements AgooMessageCallbacks, AgooNotificationCustomizer {
    public static final String TAG = "MPS:AliyunMessageIntentService";
    public Messenger messenger = new Messenger(new AgooIntentHandler(this));

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.messenger.getBinder();
    }

    public void onHandleIntent(Intent intent) {
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            ALog.m5728e(TAG, "Action is null, return.", new Object[0]);
            return;
        }
        ALog.m5726d(TAG, CompilerOutline.m1760e("check_notif action: ", action), new Object[0]);
        if ("com.alibaba.sdk.android.push.RECEIVE".equals(action)) {
            AgooNotificationHandler.m2511g(getApplicationContext(), intent, this, this);
            return;
        }
        if (AgooMessageReceiver.NOTIFICATION_OPENED_ACTION.equals(action)) {
            AgooNotificationHandler.m2510f(getApplicationContext(), intent, this);
        } else if (AgooMessageReceiver.NOTIFICATION_REMOVED_ACTION.equals(action)) {
            AgooNotificationHandler.m2518n(getApplicationContext(), intent, this);
        } else {
            ALog.m5728e(TAG, "Invalid action", new Object[0]);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        onHandleIntent(intent);
        return 2;
    }
}
