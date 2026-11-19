package com.huawei.hms.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hem.C0900da;
import com.huawei.hem.C0926ea;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C0951f9;
import com.huawei.hem.C1028ia;
import com.huawei.hem.C1303t9;
import com.huawei.hem.C1328u9;
import com.huawei.hem.C1353v9;
import com.huawei.hem.C1354va;
import com.huawei.hem.C1378w9;
import com.huawei.hem.C1404xa;
import com.huawei.hem.C1453z9;
import com.huawei.hianalytics.process.HiAnalyticsConfig;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.stats.C1557a;
import com.huawei.hms.stats.C1559c;
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
    public boolean f4601c = C1559c.m3448a();

    /* renamed from: com.huawei.hms.utils.HMSBIInitializer$a */
    public class C1577a implements IQueryUrlCallBack {
        public C1577a() {
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
                    C0900da c0900da = new C0900da(HMSBIInitializer.this.f4599a);
                    C1404xa.m2937d("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
                    c0900da.f2396a.f2526g.f2286a = false;
                    c0900da.f2397b.f2526g.f2286a = false;
                    C1404xa.m2937d("hmsSdk", "Builder.setEnableUDID(boolean isReportUDID) is execute.");
                    c0900da.f2396a.f2526g.f2288c = false;
                    c0900da.f2397b.f2526g.f2288c = false;
                    C1404xa.m2937d("hmsSdk", "Builder.setEnableSN(boolean isReportSN) is execute.");
                    c0900da.f2396a.f2526g.f2287b = false;
                    c0900da.f2397b.f2526g.f2287b = false;
                    c0900da.m1577a(0, str);
                    boolean z = true;
                    c0900da.m1577a(1, str);
                    C1404xa.m2937d("hmsSdk", "Builder.setAppID is execute");
                    c0900da.f2399d = "com.huawei.hwid";
                    if (c0900da.f2398c == null) {
                        C1404xa.m2936c("hmsSdk", "analyticsConf create(): context is null,create failed!");
                    } else {
                        C1404xa.m2937d("hmsSdk", "Builder.create() is execute.");
                        C1378w9 c1378w9 = new C1378w9("_hms_config_tag");
                        C0926ea c0926ea = new C0926ea(c0900da.f2396a);
                        StringBuilder sbM1765j = C0948f6.m1765j("HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: ");
                        sbM1765j.append(c1378w9.f4012a);
                        C1404xa.m2937d("hmsSdk", sbM1765j.toString());
                        c1378w9.f4013b.f2941b = c0926ea;
                        C0926ea c0926ea2 = new C0926ea(c0900da.f2397b);
                        StringBuilder sbM1765j2 = C0948f6.m1765j("HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : ");
                        sbM1765j2.append(c1378w9.f4012a);
                        C1404xa.m2937d("hmsSdk", sbM1765j2.toString());
                        c1378w9.f4013b.f2940a = c0926ea2;
                        C1303t9 c1303t9M2724a = C1303t9.m2724a();
                        Context context = c0900da.f2398c;
                        if (c1303t9M2724a == null) {
                            throw null;
                        }
                        synchronized (C1303t9.f3775c) {
                            if (c1303t9M2724a.f3776a != null) {
                                C1404xa.m2940g("hmsSdk", "DataManager already initialized.");
                            } else {
                                c1303t9M2724a.f3776a = context;
                                C1453z9.m3144b().f4293a.f2759m = c1303t9M2724a.f3776a;
                                C1453z9.m3144b().f4293a.f2751e = context.getPackageName();
                                C1354va c1354vaM2866a = C1354va.m2866a();
                                if (c1354vaM2866a.f3944a == null) {
                                    c1354vaM2866a.f3944a = context;
                                }
                            }
                        }
                        C1328u9 c1328u9M2787a = C1328u9.m2787a();
                        Context context2 = c0900da.f2398c;
                        synchronized (c1328u9M2787a.f3852b) {
                            if (c1328u9M2787a.f3851a == null) {
                                c1328u9M2787a.f3851a = context2;
                                C1353v9.m2861a().m2862b(context2);
                            }
                        }
                        C1028ia.f2907b.f2908a = c1378w9;
                        C1303t9 c1303t9M2724a2 = C1303t9.m2724a();
                        String str3 = c0900da.f2399d;
                        if (c1303t9M2724a2 == null) {
                            throw null;
                        }
                        C1404xa.m2937d("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
                        Context context3 = c1303t9M2724a2.f3776a;
                        if (context3 == null) {
                            C1404xa.m2939f("hmsSdk", "sdk is not init");
                        } else {
                            String packageName = context3.getPackageName();
                            if (TextUtils.isEmpty(str3)) {
                                C1404xa.m2940g("hmsSdk", "checkStrParameter() Parameter verification failure! Parameter:appID");
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
                                    C1453z9.m3144b().f4293a.f2752f = str3;
                                }
                                sb.append(str2);
                                sb.append("appID");
                                C1404xa.m2940g("hmsSdk", sb.toString());
                                z = false;
                                if (!z) {
                                }
                                C1453z9.m3144b().f4293a.f2752f = str3;
                            }
                            str3 = packageName;
                            C1453z9.m3144b().f4293a.f2752f = str3;
                        }
                    }
                }
                HMSLog.m3463i("HMSBIInitializer", "BI URL acquired successfully");
            }
            HMSBIInitializer.this.f4600b.set(false);
        }
    }

    /* renamed from: com.huawei.hms.utils.HMSBIInitializer$b */
    public class AsyncTaskC1578b extends AsyncTask<String, Integer, Void> {
        public AsyncTaskC1578b() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            HMSBIInitializer.this.m3491a(strArr[0]);
            return null;
        }

        public /* synthetic */ AsyncTaskC1578b(HMSBIInitializer hMSBIInitializer, C1577a c1577a) {
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
        boolean zM1784b = !this.f4601c ? C0951f9.m1784b() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
        HMSLog.m3463i("HMSBIInitializer", "Builder->biInitFlag :" + zM1784b);
        if (zM1784b || C1557a.m3443c(this.f4599a) || !this.f4600b.compareAndSet(false, true)) {
            return;
        }
        String issueCountryCode = GrsApp.getInstance().getIssueCountryCode(this.f4599a);
        if (!TextUtils.isEmpty(issueCountryCode)) {
            issueCountryCode = issueCountryCode.toUpperCase(Locale.ENGLISH);
        }
        if (!GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(issueCountryCode) && !TextUtils.isEmpty(issueCountryCode)) {
            new AsyncTaskC1578b(this, null).execute(issueCountryCode);
        } else {
            HMSLog.m3461e("HMSBIInitializer", "Failed to get device issue country");
            this.f4600b.set(false);
        }
    }

    public boolean isInit() {
        return !this.f4601c ? C0951f9.m1784b() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    /* renamed from: a */
    public final void m3491a(String str) {
        HMSLog.m3463i("HMSBIInitializer", "Start to query GRS");
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setIssueCountry(str);
        new GrsClient(this.f4599a, grsBaseInfo).ayncGetGrsUrl("com.huawei.cloud.opensdkhianalytics", "ROOT", new C1577a());
    }
}
