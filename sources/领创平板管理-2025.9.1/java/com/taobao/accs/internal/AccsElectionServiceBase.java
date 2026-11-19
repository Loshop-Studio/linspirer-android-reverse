package com.taobao.accs.internal;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.base.IBaseService;
import com.taobao.accs.common.Constants;
import com.taobao.accs.net.AccsConnectionBase;
import com.taobao.accs.net.AccsSpdyConnection;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.accs.utl.Utils;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.internal.d */
/* loaded from: classes.dex */
public abstract class AccsElectionServiceBase implements IBaseService {

    /* renamed from: a */
    public static ConcurrentHashMap<String, AccsConnectionBase> f6183a = new ConcurrentHashMap<>(2);

    /* renamed from: b */
    public Context f6184b;

    /* renamed from: c */
    public Service f6185c;

    public AccsElectionServiceBase(Service service) {
        this.f6185c = null;
        this.f6185c = service;
        this.f6184b = service.getApplicationContext();
    }

    /* renamed from: a */
    private void m5606a(boolean z) {
        for (String str : AccsClientConfig.tags()) {
            try {
                if (!AccsClientConfig.getConfigByTag(str).getDisableChannel()) {
                    m5605a(this.f6184b, str, z);
                }
            } catch (Throwable th) {
                ALog.m5731w("ElectionServiceImpl", CompilerOutline.m1760e("tryStartAllConnections ", str), th, new Object[0]);
            }
        }
    }

    /* renamed from: b */
    private void m5607b(Intent intent) {
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
            String stringExtra2 = intent.getStringExtra(Constants.KEY_APP_KEY);
            String stringExtra3 = intent.getStringExtra(Constants.KEY_TTID);
            String stringExtra4 = intent.getStringExtra("app_sercet");
            String stringExtra5 = intent.getStringExtra(Constants.KEY_CONFIG_TAG);
            int intExtra = intent.getIntExtra(Constants.KEY_MODE, 0);
            ALog.m5729i("ElectionServiceImpl", "handleStartCommand", Constants.KEY_CONFIG_TAG, stringExtra5, "appkey", stringExtra2, "appSecret", stringExtra4, Constants.KEY_TTID, stringExtra3, "pkg", stringExtra);
            if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2) || !stringExtra.equals(this.f6184b.getPackageName())) {
                return;
            }
            Utils.setMode(this.f6184b, intExtra);
            AccsConnectionBase abstractC1940bM5605a = m5605a(this.f6184b, stringExtra5, false);
            if (abstractC1940bM5605a != null) {
                abstractC1940bM5605a.f6209a = stringExtra3;
            } else {
                ALog.m5728e("ElectionServiceImpl", "handleStartCommand start action, no connection", Constants.KEY_CONFIG_TAG, stringExtra5);
            }
            UtilityImpl.m5762e(this.f6184b, stringExtra2);
        } catch (Throwable th) {
            ALog.m5727e("ElectionServiceImpl", "handleStartCommand", th, new Object[0]);
        }
    }

    /* renamed from: a */
    public abstract int mo5604a(Intent intent);

    @Override // com.taobao.accs.base.IBaseService
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.taobao.accs.base.IBaseService
    public void onCreate() {
        ALog.m5729i("ElectionServiceImpl", "onCreate,", Constants.KEY_SDK_VERSION, 221);
    }

    @Override // com.taobao.accs.base.IBaseService
    public void onDestroy() {
        ALog.m5728e("ElectionServiceImpl", "Service onDestroy", new Object[0]);
        this.f6184b = null;
        this.f6185c = null;
    }

    @Override // com.taobao.accs.base.IBaseService
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        String action = intent.getAction();
        ALog.m5729i("ElectionServiceImpl", "onStartCommand begin", "action", action);
        if (TextUtils.equals(action, Constants.ACTION_START_SERVICE)) {
            m5607b(intent);
        } else if (TextUtils.isEmpty(action)) {
            m5606a(true);
        } else {
            m5606a(false);
        }
        return mo5604a(intent);
    }

    @Override // com.taobao.accs.base.IBaseService
    public boolean onUnbind(Intent intent) {
        return false;
    }

    /* renamed from: a */
    public static AccsConnectionBase m5605a(Context context, String str, boolean z) {
        AccsConnectionBase c1961w = null;
        try {
        } catch (Throwable th) {
            th = th;
        }
        if (TextUtils.isEmpty(str)) {
            ALog.m5732w("ElectionServiceImpl", "getConnection configTag null or env invalid", "conns.size", Integer.valueOf(f6183a.size()));
            if (f6183a.size() > 0) {
                return f6183a.elements().nextElement();
            }
            return null;
        }
        ALog.m5729i("ElectionServiceImpl", "getConnection", Constants.KEY_CONFIG_TAG, str, "start", Boolean.valueOf(z));
        AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
        if (configByTag != null && configByTag.getDisableChannel()) {
            ALog.m5728e("ElectionServiceImpl", "getConnection channel disabled!", Constants.KEY_CONFIG_TAG, str);
            return null;
        }
        int mode = Utils.getMode(context);
        String str2 = str + "|" + mode;
        AccsConnectionBase abstractC1940b = f6183a.get(str2);
        if (abstractC1940b != null) {
            return abstractC1940b;
        }
        try {
            AccsClientConfig.mEnv = mode;
            c1961w = new AccsSpdyConnection(context, 0, str);
            if (z) {
                c1961w.mo5625a();
            }
            if (f6183a.size() < 10) {
                f6183a.put(str2, c1961w);
            } else {
                ALog.m5728e("ElectionServiceImpl", "getConnection fail as exist too many conns!!!", new Object[0]);
            }
        } catch (Throwable th2) {
            th = th2;
            c1961w = abstractC1940b;
            ALog.m5727e("ElectionServiceImpl", "getConnection", th, new Object[0]);
            return c1961w;
        }
        return c1961w;
    }
}
