package com.taobao.accs.client;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.taobao.accs.IProcessName;
import com.taobao.accs.utl.ALog;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AdapterGlobalClientInfo {
    public static final int SECURITY_OFF = 2;
    public static final int SECURITY_OPEN = 1;
    public static final int SECURITY_TAOBAO = 0;
    public static final String TAG = "AdapterGlobalClientInfo";
    public static String mAgooCustomServiceName;
    public static String mAuthCode;
    public static String mChannelProcessName;
    public static Context mContext;
    public static volatile AdapterGlobalClientInfo mInstance;
    public static String mMainProcessName;
    public static IProcessName mProcessNameImpl;
    public static int mSecurityType;
    public static AtomicInteger mStartServiceTimes = new AtomicInteger(-1);
    public ActivityManager mActivityManager;
    public ConnectivityManager mConnectivityManager;

    public AdapterGlobalClientInfo(Context context) {
        if (context == null) {
            throw new RuntimeException("Context is null!!");
        }
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
    }

    public static String getAgooCustomServiceName(Context context) {
        String strTryfindAgooService;
        if (TextUtils.isEmpty(mAgooCustomServiceName)) {
            strTryfindAgooService = tryfindAgooService(context);
            ALog.m5726d(TAG, "Please call TaobaoRegister.setAgooMsgReceiveService() first!", new Object[0]);
        } else {
            strTryfindAgooService = mAgooCustomServiceName;
        }
        ALog.m5726d(TAG, "getAgooCustomServiceName", "serviceName", strTryfindAgooService);
        return strTryfindAgooService;
    }

    public static Context getContext() {
        return mContext;
    }

    public static AdapterGlobalClientInfo getInstance(Context context) {
        if (mInstance == null) {
            synchronized (AdapterGlobalClientInfo.class) {
                if (mInstance == null) {
                    mInstance = new AdapterGlobalClientInfo(context);
                }
            }
        }
        return mInstance;
    }

    public static boolean isFirstStartProc() {
        return mStartServiceTimes.intValue() == 0;
    }

    public static String tryfindAgooService(Context context) {
        try {
            List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(new Intent("org.agoo.android.intent.action.RECEIVE"), 0);
            if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0) {
                return null;
            }
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (resolveInfo.serviceInfo.packageName.equals(context.getPackageName())) {
                    return resolveInfo.serviceInfo.name;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public ActivityManager getActivityManager() {
        if (this.mActivityManager == null) {
            this.mActivityManager = (ActivityManager) mContext.getSystemService("activity");
        }
        return this.mActivityManager;
    }

    public ConnectivityManager getConnectivityManager() {
        if (this.mConnectivityManager == null) {
            this.mConnectivityManager = (ConnectivityManager) mContext.getSystemService("connectivity");
        }
        return this.mConnectivityManager;
    }
}
