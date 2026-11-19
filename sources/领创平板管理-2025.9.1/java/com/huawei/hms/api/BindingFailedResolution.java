package com.huawei.hms.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.common.internal.BindResolveClients;
import com.huawei.hms.p032ui.AbstractDialog;
import com.huawei.hms.p032ui.AbstractPromptDialog;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.Util;

/* loaded from: classes.dex */
public class BindingFailedResolution implements IBridgeActivityDelegate, ServiceConnection {

    /* renamed from: f */
    public static final Object f4357f = new Object();

    /* renamed from: a */
    public Activity f4358a;

    /* renamed from: c */
    public C1478d f4360c;

    /* renamed from: b */
    public boolean f4359b = true;

    /* renamed from: d */
    public Handler f4361d = null;

    /* renamed from: e */
    public Handler f4362e = null;

    /* renamed from: com.huawei.hms.api.BindingFailedResolution$a */
    public class C1475a implements Handler.Callback {
        public C1475a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 3) {
                return false;
            }
            BindingFailedResolution.this.m3202a(8);
            return true;
        }
    }

    /* renamed from: com.huawei.hms.api.BindingFailedResolution$b */
    public class C1476b implements Handler.Callback {
        public C1476b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 2) {
                return false;
            }
            HMSLog.m3461e("BindingFailedResolution", "In connect, bind core try timeout");
            BindingFailedResolution.this.m3206a(false);
            return true;
        }
    }

    /* renamed from: com.huawei.hms.api.BindingFailedResolution$c */
    public class C1477c implements AbstractDialog.Callback {
        public C1477c() {
        }

        @Override // com.huawei.hms.ui.AbstractDialog.Callback
        public void onCancel(AbstractDialog abstractDialog) {
            BindingFailedResolution.this.f4360c = null;
            BindResolveClients.getInstance().unRegisterAll();
            BindingFailedResolution.this.m3202a(8);
        }

        @Override // com.huawei.hms.ui.AbstractDialog.Callback
        public void onDoWork(AbstractDialog abstractDialog) {
            BindingFailedResolution.this.f4360c = null;
            BindResolveClients.getInstance().unRegisterAll();
            BindingFailedResolution.this.m3202a(8);
        }
    }

    /* renamed from: com.huawei.hms.api.BindingFailedResolution$d */
    public static class C1478d extends AbstractPromptDialog {
        public C1478d() {
        }

        @Override // com.huawei.hms.p032ui.AbstractDialog
        public String onGetMessageString(Context context) {
            return ResourceLoaderUtil.getString("hms_bindfaildlg_message", Util.getAppName(context, null), Util.getAppName(context, HMSPackageManager.getInstance(context).getHMSPackageName()));
        }

        @Override // com.huawei.hms.p032ui.AbstractDialog
        public String onGetPositiveButtonString(Context context) {
            return ResourceLoaderUtil.getString("hms_confirm");
        }

        public /* synthetic */ C1478d(C1475a c1475a) {
            this();
        }
    }

    /* renamed from: b */
    private void m3207b() {
        synchronized (f4357f) {
            if (this.f4361d != null) {
                this.f4361d.removeMessages(2);
                this.f4361d = null;
            }
        }
    }

    /* renamed from: c */
    private void m3208c() {
        Handler handler = this.f4361d;
        if (handler != null) {
            handler.removeMessages(2);
        } else {
            this.f4361d = new Handler(Looper.getMainLooper(), new C1476b());
        }
        this.f4361d.sendEmptyMessageDelayed(2, 5000L);
    }

    /* renamed from: d */
    private void m3209d() {
        Handler handler = this.f4362e;
        if (handler != null) {
            handler.removeMessages(3);
        } else {
            this.f4362e = new Handler(Looper.getMainLooper(), new C1475a());
        }
        this.f4362e.sendEmptyMessageDelayed(3, 4000L);
    }

    /* renamed from: e */
    private void m3210e() {
        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        C1478d c1478d = this.f4360c;
        if (c1478d == null) {
            this.f4360c = new C1478d(null);
        } else {
            c1478d.dismiss();
        }
        HMSLog.m3463i("BindingFailedResolution", "showPromptdlg to resolve conn error");
        this.f4360c.show(activity, new C1477c());
    }

    public Activity getActivity() {
        return this.f4358a;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 2003;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        this.f4358a = activity;
        BindingFailedResolveMgr.f4430b.m3250a(activity);
        m3209d();
        m3203a(activity);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        m3207b();
        BindingFailedResolveMgr.f4430b.m3251b(this.f4358a);
        this.f4358a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        if (i != getRequestCode()) {
            return false;
        }
        HMSLog.m3463i("BindingFailedResolution", "onBridgeActivityResult");
        Handler handler = this.f4362e;
        if (handler != null) {
            handler.removeMessages(3);
            this.f4362e = null;
        }
        m3201a();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        if (this.f4360c == null) {
            return;
        }
        HMSLog.m3463i("BindingFailedResolution", "re show prompt dialog");
        m3210e();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        HMSLog.m3463i("BindingFailedResolution", "On key up when resolve conn error");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        m3207b();
        m3206a(true);
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        Util.unBindServiceCatchException(activity, this);
        HMSLog.m3463i("BindingFailedResolution", "test connect success, try to reConnect and reply message");
        BindResolveClients.getInstance().notifyClientReconnect();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public void onStartResult(boolean z) {
        if (getActivity() == null) {
            return;
        }
        if (z) {
            m3202a(0);
        } else {
            m3210e();
        }
    }

    /* renamed from: a */
    private void m3203a(Activity activity) {
        Intent intent = new Intent();
        intent.setClassName(HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName(), HuaweiApiAvailability.ACTIVITY_NAME);
        HMSLog.m3463i("BindingFailedResolution", "onBridgeActivityCreate：try to start HMS");
        try {
            activity.startActivityForResult(intent, getRequestCode());
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ActivityNotFoundException：");
            sbM1765j.append(th.getMessage());
            HMSLog.m3461e("BindingFailedResolution", sbM1765j.toString());
            Handler handler = this.f4362e;
            if (handler != null) {
                handler.removeMessages(3);
                this.f4362e = null;
            }
            m3201a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3206a(boolean z) {
        if (this.f4359b) {
            this.f4359b = false;
            onStartResult(z);
        }
    }

    /* renamed from: a */
    private void m3201a() {
        Activity activity = getActivity();
        if (activity == null) {
            HMSLog.m3461e("BindingFailedResolution", "In connect, bind core try fail");
            m3206a(false);
            return;
        }
        Intent intent = new Intent("com.huawei.hms.core.aidlservice");
        intent.setPackage(HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName());
        synchronized (f4357f) {
            if (activity.bindService(intent, this, 1)) {
                m3208c();
            } else {
                HMSLog.m3461e("BindingFailedResolution", "In connect, bind core try fail");
                m3206a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3202a(int i) {
        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        HMSLog.m3463i("BindingFailedResolution", "finishBridgeActivity：" + i);
        Intent intent = new Intent();
        intent.putExtra(BridgeActivity.EXTRA_RESULT, i);
        activity.setResult(-1, intent);
        activity.finish();
    }
}
