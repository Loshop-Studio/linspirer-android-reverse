package com.huawei.hms.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.p030ui.UpdateAdapter;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class AvailableAdapter {

    /* renamed from: d */
    public static AtomicBoolean f4336d = new AtomicBoolean(false);

    /* renamed from: e */
    public static int f4337e = 0;

    /* renamed from: a */
    public final int f4338a;

    /* renamed from: b */
    public AvailableCallBack f4339b;

    /* renamed from: c */
    public SystemObserver f4340c = new HmsAvailabilityObserver();

    public interface AvailableCallBack {
        void onComplete(int i);
    }

    /* renamed from: com.huawei.hms.adapter.AvailableAdapter$a */
    public class HmsAvailabilityObserver implements SystemObserver {
        public HmsAvailabilityObserver() {
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onSolutionResult(Intent intent, String str) {
            return false;
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onUpdateResult(int i) {
            AvailableCallBack availableCallBackM3187a = AvailableAdapter.this.m3187a();
            if (availableCallBackM3187a == null) {
                HMSLog.m3461e("AvailableAdapter", "onUpdateResult baseCallBack null");
                return true;
            }
            availableCallBackM3187a.onComplete(i);
            int unused = AvailableAdapter.f4337e = i;
            HMSLog.m3463i("AvailableAdapter", "user response " + AvailableAdapter.f4337e);
            AvailableAdapter.f4336d.set(false);
            return true;
        }
    }

    public AvailableAdapter(int i) {
        this.f4338a = i;
    }

    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSPackageManager hMSPackageManager = HMSPackageManager.getInstance(context);
        PackageManagerHelper.PackageStates hMSPackageStates = hMSPackageManager.getHMSPackageStates();
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(hMSPackageStates)) {
            HMSLog.m3463i("AvailableAdapter", "HMS is not installed");
            return 1;
        }
        if (PackageManagerHelper.PackageStates.DISABLED.equals(hMSPackageStates)) {
            HMSLog.m3463i("AvailableAdapter", "HMS is disabled");
            return 3;
        }
        if (!hMSPackageManager.isApkUpdateNecessary(this.f4338a)) {
            return 0;
        }
        HMSLog.m3463i("AvailableAdapter", "The current version does not meet the minimum version requirements");
        return 2;
    }

    public boolean isUserResolvableError(int i) {
        return i == 1 || i == 2;
    }

    public void startResolution(Activity activity, AvailableCallBack availableCallBack) {
        if (activity == null || availableCallBack == null) {
            return;
        }
        if (UIUtil.isBackground(activity)) {
            HMSLog.m3463i("AvailableAdapter", "current app is in Background");
            availableCallBack.onComplete(28);
            return;
        }
        if (f4336d.get() && Looper.getMainLooper() != Looper.myLooper()) {
            HMSLog.m3463i("AvailableAdapter", "Another thread start to resolution.");
            m3188a(availableCallBack);
            return;
        }
        if (f4336d.compareAndSet(false, true)) {
            HMSLog.m3463i("AvailableAdapter", "Start to resolution for the 1st time.");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            HMSLog.m3463i("AvailableAdapter", "main thread invokes resolution.");
        }
        HMSLog.m3463i("AvailableAdapter", "startResolution");
        this.f4339b = availableCallBack;
        SystemManager.getSystemNotifier().registerObserver(this.f4340c);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, UpdateAdapter.class.getName());
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.UPDATE_VERSION, this.f4338a);
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.NEW_UPDATE, m3189a(activity));
        activity.startActivity(intentStartBridgeActivity);
    }

    /* renamed from: a */
    public final void m3188a(AvailableCallBack availableCallBack) throws InterruptedException {
        int i = 0;
        while (f4336d.get()) {
            if (i >= 300) {
                HMSLog.m3463i("AvailableAdapter", "Previous popup is not handled by user or download has not finished within 1min.");
                if (availableCallBack != null) {
                    availableCallBack.onComplete(27);
                    return;
                }
                return;
            }
            try {
                HMSLog.m3458d("AvailableAdapter", "Concurrent startResolution thread is waiting.");
                Thread.sleep(200L);
                i++;
            } catch (InterruptedException unused) {
                HMSLog.m3458d("AvailableAdapter", "Concurrent startResolution thread waiting is interrupted.");
            }
        }
        HMSLog.m3463i("AvailableAdapter", "Concurrent startResolution thread waiting finished.");
        if (availableCallBack != null) {
            availableCallBack.onComplete(f4337e);
        }
    }

    /* renamed from: a */
    public final boolean m3189a(Activity activity) {
        if (HMSPackageManager.getInstance(activity).getHmsVersionCode() < 40000000) {
            return false;
        }
        HMSLog.m3463i("AvailableAdapter", "enter 4.0 HmsCore upgrade process");
        return true;
    }

    /* renamed from: a */
    public final AvailableCallBack m3187a() {
        return this.f4339b;
    }
}
