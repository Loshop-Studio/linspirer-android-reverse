package com.taobao.accs.base;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.support.v4.app.NotificationCompat;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.internal.ServiceImpl;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.accs.utl.Utils;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class BaseService extends Service {
    public static final String TAG = "BaseService";
    public IBaseService mBaseService = null;
    public Messenger messenger = new Messenger(new Handler() { // from class: com.taobao.accs.base.BaseService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message != null) {
                ALog.m5729i(BaseService.TAG, "handleMessage on receive msg", NotificationCompat.CATEGORY_MESSAGE, message.toString());
                Intent intent = (Intent) message.getData().getParcelable("intent");
                if (intent != null) {
                    ALog.m5729i(BaseService.TAG, "handleMessage get intent success", "intent", intent.toString());
                    BaseService.this.onStartCommand(intent, 0, 0);
                }
            }
        }
    });

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        ALog.m5726d(TAG, "onBind", "intent", intent);
        try {
            if (Utils.isTarget26(this)) {
                ALog.m5729i(TAG, "onBind bind service", new Object[0]);
                getApplicationContext().bindService(new Intent(this, getClass()), new ServiceConnection() { // from class: com.taobao.accs.base.BaseService.4
                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName componentName) {
                    }
                }, 1);
            }
        } catch (Throwable th) {
            ALog.m5729i(TAG, "onBind bind service with exception", th.toString());
        }
        return this.messenger.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ACCSClient.setCurrentProcessName(getApplicationContext());
        ThreadPoolExecutorFactory.execute(new Runnable() { // from class: com.taobao.accs.base.BaseService.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    BaseService.this.mBaseService = new ServiceImpl(BaseService.this);
                    BaseService.this.mBaseService.onCreate();
                } catch (Exception e) {
                    ALog.m5728e(BaseService.TAG, "create ServiceImpl error", e.getMessage());
                }
            }
        });
    }

    @Override // android.app.Service
    public void onDestroy() {
        ThreadPoolExecutorFactory.execute(new Runnable() { // from class: com.taobao.accs.base.BaseService.5
            @Override // java.lang.Runnable
            public void run() {
                IBaseService iBaseService = BaseService.this.mBaseService;
                if (iBaseService != null) {
                    iBaseService.onDestroy();
                    BaseService.this.mBaseService = null;
                }
            }
        });
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i, final int i2) {
        ThreadPoolExecutorFactory.execute(new Runnable() { // from class: com.taobao.accs.base.BaseService.3
            @Override // java.lang.Runnable
            public void run() {
                BaseService baseService = BaseService.this;
                IBaseService iBaseService = baseService.mBaseService;
                if (iBaseService != null) {
                    iBaseService.onStartCommand(intent, i, i2);
                } else {
                    baseService.onCreate();
                    BaseService.this.onStartCommand(intent, i, i2);
                }
            }
        });
        if (UtilityImpl.m5771l(this)) {
            return 1;
        }
        ALog.m5726d(TAG, "channel process is disabled, stop", new Object[0]);
        Process.killProcess(Process.myPid());
        return 1;
    }
}
