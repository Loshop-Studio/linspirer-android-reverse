package com.alibaba.sdk.android.push.p025g;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import anet.channel.AwcnConfig;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.util.AppLifecycle;
import anetwork.channel.http.NetworkSdkSetting;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p007a.PushManifestMetadata;
import com.alibaba.sdk.android.ams.common.p008b.AmsCommonProviders;
import com.alibaba.sdk.android.ams.common.p008b.AmsClientIdentity;
import com.alibaba.sdk.android.ams.common.util.AmsHttpTransport;
import com.alibaba.sdk.android.ams.common.util.AmsRequestParameterSigner;
import com.alibaba.sdk.android.ams.common.util.StringUtil;
import com.alibaba.sdk.android.error.ErrorBuilder;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.PushControlService;
import com.alibaba.sdk.android.push.common.p018a.PushNotificationDefaults;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.alibaba.sdk.android.push.common.p018a.PushServiceComponent;
import com.alibaba.sdk.android.push.common.util.AppInfoUtil;
import com.alibaba.sdk.android.push.common.util.PushNetworkAvailability;
import com.alibaba.sdk.android.push.common.util.PushProcessCheck;
import com.alibaba.sdk.android.push.common.util.p019a.PushHttpErrorException;
import com.alibaba.sdk.android.push.common.util.p019a.VipRequestKind;
import com.alibaba.sdk.android.push.notification.PushNotificationPlatform;
import com.alibaba.sdk.android.push.p016b.PushServiceErrorException;
import com.alibaba.sdk.android.push.p017c.PushKeepAliveScheduler;
import com.alibaba.sdk.android.push.p021d.PushReportManager;
import com.alibaba.sdk.android.push.p024f.PushRegistrationCondition;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooArrivalReporter;
import com.p076ut.device.UTDevice;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.AccsException;
import com.taobao.accs.AccsState;
import com.taobao.accs.ConnectionListener;
import com.taobao.accs.common.Constants;
import com.taobao.agoo.IRegister;
import com.taobao.agoo.TaobaoRegister;
import com.taobao.agoo.p074a.p075a.AgooRegisterCommand;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.HashMap;
import org.android.agoo.message.MessageService;

/* renamed from: com.alibaba.sdk.android.push.g.a */
/* loaded from: classes.dex */
public class AliyunPushRegistration {

    /* renamed from: e */
    public static AmsLogger f1211e = AmsLogger.getLogger("MPS:AppRegister");

    /* renamed from: f */
    public static AliyunPushRegistration f1212f = null;

    /* renamed from: g */
    public static final String[] f1213g = {"amdcopen.m.taobao.com", "amdcopen.m.taobao.com", "amdcopen.m.taobao.com"};

    /* renamed from: h */
    public static final IntentFilter f1214h = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

    /* renamed from: i */
    public static final IntentFilter f1215i = new IntentFilter("android.intent.action.USER_PRESENT");

    /* renamed from: a */
    public volatile a<PushRegistrationMarker> f1216a;

    /* renamed from: j */
    public final b f1220j = new b();

    /* renamed from: b */
    public volatile boolean f1217b = false;

    /* renamed from: c */
    public volatile boolean f1218c = false;

    /* renamed from: d */
    public volatile boolean f1219d = true;

    /* renamed from: com.alibaba.sdk.android.push.g.a$a */
    public class a<Token> extends HandlerThread {

        /* renamed from: a */
        public Handler f1227a;

        /* renamed from: b */
        public Handler f1228b;

        /* renamed from: c */
        public PushCompletionListener<Token> f1229c;

        /* renamed from: d */
        public volatile int f1230d;

        /* renamed from: e */
        public int f1231e;

        /* renamed from: g */
        public Token f1233g;

        public a() {
            super("ConnectionWorker");
            this.f1230d = 0;
            this.f1231e = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public PushRegistrationResult m815a(Token token) {
            Context contextM470b = PushManifestMetadata.m470b();
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                try {
                    try {
                        if (!PushProcessCheck.m777a(contextM470b.getApplicationContext())) {
                            this.f1231e = 2;
                            PushRegistrationResult c0580e = new PushRegistrationResult(PushErrorCatalog.f1126a);
                            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                            try {
                                AliyunPushRegistration.f1211e.m506i("connState=" + this.f1231e + ";estimatedTime=" + jCurrentTimeMillis2 + ";response=" + c0580e.m825a() + ";network=" + PushNetworkAvailability.m765b(contextM470b), null, 1);
                            } catch (Exception e) {
                                AliyunPushRegistration.f1211e.m502e("ut log error", e);
                            }
                            return c0580e;
                        }
                        if (this.f1231e == 0) {
                            AliyunPushRegistration.f1211e.m498d("is debug：" + PushNotificationDefaults.m756e());
                            if (PushNotificationDefaults.m756e()) {
                                AliyunPushRegistration.this.m804j();
                                AliyunPushRegistration.this.m803i();
                            }
                            m816a(contextM470b);
                        }
                        if (!PushManifestMetadata.m471c() && !PushNotificationPlatform.m954a(contextM470b)) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            while (!PushNotificationPlatform.m954a(contextM470b) && SystemClock.elapsedRealtime() - jElapsedRealtime < 10000) {
                                Thread.sleep(1000L);
                                AliyunPushRegistration.f1211e.m498d("wait for app come to foreground");
                            }
                            try {
                                if (!PushNotificationPlatform.m954a(contextM470b)) {
                                    AwcnConfig.setIpv6Enable(false);
                                    AliyunPushRegistration.f1211e.m498d("APP is background, disable ipv6 test");
                                }
                            } catch (Throwable unused) {
                            }
                        }
                        if (this.f1231e == 1) {
                            AliyunPushRegistration.f1211e.m498d("accs init.");
                            PushRegistrationResult c0580eM817b = m817b(contextM470b);
                            long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                            if (c0580eM817b != null) {
                                try {
                                    AliyunPushRegistration.f1211e.m506i("connState=" + this.f1231e + ";estimatedTime=" + jCurrentTimeMillis3 + ";response=" + c0580eM817b.m825a() + ";network=" + PushNetworkAvailability.m765b(contextM470b), null, 1);
                                } catch (Exception e2) {
                                    AliyunPushRegistration.f1211e.m502e("ut log error", e2);
                                }
                            }
                            return c0580eM817b;
                        }
                        if (this.f1231e == 2) {
                            AliyunPushRegistration.f1211e.m498d("accs connected.setBindStop.");
                            System.currentTimeMillis();
                            return null;
                        }
                        AliyunPushRegistration.f1211e.m501e("cant entry this block...");
                        PushRegistrationResult c0580e2 = new PushRegistrationResult(PushErrorCatalog.f1137l);
                        long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis;
                        try {
                            AliyunPushRegistration.f1211e.m506i("connState=" + this.f1231e + ";estimatedTime=" + jCurrentTimeMillis4 + ";response=" + c0580e2.m825a() + ";network=" + PushNetworkAvailability.m765b(contextM470b), null, 1);
                        } catch (Exception e3) {
                            AliyunPushRegistration.f1211e.m502e("ut log error", e3);
                        }
                        return c0580e2;
                    } catch (Throwable th) {
                        AliyunPushRegistration.f1211e.m498d("Catch RuntimeException: " + th.getMessage());
                        PushRegistrationResult c0580e3 = new PushRegistrationResult(PushErrorCatalog.f1136k.copy().msg(th.getMessage()).detail(Log.getStackTraceString(th)).build());
                        long jCurrentTimeMillis5 = System.currentTimeMillis() - jCurrentTimeMillis;
                        try {
                            AliyunPushRegistration.f1211e.m506i("connState=" + this.f1231e + ";estimatedTime=" + jCurrentTimeMillis5 + ";response=" + c0580e3.m825a() + ";network=" + PushNetworkAvailability.m765b(contextM470b), null, 1);
                        } catch (Exception e4) {
                            AliyunPushRegistration.f1211e.m502e("ut log error", e4);
                        }
                        return c0580e3;
                    }
                } catch (PushServiceErrorException e5) {
                    AliyunPushRegistration.f1211e.m498d("Catch StopProcessException: " + e5.m745a() + " stack:" + Log.getStackTraceString(e5));
                    PushRegistrationResult c0580e4 = new PushRegistrationResult(e5.m745a());
                    long jCurrentTimeMillis6 = System.currentTimeMillis() - jCurrentTimeMillis;
                    try {
                        AliyunPushRegistration.f1211e.m506i("connState=" + this.f1231e + ";estimatedTime=" + jCurrentTimeMillis6 + ";response=" + c0580e4.m825a() + ";network=" + PushNetworkAvailability.m765b(contextM470b), null, 1);
                    } catch (Exception e6) {
                        AliyunPushRegistration.f1211e.m502e("ut log error", e6);
                    }
                    return c0580e4;
                }
            } catch (Throwable th2) {
                System.currentTimeMillis();
                throw th2;
            }
        }

        /* renamed from: a */
        private void m816a(Context context) throws PushServiceErrorException {
            AmsLogger amsLogger = AliyunPushRegistration.f1211e;
            StringBuilder sbM1765j = CompilerOutline.m1765j("load utdid: ");
            sbM1765j.append(UTDevice.getUtdid(context));
            amsLogger.m498d(sbM1765j.toString());
            AmsClientIdentity interfaceC0497bM492a = AmsCommonProviders.m492a();
            String strMo486c = interfaceC0497bM492a.mo486c();
            AliyunPushRegistration.f1211e.m498d("vip init.");
            String strMo484b = interfaceC0497bM492a.mo484b();
            if (!StringUtil.isEmpty(strMo484b) && !StringUtil.isBlank(strMo486c) && strMo486c.equals(UTDevice.getUtdid(context))) {
                AmsLogger.getImportantLogger().m504i("Got deviceId from preference: " + strMo484b);
                this.f1231e = 1;
                return;
            }
            if (!PushNetworkAvailability.m764a(context)) {
                throw new PushServiceErrorException(PushErrorCatalog.f1135j);
            }
            String strM818c = m818c();
            AmsLogger.getImportantLogger().m504i("Got deviceId from remote server: " + strM818c);
            if (StringUtil.isEmpty(strM818c)) {
                throw new PushServiceErrorException(PushErrorCatalog.f1132g.copy().msg("获取设备ID失败").detail("getDeviceIdFromServer").build());
            }
            interfaceC0497bM492a.mo482a(strM818c);
            interfaceC0497bM492a.mo485b(UTDevice.getUtdid(context));
            this.f1231e = 1;
            AmsLogger.getImportantLogger().m504i("vip init success");
        }

        /* renamed from: b */
        private PushRegistrationResult m817b(Context context) {
            String stateByKey;
            AliyunPushRegistration.f1211e.m498d("initAccsChannel...");
            NetworkSdkSetting.init(context.getApplicationContext());
            AmsClientIdentity interfaceC0497bM492a = AmsCommonProviders.m492a();
            String strMo480a = interfaceC0497bM492a.mo480a();
            String strMo488d = interfaceC0497bM492a.mo488d();
            AmsLogger.getImportantLogger().m504i("register agoo appkey:" + strMo480a);
            final PushRegistrationCondition c0575b = new PushRegistrationCondition();
            final PushRegistrationResult[] c0580eArr = {null};
            try {
                AliyunPushRegistration.f1211e.m498d("init aliyun accs. context:" + context.getPackageName() + " -- appkey:" + strMo480a);
                ACCSClient.getAccsClient("AliyunPush").cleanLocalBindInfo();
                AppLifecycle.onForeground();
                TaobaoRegister.register(context.getApplicationContext(), "AliyunPush", strMo480a, strMo488d, "aliyun", new IRegister() { // from class: com.alibaba.sdk.android.push.g.a.a.2
                    @Override // com.taobao.agoo.IRegister, com.taobao.agoo.ICallback
                    public void onFailure(String str, String str2) {
                        AmsLogger.getImportantLogger().m504i("agoo errorcode:" + str + ";errorMsg:" + str2);
                        c0580eArr[0] = new PushRegistrationResult(PushErrorCatalog.m762a(str, str2).detail(AgooRegisterCommand.JSON_CMD_REGISTER).build());
                        c0575b.m795a();
                    }

                    @Override // com.taobao.agoo.IRegister
                    public void onSuccess(String str) {
                        AmsLogger.getImportantLogger().m504i("agoo init success.");
                        a.this.f1231e = 2;
                        c0580eArr[0] = new PushRegistrationResult(PushErrorCatalog.f1126a);
                        c0575b.m795a();
                    }
                });
            } catch (Throwable th) {
                AliyunPushRegistration.f1211e.m502e("accs config failed", th);
                c0580eArr[0] = new PushRegistrationResult(PushErrorCatalog.f1136k.copy().msg(th.getMessage()).detail(Log.getStackTraceString(th)).build());
                c0575b.m795a();
            }
            if (!PushProcessCheck.m777a(context.getApplicationContext())) {
                AliyunPushRegistration.this.f1219d = true;
                AliyunPushRegistration.f1211e.m498d("not main process");
                return new PushRegistrationResult(PushErrorCatalog.f1139n);
            }
            AmsLogger amsLogger = AliyunPushRegistration.f1211e;
            StringBuilder sbM1765j = CompilerOutline.m1765j("lock");
            sbM1765j.append(c0575b.toString());
            amsLogger.m498d(sbM1765j.toString());
            c0575b.m796a(150);
            if (c0580eArr[0] == null) {
                try {
                    stateByKey = AccsState.getInstance().getStateByKey(AccsState.RECENT_ERRORS);
                } catch (Exception unused) {
                    stateByKey = "accs time out";
                }
                ErrorBuilder errorBuilderMsg = PushErrorCatalog.f1140o.copy().msg(stateByKey);
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("connected:");
                sbM1765j2.append(AliyunPushRegistration.this.m809c());
                c0580eArr[0] = new PushRegistrationResult(errorBuilderMsg.detail(sbM1765j2.toString()).build());
            }
            AmsLogger importantLogger = AmsLogger.getImportantLogger();
            StringBuilder sbM1765j3 = CompilerOutline.m1765j("register agoo result ");
            sbM1765j3.append(c0580eArr[0].m825a());
            importantLogger.m498d(sbM1765j3.toString());
            return c0580eArr[0];
        }

        /* renamed from: c */
        private String m818c() {
            AmsClientIdentity interfaceC0497bM492a = AmsCommonProviders.m492a();
            String strM473e = PushManifestMetadata.m473e();
            Context contextM470b = PushManifestMetadata.m470b();
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    HashMap map = new HashMap();
                    map.put(Constants.KEY_APP_KEY, interfaceC0497bM492a.mo480a());
                    map.put("deviceId", UTDevice.getUtdid(contextM470b));
                    map.put("version", "3.7.6");
                    map.put("utdid", UTDevice.getUtdid(contextM470b));
                    map.put(Constants.KEY_OS_VERSION, MessageService.MSG_DB_NOTIFY_CLICK);
                    map.put("package", PushManifestMetadata.m475g());
                    try {
                        HttpURLConnection httpURLConnectionM515a = AmsHttpTransport.m515a(strM473e, AmsRequestParameterSigner.m539a(map), "POST");
                        if (httpURLConnectionM515a == null) {
                            AliyunPushRegistration.f1211e.m501e("failed to loadConfigFromRemote!");
                            throw new PushHttpErrorException(PushErrorCatalog.f1141p.copy().msg("getDeviceId创建请求连接失败").build());
                        }
                        String strM870a = VipResponseDecoder.m870a(VipRequestKind.CONFIG.m774a(), httpURLConnectionM515a);
                        httpURLConnectionM515a.disconnect();
                        return strM870a;
                    } catch (IOException e) {
                        throw new PushServiceErrorException(PushErrorCatalog.f1141p.copy().msg(e.getMessage()).detail(Log.getStackTraceString(e)).build());
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (PushServiceErrorException e2) {
                throw e2;
            } catch (Throwable th2) {
                AliyunPushRegistration.f1211e.m508w("loadConfigFromRemote failed! error:", th2);
                throw new PushServiceErrorException(PushErrorCatalog.f1136k.copy().msg(th2.getMessage()).detail(Log.getStackTraceString(th2)).build());
            }
        }

        /* renamed from: a */
        public synchronized void m819a() {
            this.f1230d = 0;
            if (!AliyunPushRegistration.this.f1219d || this.f1231e != 2) {
                this.f1227a.sendMessage(this.f1227a.obtainMessage(1, this.f1233g));
            }
        }

        /* renamed from: a */
        public void m820a(PushCompletionListener<Token> interfaceC0578c) {
            this.f1229c = interfaceC0578c;
        }

        /* renamed from: a */
        public synchronized boolean m821a(PushRegistrationResult c0580e) {
            if (this.f1231e == 2 || this.f1230d >= 5) {
                return false;
            }
            AliyunPushRegistration.f1211e.m498d("init retry:" + this.f1230d);
            this.f1230d = this.f1230d + 1;
            this.f1227a.sendMessageDelayed(this.f1227a.obtainMessage(2, this.f1233g), (long) (((int) Math.pow(3.0d, (double) this.f1230d)) * 5000));
            return true;
        }

        /* renamed from: b */
        public void m822b() {
            this.f1227a.removeMessages(1);
            this.f1227a.removeMessages(2);
        }

        @Override // android.os.HandlerThread
        @SuppressLint({"HandlerLeak"})
        public void onLooperPrepared() {
            this.f1228b = new Handler(Looper.getMainLooper());
            this.f1227a = new Handler() { // from class: com.alibaba.sdk.android.push.g.a.a.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    final PushRegistrationResult c0580eM815a;
                    int i = message.what;
                    if (i == 1 || i == 2) {
                        final Object obj = message.obj;
                        AmsLogger amsLogger = AliyunPushRegistration.f1211e;
                        StringBuilder sbM1765j = CompilerOutline.m1765j("Looping handleMessage: ");
                        sbM1765j.append(message.what);
                        amsLogger.m498d(sbM1765j.toString());
                        if (message.what == 1) {
                            removeMessages(2);
                        }
                        if (AliyunPushRegistration.this.f1219d || (c0580eM815a = a.this.m815a((a) obj)) == null) {
                            return;
                        }
                        if (!a.this.m821a(c0580eM815a) || a.this.f1230d <= 1) {
                            a.this.f1228b.post(new Runnable() { // from class: com.alibaba.sdk.android.push.g.a.a.1.1
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.lang.Runnable
                                public void run() {
                                    a.this.f1229c.mo813a(obj, c0580eM815a);
                                }
                            });
                        }
                    }
                }
            };
            AliyunPushRegistration.f1211e.m498d("Looping Prepared.");
            AliyunPushRegistration.this.f1217b = true;
            m819a();
        }
    }

    /* renamed from: com.alibaba.sdk.android.push.g.a$b */
    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                    if (intent.getBooleanExtra("noConnectivity", false)) {
                        AliyunPushRegistration.f1211e.m501e("Network has lost");
                        return;
                    } else if (AliyunPushRegistration.this.f1219d || !AliyunPushRegistration.this.f1217b) {
                        return;
                    }
                } else if (!"android.intent.action.USER_PRESENT".equals(intent.getAction()) || !PushNetworkAvailability.m764a(context) || AliyunPushRegistration.this.f1219d || !AliyunPushRegistration.this.f1217b) {
                    return;
                }
                AliyunPushRegistration.this.f1216a.m819a();
            }
        }
    }

    /* renamed from: a */
    public static AliyunPushRegistration m797a() {
        if (f1212f == null) {
            synchronized (AliyunPushRegistration.class) {
                if (f1212f == null) {
                    f1212f = new AliyunPushRegistration();
                }
            }
        }
        return f1212f;
    }

    /* renamed from: b */
    private void m800b(boolean z, long j) {
        Context contextM470b = PushManifestMetadata.m470b();
        final AmsClientIdentity interfaceC0497bM492a = AmsCommonProviders.m492a();
        String strMo480a = interfaceC0497bM492a.mo480a();
        AmsLogger.getImportantLogger().m504i("init agoo config appkey:" + strMo480a);
        String strMo488d = interfaceC0497bM492a.mo488d();
        DispatchConstants.setAmdcServerDomain(f1213g);
        try {
            AwcnConfig.setWifiInfoEnable(false);
        } catch (Throwable unused) {
        }
        try {
            AwcnConfig.setCarrierInfoEnable(false);
        } catch (Throwable unused2) {
        }
        try {
            AwcnConfig.setAccsSessionCreateForbiddenInBg(false);
        } catch (Throwable unused3) {
        }
        try {
            TaobaoRegister.setEnv(contextM470b, 0);
            AccsClientConfig accsClientConfigBuild = new AccsClientConfig.Builder().setAppKey(strMo480a).setAppSecret(strMo488d).setTag("AliyunPush").setInappHost("acs4public.m.taobao.com").setChannelHost("accscdn4public.m.taobao.com").setAccsHeartbeatEnable(true).setConfigEnv(0).loopChannelStart(z).loopChannelInterval(j).build();
            TaobaoRegister.setAccsConfigTag(contextM470b, "AliyunPush");
            ACCSClient.init(contextM470b, accsClientConfigBuild);
            TaobaoRegister.setReportPushArrive(new AgooArrivalReporter() { // from class: com.alibaba.sdk.android.push.g.a.1
                @Override // com.huawei.hem.InterfaceC1144n0
                public void reportPushArrive(Context context, String str, int i) {
                    PushReportManager c0570aM779a = PushReportManager.m779a(context);
                    if (c0570aM779a != null) {
                        c0570aM779a.m781a(interfaceC0497bM492a.mo484b(), str, i);
                    }
                }
            });
        } catch (AccsException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    private void m802h() {
        Context contextM470b = PushManifestMetadata.m470b();
        if (PushProcessCheck.m777a(contextM470b)) {
            try {
                contextM470b.registerReceiver(this.f1220j, f1214h);
                contextM470b.registerReceiver(this.f1220j, f1215i);
            } catch (Exception e) {
                f1211e.m502e("Fail to register broad", e);
            }
        }
        if (AppInfoUtil.isChannelProcess(contextM470b)) {
            PushKeepAliveScheduler.m747a(contextM470b);
            PushKeepAliveScheduler.m746a().m748b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m803i() throws PushServiceErrorException, PackageManager.NameNotFoundException {
        String channelServiceData = AppInfoUtil.getChannelServiceData(PushManifestMetadata.m470b(), 1);
        int iLastIndexOf = channelServiceData.lastIndexOf(":");
        if (-1 == iLastIndexOf) {
            throw new PushServiceErrorException(PushErrorCatalog.f1145t);
        }
        String strSubstring = channelServiceData.substring(iLastIndexOf);
        if (StringUtil.isEmpty(strSubstring) || !strSubstring.equals(PushNotificationDefaults.m755d())) {
            throw new PushServiceErrorException(PushErrorCatalog.f1143r);
        }
        String strMo490e = AmsCommonProviders.m492a().mo490e();
        if (StringUtil.isEmpty(strMo490e) || strMo490e.length() > 32) {
            throw new PushServiceErrorException(PushErrorCatalog.f1144s);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m804j() throws PushServiceErrorException {
        for (PushServiceComponent enumC0557a : PushServiceComponent.values()) {
            if (!AppInfoUtil.isComponentExists(PushManifestMetadata.m470b(), enumC0557a.m749a(), enumC0557a.m750b())) {
                if (enumC0557a.m751c()) {
                    throw new PushServiceErrorException(PushErrorCatalog.f1146u.copy().msg(enumC0557a.m749a() + "未配置").build());
                }
                AmsLogger amsLogger = f1211e;
                StringBuilder sbM1765j = CompilerOutline.m1765j("未配置");
                sbM1765j.append(enumC0557a.m749a());
                sbM1765j.append("; 建议配置,可有效提高推送到达率");
                amsLogger.m507w(sbM1765j.toString());
            }
        }
    }

    /* renamed from: a */
    public synchronized void m805a(final CommonCallback commonCallback) {
        if (this.f1218c) {
            AmsLogger.getImportantLogger().m498d("Already startReg, skip.");
            if (commonCallback != null) {
                commonCallback.onFailed(PushErrorCatalog.f1150y.getCode(), PushErrorCatalog.f1150y.getMsg());
            }
            return;
        }
        this.f1218c = true;
        m802h();
        this.f1219d = false;
        if (this.f1216a != null) {
            try {
                this.f1216a.quitSafely();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f1216a = new a<>();
        this.f1216a.m820a(new PushCompletionListener<PushRegistrationMarker>() { // from class: com.alibaba.sdk.android.push.g.a.2
            @Override // com.alibaba.sdk.android.push.p025g.InterfaceC0578c
            /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public void mo813a(PushRegistrationMarker c0579d, PushRegistrationResult c0580e) {
                if (c0580e.m825a().getCode().equals(PushErrorCatalog.f1126a.getCode())) {
                    synchronized (AliyunPushRegistration.class) {
                        AliyunPushRegistration.this.f1219d = true;
                        AliyunPushRegistration.this.f1217b = false;
                        AliyunPushRegistration.this.f1216a.m822b();
                        AliyunPushRegistration.this.f1216a.quit();
                    }
                }
                PushRegistrationResultDispatcher.m823a(commonCallback, c0580e);
            }
        });
        this.f1216a.start();
        f1211e.m498d("getLooper called.");
    }

    /* renamed from: a */
    public void m806a(final PushControlService.ConnectionChangeListener connectionChangeListener) {
        try {
            ACCSClient.getAccsClient("AliyunPush").addConnectionListener(new ConnectionListener() { // from class: com.alibaba.sdk.android.push.g.a.3
                @Override // com.taobao.accs.ConnectionListener
                public void onConnect() {
                    connectionChangeListener.onConnect();
                }

                @Override // com.taobao.accs.ConnectionListener
                public void onDisconnect(int i, String str) {
                    ErrorCode errorCodeBuild = PushErrorCatalog.m761a(i, str).build();
                    connectionChangeListener.onDisconnect(errorCodeBuild.getCode(), errorCodeBuild.getMsg());
                }
            });
        } catch (AccsException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m807a(boolean z, long j) {
        m800b(z, j);
    }

    /* renamed from: b */
    public void m808b() {
        m800b(false, 0L);
    }

    /* renamed from: c */
    public boolean m809c() {
        try {
            return ACCSClient.getAccsClient("AliyunPush").isConnected();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public void m810d() {
        try {
            ACCSClient.getAccsClient("AliyunPush").reconnect();
        } catch (AccsException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m811e() {
        TaobaoRegister.reset();
        this.f1218c = false;
    }

    /* renamed from: f */
    public void m812f() {
        try {
            ACCSClient.getAccsClient("AliyunPush").disconnect();
        } catch (AccsException e) {
            e.printStackTrace();
        }
    }
}
