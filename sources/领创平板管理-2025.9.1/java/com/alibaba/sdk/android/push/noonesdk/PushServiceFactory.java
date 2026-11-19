package com.alibaba.sdk.android.push.noonesdk;

import android.app.Application;
import android.content.Context;
import com.alibaba.sdk.android.ams.common.p007a.C0495b;
import com.alibaba.sdk.android.push.CloudPushService;
import com.alibaba.sdk.android.push.PushControlService;
import com.alibaba.sdk.android.push.p016b.C0551b;
import com.alibaba.sdk.android.push.p016b.C0554e;
import com.alibaba.sdk.android.push.p025g.C0576a;
import com.taobao.accs.ACCSClient;

/* loaded from: classes.dex */
public class PushServiceFactory {
    public static CloudPushService getCloudPushService() {
        return C0551b.m734a();
    }

    public static PushControlService getPushControlService() {
        return C0554e.m743a();
    }

    public static void init(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            C0495b.m476a((Application) applicationContext);
        }
        C0495b.m477a(applicationContext);
        C0551b c0551bM734a = C0551b.m734a();
        c0551bM734a.m742a(applicationContext);
        ACCSClient.enableChannelProcess(applicationContext, true);
        c0551bM734a.setPushIntentService(null);
        C0576a.m797a().m808b();
    }

    @Deprecated
    public static void init(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            C0495b.m476a((Application) applicationContext);
        }
        C0495b.m477a(applicationContext);
        C0551b c0551bM734a = C0551b.m734a();
        c0551bM734a.m742a(applicationContext);
        c0551bM734a.setAppkey(str);
        c0551bM734a.setAppSecret(str2);
        c0551bM734a.setPushIntentService(null);
        C0576a.m797a().m808b();
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
        C0495b.m476a(pushInitConfig.getApplication());
        C0495b.m477a(pushInitConfig.getApplication().getApplicationContext());
        C0495b.m478a(pushInitConfig.isDisableForegroundCheck());
        C0551b c0551bM734a = C0551b.m734a();
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
        C0576a.m797a().m807a(pushInitConfig.isLoopStartChannel(), pushInitConfig.getLoopInterval());
    }
}
