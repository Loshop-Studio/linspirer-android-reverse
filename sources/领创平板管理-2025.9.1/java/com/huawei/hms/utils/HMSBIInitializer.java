package com.huawei.hms.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hem.AnalyticsUrlValidator;
import com.huawei.hem.AnalyticsInstanceConfig;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HmsHiAnalyticsUtils;
import com.huawei.hem.AnalyticsInstanceHolder;
import com.huawei.hem.HmsAnalyticsInitContext;
import com.huawei.hem.AnalyticsReportingContext;
import com.huawei.hem.HmsAnalyticsEventManager;
import com.huawei.hem.AnalyticsDeviceIdentifierProvider;
import com.huawei.hem.HmsAnalyticsInstance;
import com.huawei.hem.HiAnalyticsSdkState;
import com.huawei.hem.HmsAnalyticsConfiguration;
import com.huawei.hianalytics.process.HiAnalyticsConfig;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.stats.AnalyticsSwitchHolder;
import com.huawei.hms.stats.HianalyticsExist;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class HMSBIInitializer {

    /* renamed from: d */
    public static final Object f4596d = new Object();

    /* renamed from: e */
    public static HMSBIInitializer f4597e;

    /* renamed from: f */
    public static HiAnalyticsInstance f4598f;

    /* renamed from: a */
    public final Context f4599a;

    /* renamed from: b */
    public AtomicBoolean f4600b = new AtomicBoolean(false);

    /* renamed from: c */
    public boolean f4601c = HianalyticsExist.m3448a();

    /* renamed from: com.huawei.hms.utils.HMSBIInitializer$a */
    public class AnalyticsUrlQueryCallback implements IQueryUrlCallBack {
        public AnalyticsUrlQueryCallback() {
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackFail(int i) {
            HMSLog.m3461e("HMSBIInitializer", "get grs failed, the errorcode is " + i);
            HMSBIInitializer.this.f4600b.set(false);
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackSuccess(String str) {
            StringBuilder sb;
            String str2;
            if (!TextUtils.isEmpty(str)) {
                if (HMSBIInitializer.this.f4601c) {
                    HiAnalyticsInstance unused = HMSBIInitializer.f4598f = new HiAnalyticsInstance.Builder(HMSBIInitializer.this.f4599a).setOperConf(new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build()).setMaintConf(new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build()).create(HiAnalyticsConstant.HA_SERVICE_TAG);
                    HMSBIInitializer.f4598f.setAppid("com.huawei.hwid");
                } else {
                    AnalyticsUrlValidator c0900da = new AnalyticsUrlValidator(HMSBIInitializer.this.f4599a);
                    HiAnalyticsSdkState.m2937d("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
                    c0900da.f2396a.f2526g.f2286a = false;
                    c0900da.f2397b.f2526g.f2286a = false;
                    HiAnalyticsSdkState.m2937d("hmsSdk", "Builder.setEnableUDID(boolean isReportUDID) is execute.");
                    c0900da.f2396a.f2526g.f2288c = false;
                    c0900da.f2397b.f2526g.f2288c = false;
                    HiAnalyticsSdkState.m2937d("hmsSdk", "Builder.setEnableSN(boolean isReportSN) is execute.");
                    c0900da.f2396a.f2526g.f2287b = false;
                    c0900da.f2397b.f2526g.f2287b = false;
                    c0900da.m1577a(0, str);
                    boolean z = true;
                    c0900da.m1577a(1, str);
                    HiAnalyticsSdkState.m2937d("hmsSdk", "Builder.setAppID is execute");
                    c0900da.f2399d = "com.huawei.hwid";
                    if (c0900da.f2398c == null) {
                        HiAnalyticsSdkState.m2936c("hmsSdk", "analyticsConf create(): context is null,create failed!");
                    } else {
                        HiAnalyticsSdkState.m2937d("hmsSdk", "Builder.create() is execute.");
                        HmsAnalyticsInstance c1378w9 = new HmsAnalyticsInstance("_hms_config_tag");
                        AnalyticsInstanceConfig c0926ea = new AnalyticsInstanceConfig(c0900da.f2396a);
                        StringBuilder sbM1765j = CompilerOutline.m1765j("HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: ");
                        sbM1765j.append(c1378w9.f4012a);
                        HiAnalyticsSdkState.m2937d("hmsSdk", sbM1765j.toString());
                        c1378w9.f4013b.f2941b = c0926ea;
                        AnalyticsInstanceConfig c0926ea2 = new AnalyticsInstanceConfig(c0900da.f2397b);
                        StringBuilder sbM1765j2 = CompilerOutline.m1765j("HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : ");
                        sbM1765j2.append(c1378w9.f4012a);
                        HiAnalyticsSdkState.m2937d("hmsSdk", sbM1765j2.toString());
                        c1378w9.f4013b.f2940a = c0926ea2;
                        HmsAnalyticsInitContext c1303t9M2724a = HmsAnalyticsInitContext.m2724a();
                        Context context = c0900da.f2398c;
                        if (c1303t9M2724a == null) {
                            throw null;
                        }
                        synchronized (HmsAnalyticsInitContext.f3775c) {
                            if (c1303t9M2724a.f3776a != null) {
                                HiAnalyticsSdkState.m2940g("hmsSdk", "DataManager already initialized.");
                            } else {
                                c1303t9M2724a.f3776a = context;
                                HmsAnalyticsConfiguration.m3144b().f4293a.f2759m = c1303t9M2724a.f3776a;
                                HmsAnalyticsConfiguration.m3144b().f4293a.f2751e = context.getPackageName();
                                AnalyticsDeviceIdentifierProvider c1354vaM2866a = AnalyticsDeviceIdentifierProvider.m2866a();
                                if (c1354vaM2866a.f3944a == null) {
                                    c1354vaM2866a.f3944a = context;
                                }
                            }
                        }
                        AnalyticsReportingContext c1328u9M2787a = AnalyticsReportingContext.m2787a();
                        Context context2 = c0900da.f2398c;
                        synchronized (c1328u9M2787a.f3852b) {
                            if (c1328u9M2787a.f3851a == null) {
                                c1328u9M2787a.f3851a = context2;
                                HmsAnalyticsEventManager.m2861a().m2862b(context2);
                            }
                        }
                        AnalyticsInstanceHolder.f2907b.f2908a = c1378w9;
                        HmsAnalyticsInitContext c1303t9M2724a2 = HmsAnalyticsInitContext.m2724a();
                        String str3 = c0900da.f2399d;
                        if (c1303t9M2724a2 == null) {
                            throw null;
                        }
                        HiAnalyticsSdkState.m2937d("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
                        Context context3 = c1303t9M2724a2.f3776a;
                        if (context3 == null) {
                            HiAnalyticsSdkState.m2939f("hmsSdk", "sdk is not init");
                        } else {
                            String packageName = context3.getPackageName();
                            if (TextUtils.isEmpty(str3)) {
                                HiAnalyticsSdkState.m2940g("hmsSdk", "checkStrParameter() Parameter verification failure! Parameter:appID");
                            } else {
                                if (TextUtils.isEmpty(str3)) {
                                    sb = new StringBuilder();
                                    str2 = "checkString() Parameter is null! Parameter:";
                                } else {
                                    if (!Pattern.compile("[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}").matcher(str3).matches()) {
                                        sb = new StringBuilder();
                                        str2 = "checkString() Parameter verification failure! Parameter:";
                                    }
                                    if (!z) {
                                    }
                                    HmsAnalyticsConfiguration.m3144b().f4293a.f2752f = str3;
                                }
                                sb.append(str2);
                                sb.append("appID");
                                HiAnalyticsSdkState.m2940g("hmsSdk", sb.toString());
                                z = false;
                                if (!z) {
                                }
                                HmsAnalyticsConfiguration.m3144b().f4293a.f2752f = str3;
                            }
                            str3 = packageName;
                            HmsAnalyticsConfiguration.m3144b().f4293a.f2752f = str3;
                        }
                    }
                }
                HMSLog.m3463i("HMSBIInitializer", "BI URL acquired successfully");
            }
            HMSBIInitializer.this.f4600b.set(false);
        }
    }

    /* renamed from: com.huawei.hms.utils.HMSBIInitializer$b */
    public class HmsAnalyticsInitTask extends AsyncTask<String, Integer, Void> {
        public HmsAnalyticsInitTask() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            HMSBIInitializer.this.m3491a(strArr[0]);
            return null;
        }

        public /* synthetic */ HmsAnalyticsInitTask(HMSBIInitializer hMSBIInitializer, AnalyticsUrlQueryCallback c1577a) {
            this();
        }
    }

    public HMSBIInitializer(Context context) {
        this.f4599a = context;
    }

    public static HMSBIInitializer getInstance(Context context) {
        synchronized (f4596d) {
            if (f4597e == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    f4597e = new HMSBIInitializer(applicationContext);
                } else {
                    f4597e = new HMSBIInitializer(context);
                }
            }
        }
        return f4597e;
    }

    public HiAnalyticsInstance getAnalyticsInstance() {
        return f4598f;
    }

    public void initBI() {
        boolean zM1784b = !this.f4601c ? HmsHiAnalyticsUtils.m1784b() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
        HMSLog.m3463i("HMSBIInitializer", "Builder->biInitFlag :" + zM1784b);
        if (zM1784b || AnalyticsSwitchHolder.m3443c(this.f4599a) || !this.f4600b.compareAndSet(false, true)) {
            return;
        }
        String issueCountryCode = GrsApp.getInstance().getIssueCountryCode(this.f4599a);
        if (!TextUtils.isEmpty(issueCountryCode)) {
            issueCountryCode = issueCountryCode.toUpperCase(Locale.ENGLISH);
        }
        if (!GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(issueCountryCode) && !TextUtils.isEmpty(issueCountryCode)) {
            new HmsAnalyticsInitTask(this, null).execute(issueCountryCode);
        } else {
            HMSLog.m3461e("HMSBIInitializer", "Failed to get device issue country");
            this.f4600b.set(false);
        }
    }

    public boolean isInit() {
        return !this.f4601c ? HmsHiAnalyticsUtils.m1784b() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    /* renamed from: a */
    public final void m3491a(String str) {
        HMSLog.m3463i("HMSBIInitializer", "Start to query GRS");
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setIssueCountry(str);
        new GrsClient(this.f4599a, grsBaseInfo).ayncGetGrsUrl("com.huawei.cloud.opensdkhianalytics", "ROOT", new AnalyticsUrlQueryCallback());
    }
}
