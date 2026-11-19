package com.alibaba.sdk.android.push.p016b;

import android.content.Context;
import android.graphics.Bitmap;
import anet.channel.util.ALog;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p007a.PushManifestMetadata;
import com.alibaba.sdk.android.ams.common.p008b.AmsCommonProviders;
import com.alibaba.sdk.android.crashdefend.CrashDefendApi;
import com.alibaba.sdk.android.crashdefend.CrashDefendCallback;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.logger.LogLevel;
import com.alibaba.sdk.android.push.CloudPushService;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.alibaba.sdk.android.push.notification.CPushMessage;
import com.alibaba.sdk.android.push.p015a.PushBeaconManager;
import com.alibaba.sdk.android.push.p015a.PushBeaconToggleListener;
import com.alibaba.sdk.android.push.p021d.PushReportManager;
import com.alibaba.sdk.android.push.p025g.AliyunPushRegistration;
import com.alibaba.sdk.android.sender.AlicloudSender;
import com.alibaba.sdk.android.sender.SdkInfo;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.utl.AccsLogger;
import com.taobao.agoo.p074a.p075a.AgooAliasCommand;
import com.taobao.agoo.p074a.p075a.AgooRegisterCommand;

/* renamed from: com.alibaba.sdk.android.push.b.b */
/* loaded from: classes.dex */
public class CloudPushServiceImpl implements CloudPushService {

    /* renamed from: a */
    public static CloudPushServiceImpl f1020a = new CloudPushServiceImpl();

    /* renamed from: b */
    public CloudPushOperations f1021b;

    /* renamed from: c */
    public Context f1022c;

    /* renamed from: d */
    public boolean f1023d = true;

    /* renamed from: a */
    public static CloudPushServiceImpl m734a() {
        return f1020a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m735a(final Context context, final CommonCallback commonCallback) {
        AmsLogger.getImportantLogger().m504i("call register");
        AliyunPushRegistration.m797a().m805a(new CommonCallback() { // from class: com.alibaba.sdk.android.push.b.b.23
            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onFailed(String str, String str2) {
                commonCallback.onFailed(str, str2);
            }

            @Override // com.alibaba.sdk.android.push.CommonCallback
            public void onSuccess(String str) {
                commonCallback.onSuccess(str);
                CloudPushServiceImpl.this.f1021b.m720b(context);
            }
        });
        PushReportManager.m779a(context).m780a(AmsCommonProviders.m492a().mo480a());
        m740b();
        m736a(context, AmsCommonProviders.m492a().mo480a(), AmsCommonProviders.m492a().mo488d());
    }

    /* renamed from: a */
    private synchronized void m736a(Context context, String str, String str2) {
        PushBeaconManager.m694a().m700a(context, str, str2, "3.7.6");
        PushBeaconManager.m694a().m701a(new PushBeaconToggleListener() { // from class: com.alibaba.sdk.android.push.b.b.25
            @Override // com.alibaba.sdk.android.push.p015a.InterfaceC0549b
            /* renamed from: a */
            public void mo702a(boolean z) {
                PushReportManager.m778a().m785a(z);
            }
        });
    }

    /* renamed from: a */
    private boolean m739a(String str, CommonCallback commonCallback, Runnable runnable) {
        if (this.f1022c == null) {
            AmsLogger.getImportantLogger().m501e("please call PushServiceFactory.init first");
            if (commonCallback != null) {
                ErrorCode errorCodeBuild = PushErrorCatalog.f1148w.copy().detail(str).build();
                commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
            }
            return false;
        }
        m741c();
        if (this.f1023d) {
            if (runnable == null) {
                return true;
            }
            runnable.run();
            return true;
        }
        AmsLogger.getImportantLogger().m501e("push disabled");
        if (commonCallback != null) {
            ErrorCode errorCodeBuild2 = PushErrorCatalog.f1147v.copy().detail(str).build();
            commonCallback.onFailed(errorCodeBuild2.getCode(), errorCodeBuild2.getMsg());
        }
        return false;
    }

    /* renamed from: b */
    private void m740b() {
        SdkInfo sdkInfo = new SdkInfo();
        sdkInfo.setSdkId("push");
        sdkInfo.setSdkVersion("3.7.6");
        sdkInfo.setAppKey(AmsCommonProviders.m492a().mo480a());
        if (PushManifestMetadata.m468a() != null) {
            AlicloudSender.asyncSend(PushManifestMetadata.m468a(), sdkInfo);
        } else {
            AlicloudSender.asyncSend(PushManifestMetadata.m470b(), sdkInfo);
        }
    }

    /* renamed from: c */
    private void m741c() {
        if (this.f1021b != null || this.f1022c == null) {
            return;
        }
        this.f1021b = new CloudPushOperations(this.f1022c);
    }

    /* renamed from: a */
    public void m742a(Context context) {
        AmsLogger.getImportantLogger().m504i("Initialize Mobile Push service...");
        this.f1022c = context;
        if (this.f1021b == null) {
            this.f1021b = new CloudPushOperations(context);
        }
        CrashDefendApi.registerCrashDefendSdk(context, "push", "3.7.6", 10, 5, new CrashDefendCallback() { // from class: com.alibaba.sdk.android.push.b.b.1
            @Override // com.alibaba.sdk.android.crashdefend.CrashDefendCallback
            public void onSdkClosed(int i) {
                AmsLogger.getImportantLogger().m501e("crash limit exceeds, close forever");
                CloudPushServiceImpl.this.f1023d = false;
            }

            @Override // com.alibaba.sdk.android.crashdefend.CrashDefendCallback
            public void onSdkStart(int i, int i2, int i3) {
                CloudPushServiceImpl.this.f1023d = true;
            }

            @Override // com.alibaba.sdk.android.crashdefend.CrashDefendCallback
            public void onSdkStop(int i, int i2, int i3, long j) {
                AmsLogger.getImportantLogger().m501e("crash limit exceeds");
                CloudPushServiceImpl.this.f1023d = false;
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void addAlias(final String str, final CommonCallback commonCallback) {
        m739a("addAlias", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m724b(str, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void bindAccount(final String str, final CommonCallback commonCallback) {
        m739a("bindAccount", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.26
            @Override // java.lang.Runnable
            public void run() throws CloudPushOperationException {
                CloudPushServiceImpl.this.f1021b.m716a(str, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void bindPhoneNumber(final String str, final CommonCallback commonCallback) {
        m739a("bindPhoneNumber", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.21
            @Override // java.lang.Runnable
            public void run() throws CloudPushOperationException {
                CloudPushServiceImpl.this.f1021b.m730d(str, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void bindTag(final int i, final String[] strArr, final String str, final CommonCallback commonCallback) {
        m739a("bindTag", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.28
            @Override // java.lang.Runnable
            public void run() throws CloudPushOperationException {
                CloudPushServiceImpl.this.f1021b.m710a(i, strArr, str, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void checkPushChannelStatus(final CommonCallback commonCallback) {
        m739a("checkPushChannelStatus", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.17
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m732f(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void clearNotifications() {
        m739a("clearNotifications", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.14
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m718b();
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void clickMessage(final CPushMessage cPushMessage) {
        m739a("clickMessage", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.19
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m713a(cPushMessage);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void closeDoNotDisturbMode() {
        m739a("closeDoNotDisturbMode", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.7
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m717a(false);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void dismissMessage(final CPushMessage cPushMessage) {
        m739a("dismissMessage", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.18
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m722b(cPushMessage);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public String getDeviceId() {
        if (m739a("getDeviceId", (CommonCallback) null, (Runnable) null)) {
            return this.f1021b.m705a();
        }
        return null;
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public String getUTDeviceId() {
        if (m739a("getUTDeviceId", (CommonCallback) null, (Runnable) null)) {
            return this.f1021b.m706a(this.f1022c);
        }
        return null;
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void listAliases(final CommonCallback commonCallback) {
        m739a("listAlias", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.4
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m721b(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void listTags(final int i, final CommonCallback commonCallback) {
        m739a("listTags", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.30
            @Override // java.lang.Runnable
            public void run() throws CloudPushOperationException {
                CloudPushServiceImpl.this.f1021b.m709a(i, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void onAppStart() {
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public synchronized void register(final Context context, final CommonCallback commonCallback) {
        if (context != null) {
            m739a(AgooRegisterCommand.JSON_CMD_REGISTER, commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.12
                @Override // java.lang.Runnable
                public void run() {
                    ALog.setUseTlog(false);
                    ACCSClient.changeNetworkSdkLoggerToAccs();
                    CloudPushServiceImpl.this.m735a(context, commonCallback);
                }
            });
            return;
        }
        AmsLogger.getImportantLogger().m501e("context null");
        if (commonCallback != null) {
            ErrorCode errorCodeBuild = PushErrorCatalog.f1142q.copy().detail("register context null").build();
            commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void register(Context context, String str, String str2, CommonCallback commonCallback) {
        if (commonCallback != null) {
            ErrorCode errorCodeBuild = PushErrorCatalog.f1149x.copy().msg("请使用PushServiceFactory.init(Context appContext, String appKey, String appSecret)动态设置appKey appSecret").build();
            commonCallback.onFailed(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
        }
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void removeAlias(final String str, final CommonCallback commonCallback) {
        m739a(AgooAliasCommand.JSON_CMD_REMOVEALIAS, commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m728c(str, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setAppSecret(final String str) {
        m739a("setAppSecret", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.13
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m727c(str);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setAppkey(final String str) {
        m739a("setAppKey", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.11
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m723b(str);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setDebug(final boolean z) {
        m739a("setDebug", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.24
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m725b(z);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setDoNotDisturb(final int i, final int i2, final int i3, final int i4, final CommonCallback commonCallback) {
        m739a("setDoNotDisturb", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.6
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m708a(i, i2, i3, i4, commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setLogLevel(final int i) {
        m739a("setLogLevel", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.5
            @Override // java.lang.Runnable
            public void run() {
                AmsLogger.log_level = i;
                int i2 = 0;
                ALog.setUseTlog(false);
                ACCSClient.changeNetworkSdkLoggerToAccs();
                int i3 = i;
                if (i3 == -1) {
                    AccsLogger.enable(false);
                    i2 = 5;
                } else {
                    if (i3 != 0 && i3 != 2 && i3 != 1) {
                        return;
                    }
                    AccsLogger.enable(true);
                    int i4 = i;
                    if (i4 == 0) {
                        AccsLogger.setLevel(LogLevel.WARN);
                        i2 = 3;
                    } else {
                        if (i4 == 1) {
                            AccsLogger.setLevel(LogLevel.INFO);
                            ALog.setLevel(2);
                            return;
                        }
                        AccsLogger.setLevel(LogLevel.DEBUG);
                    }
                }
                ALog.setLevel(i2);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setNotificationLargeIcon(final Bitmap bitmap) {
        m739a("setNotificationLargeIcon", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.9
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m711a(bitmap);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setNotificationSmallIcon(final int i) {
        m739a("setNotificationSmallIcon", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.10
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m707a(i);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setNotificationSoundFilePath(final String str) {
        m739a("setNotificationSoundFilePath", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.8
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m715a(str);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void setPushIntentService(final Class cls) {
        m739a("setPushIntentService", (CommonCallback) null, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.20
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m714a(cls);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void turnOffPushChannel(final CommonCallback commonCallback) {
        m739a("turnOffPushChannel", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.16
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m729d(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void turnOnPushChannel(final CommonCallback commonCallback) {
        m739a("turnOnPushChannel", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.15
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m731e(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void unbindAccount(final CommonCallback commonCallback) {
        m739a("unbindAccount", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.27
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m712a(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void unbindPhoneNumber(final CommonCallback commonCallback) {
        m739a("unbindPhoneNumber", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.22
            @Override // java.lang.Runnable
            public void run() {
                CloudPushServiceImpl.this.f1021b.m726c(commonCallback);
            }
        });
    }

    @Override // com.alibaba.sdk.android.push.CloudPushService
    public void unbindTag(final int i, final String[] strArr, final String str, final CommonCallback commonCallback) {
        m739a("unBindTag", commonCallback, new Runnable() { // from class: com.alibaba.sdk.android.push.b.b.29
            @Override // java.lang.Runnable
            public void run() throws CloudPushOperationException {
                CloudPushServiceImpl.this.f1021b.m719b(i, strArr, str, commonCallback);
            }
        });
    }
}
