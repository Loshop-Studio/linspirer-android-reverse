package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.AnalyticsSessionState;
import com.huawei.hem.AnalyticsSessionState.a;
import java.util.Calendar;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.aa */
/* loaded from: classes.dex */
public class AnalyticsEventRecordTask implements AnalyticsRunnable {

    /* renamed from: a */
    public Context f2191a = LauncherMenuHelper.m2998s();

    /* renamed from: b */
    public String f2192b;

    /* renamed from: c */
    public JSONObject f2193c;

    /* renamed from: d */
    public String f2194d;

    /* renamed from: e */
    public String f2195e;

    /* renamed from: f */
    public String f2196f;

    /* renamed from: g */
    public String f2197g;

    /* renamed from: h */
    public Boolean f2198h;

    public AnalyticsEventRecordTask(String str, JSONObject jSONObject, String str2, String str3, long j) {
        String str4;
        AnalyticsInstanceConfig c0926eaM2126a;
        this.f2192b = str;
        this.f2193c = jSONObject;
        this.f2194d = str2;
        this.f2195e = str3;
        this.f2196f = String.valueOf(j);
        HiAnalyticsTaggedInstanceData c1053jaM3145a = HmsAnalyticsConfiguration.m3144b().m3145a(str2);
        boolean z = false;
        if ((c1053jaM3145a == null || (c0926eaM2126a = c1053jaM3145a.m2126a("oper")) == null) ? false : c0926eaM2126a.f2521b) {
            if (AnalyticsSessionRegistry.f3443b == null) {
                synchronized (AnalyticsSessionRegistry.class) {
                    if (AnalyticsSessionRegistry.f3443b == null) {
                        AnalyticsSessionRegistry.f3443b = new AnalyticsSessionRegistry();
                    }
                }
            }
            AnalyticsSessionRegistry c1203p9 = AnalyticsSessionRegistry.f3443b;
            if (!c1203p9.f3444a.containsKey(str2)) {
                c1203p9.f3444a.put(str2, new AnalyticsSessionState());
            }
            AnalyticsSessionState c1278s9 = c1203p9.f3444a.get(str2);
            AnalyticsSessionState.a aVar = c1278s9.f3676c;
            if (aVar == null) {
                HiAnalyticsSdkState.m2937d("hmsSdk", "Session is first flush");
                c1278s9.f3676c = c1278s9.new a(j);
            } else {
                if (AnalyticsSessionState.this.f3675b) {
                    AnalyticsSessionState.this.f3675b = false;
                } else {
                    boolean z2 = true;
                    if (!(j - aVar.f3679c >= AnalyticsSessionState.this.f3674a)) {
                        long j2 = aVar.f3679c;
                        Calendar calendar = Calendar.getInstance();
                        calendar.setTimeInMillis(j2);
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.setTimeInMillis(j);
                        if (calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) {
                            z2 = false;
                        }
                        if (!z2) {
                            aVar.f3679c = j;
                            aVar.f3678b = false;
                        }
                    }
                }
                aVar.m2683a(j);
            }
            AnalyticsSessionState.a aVar2 = c1278s9.f3676c;
            if (aVar2 == null) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "getSessionName(): session not prepared. onEvent() must be called first.");
                str4 = "";
            } else {
                str4 = aVar2.f3677a;
            }
            this.f2197g = str4;
            AnalyticsSessionState.a aVar3 = c1278s9.f3676c;
            if (aVar3 == null) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "isFirstEvent(): session not prepared. onEvent() must be called first.");
            } else {
                z = aVar3.f3678b;
            }
            this.f2198h = Boolean.valueOf(z);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray;
        HiAnalyticsSdkState.m2937d("hmsSdk", "Begin to run EventRecordTask...");
        int i = HmsAnalyticsConfiguration.m3144b().f4293a.f2753g;
        AnalyticsInstanceConfig c0926eaM2270K = MobileSdkPlatformUtilities.m2270K(this.f2194d, this.f2195e);
        int i2 = c0926eaM2270K != null ? c0926eaM2270K.f2530k : 10;
        if (MobileSdkPlatformUtilities.m2297t(this.f2191a, "stat_v2_1", i * 1048576)) {
            HiAnalyticsSdkState.m2937d("hmsSdk", "stat sp file reach max limited size, discard new event");
            HmsAnalyticsEventManager.m2861a().m2864d("", "alltype");
            return;
        }
        AnalyticsEventRecord c1103la = new AnalyticsEventRecord();
        c1103la.f3161b = this.f2192b;
        c1103la.f3162c = this.f2193c.toString();
        c1103la.f3160a = this.f2195e;
        c1103la.f3163d = this.f2196f;
        c1103la.f3164e = this.f2197g;
        Boolean bool = this.f2198h;
        c1103la.f3165f = bool == null ? null : String.valueOf(bool);
        try {
            JSONObject jSONObjectM2305c = c1103la.m2305c();
            String strM2260A = MobileSdkPlatformUtilities.m2260A(this.f2194d, this.f2195e);
            String strM2283f = MobileSdkPlatformUtilities.m2283f(this.f2191a, "stat_v2_1", strM2260A, "");
            try {
                jSONArray = !TextUtils.isEmpty(strM2283f) ? new JSONArray(strM2283f) : new JSONArray();
            } catch (JSONException unused) {
                HiAnalyticsSdkState.m2938e("hmsSdk", "Cached data corrupted: stat_v2_1");
                jSONArray = new JSONArray();
            }
            jSONArray.put(jSONObjectM2305c);
            MobileSdkPlatformUtilities.m2263D(this.f2191a, "stat_v2_1", strM2260A, jSONArray.toString());
            if (jSONArray.toString().length() > i2 * 1024) {
                HmsAnalyticsEventManager.m2861a().m2864d(this.f2194d, this.f2195e);
            }
        } catch (JSONException unused2) {
            HiAnalyticsSdkState.m2939f("hmsSdk", "eventRecord toJson error! The record failed.");
        }
    }
}
