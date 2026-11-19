package com.taobao.accs.data;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.text.TextUtils;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class MsgDistributeService extends Service {

    /* renamed from: a */
    public Messenger f6130a = new Messenger(new AccsDistributionHandler(this));

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f6130a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            ALog.m5729i("MsgDistributeService", "onStartCommand", "action", intent.getAction());
            if (TextUtils.isEmpty(intent.getAction()) || !TextUtils.equals(intent.getAction(), Constants.ACTION_SEND)) {
                ALog.m5729i("MsgDistributeService", "onStartCommand distribute message", new Object[0]);
                AccsMessageDistributor.m5570a(getApplicationContext(), intent);
            } else if (getPackageName().equals(intent.getStringExtra(Constants.KEY_PACKAGE_NAME))) {
                ThreadPoolExecutorFactory.getScheduledExecutor().execute(new DeliverAccsServiceMessageTask(this, intent));
            }
        } catch (Throwable th) {
            ALog.m5727e("MsgDistributeService", "onStartCommand", th, new Object[0]);
        }
        return 2;
    }
}
