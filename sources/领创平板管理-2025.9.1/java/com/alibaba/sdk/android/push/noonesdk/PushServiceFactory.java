package com.alibaba.sdk.android.push.noonesdk;

import android.app.Application;
import android.content.Context;
import com.alibaba.sdk.android.ams.common.p007a.PushSdkInitializer;
import com.alibaba.sdk.android.push.CloudPushService;
import com.alibaba.sdk.android.push.PushControlService;
import com.alibaba.sdk.android.push.p016b.CloudPushServiceImpl;
import com.alibaba.sdk.android.push.p016b.PushChannelControl;
import com.alibaba.sdk.android.push.p025g.AliyunPushRegistration;
import com.taobao.accs.ACCSClient;

/* loaded from: classes.dex */
public class PushServiceFactory {
    public static CloudPushService getCloudPushService() {
        return CloudPushServiceImpl.m734a();
    }

    public static PushControlService getPushControlService() {
        return PushChannelControl.m743a();
    }

    public static void init(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            PushSdkInitializer.m476a((Application) applicationContext);
        }
        PushSdkInitializer.m477a(applicationContext);
        CloudPushServiceImpl c0551bM734a = CloudPushServiceImpl.m734a();
        c0551bM734a.m742a(applicationContext);
        ACCSClient.enableChannelProcess(applicationContext, true);
        c0551bM734a.setPushIntentService(null);
        AliyunPushRegistration.m797a().m808b();
    }

    @Deprecated
    public static void init(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            PushSdkInitializer.m476a((Application) applicationContext);
        }
        PushSdkInitializer.m477a(applicationContext);
        CloudPushServiceImpl c0551bM734a = CloudPushServiceImpl.m734a();
        c0551bM734a.m742a(applicationContext);
        c0551bM734a.setAppkey(str);
        c0551bM734a.setAppSecret(str2);
        c0551bM734a.setPushIntentService(null);
        AliyunPushRegistration.m797a().m808b();
    }

    @Deprecated
    public static void init(Context context, String str, String str2, boolean z) {
        ACCSClient.enableChannelProcess(context, z);
        init(context, str, str2);
    }

    @Deprecated
    public static void init(Context context, boolean z) {
        ACCSClient.enableChannelProcess(context, z);
        init(context);
    }

    public static void init(PushInitConfig pushInitConfig) {
        PushSdkInitializer.m476a(pushInitConfig.getApplication());
        PushSdkInitializer.m477a(pushInitConfig.getApplication().getApplicationContext());
        PushSdkInitializer.m478a(pushInitConfig.isDisableForegroundCheck());
        CloudPushServiceImpl c0551bM734a = CloudPushServiceImpl.m734a();
        c0551bM734a.m742a(pushInitConfig.getApplication().getApplicationContext());
        c0551bM734a.setPushIntentService(null);
        if (pushInitConfig.getAppKey() != null) {
            c0551bM734a.setAppkey(pushInitConfig.getAppKey());
        }
        if (pushInitConfig.getAppSecret() != null) {
            c0551bM734a.setAppSecret(pushInitConfig.getAppSecret());
        }
        ACCSClient.enableChannelProcess(pushInitConfig.getApplication(), !pushInitConfig.isDisableChannelProcess());
        ACCSClient.enableChannelProcessHeartbeat(pushInitConfig.getApplication(), !pushInitConfig.isDisableChannelProcessHeartbeat());
        AliyunPushRegistration.m797a().m807a(pushInitConfig.isLoopStartChannel(), pushInitConfig.getLoopInterval());
    }
}
