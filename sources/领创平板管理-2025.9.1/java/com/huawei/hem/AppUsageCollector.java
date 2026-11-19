package com.huawei.hem;

import android.annotation.SuppressLint;
import android.app.AppOpsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.V2Params;
import com.huawei.hem.UserInfoUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* compiled from: AppUsageHelper.java */
/* renamed from: com.huawei.hem.k5 */
/* loaded from: classes.dex */
public class AppUsageCollector {

    /* renamed from: j */
    public static AppUsageCollector f3023j;

    /* renamed from: a */
    public long f3024a = 0;

    /* renamed from: b */
    public int f3025b = 86400000;

    /* renamed from: c */
    public UserInfoUtil f3026c;

    /* renamed from: d */
    public HttpCore f3027d;

    /* renamed from: e */
    public UsageStatsManager f3028e;

    /* renamed from: f */
    public AppOpsManager f3029f;

    /* renamed from: g */
    public PackageManager f3030g;

    /* renamed from: h */
    public Context f3031h;

    /* renamed from: i */
    public List<List<UsageAppData>> f3032i;

    /* compiled from: AppUsageHelper.java */
    /* renamed from: com.huawei.hem.k5$a */
    public class a extends AsyncTask<String, Void, List<UsageAppData>> {
        public a() {
        }

        @Override // android.os.AsyncTask
        public List<UsageAppData> doInBackground(String[] strArr) {
            int i;
            AppUsageCollector c1073k5 = AppUsageCollector.this;
            UserInfoUtil c1424y5 = c1073k5.f3026c;
            if (c1424y5.f4138L == 0) {
                c1424y5.f4138L = c1424y5.f4130D.f2199a.getLong("next_query_event_stamp", 0L);
            }
            long j = c1424y5.f4138L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (j <= 0) {
                j = jCurrentTimeMillis - (c1073k5.f3025b * 7);
            }
            LTKDateUtil.m1403m("AppUsageHelper -- queryEventsBelowAndroid_8 , startTime = " + j + " , endTime = " + jCurrentTimeMillis);
            UsageEvents usageEventsQueryEvents = c1073k5.f3028e.queryEvents(j, jCurrentTimeMillis);
            ArrayList arrayList = new ArrayList();
            if (usageEventsQueryEvents == null) {
                LTKDateUtil.m1393c("AppUsageHelper -- queryEventsBelowAndroid_8 , usageEvents = null 用户没有权限或者没有使用记录");
                return null;
            }
            while (true) {
                i = 1;
                if (!usageEventsQueryEvents.hasNextEvent()) {
                    break;
                }
                UsageEvents.Event event = new UsageEvents.Event();
                usageEventsQueryEvents.getNextEvent(event);
                int eventType = event.getEventType();
                if (event.getTimeStamp() >= j && (eventType == 1 || eventType == 2)) {
                    arrayList.add(event);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Iterator it = arrayList.iterator();
            UsageAppData c1098l5 = null;
            String str = "";
            String str2 = str;
            while (it.hasNext()) {
                UsageEvents.Event event2 = (UsageEvents.Event) it.next();
                String packageName = event2.getPackageName();
                int eventType2 = event2.getEventType();
                long timeStamp = event2.getTimeStamp();
                String str3 = simpleDateFormat.format(new Date(timeStamp));
                if (eventType2 == i) {
                    c1098l5 = new UsageAppData();
                    c1098l5.setmPackageName(packageName);
                    c1098l5.setmAppName(c1073k5.m2163b(packageName));
                    c1098l5.setmBeginTimeStamp(timeStamp);
                    str2 = packageName;
                } else if (TextUtils.isEmpty(str) || str.equals(str3)) {
                    if (c1098l5 != null && str2.equals(packageName)) {
                        c1098l5.setmEndTimeStamp(timeStamp);
                        arrayList2.add(c1098l5);
                        c1098l5 = null;
                        str2 = "";
                    }
                } else if (c1098l5 != null) {
                    Date date = new Date(timeStamp);
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    calendar.set(11, 0);
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    long timeInMillis = calendar.getTimeInMillis();
                    LTKDateUtil.m1403m("AppUsageHelper -- getTodayStartStamp()  获取当日的时间戳 = " + timeInMillis);
                    c1098l5.setmEndTimeStamp(timeInMillis - 1);
                    arrayList2.add(c1098l5);
                    UsageAppData c1098l52 = new UsageAppData();
                    c1098l52.setmPackageName(str2);
                    c1098l52.setmAppName(c1073k5.m2163b(str2));
                    c1098l52.setmBeginTimeStamp(timeInMillis);
                    c1098l52.setmEndTimeStamp(timeStamp);
                    arrayList2.add(c1098l52);
                    c1098l5 = null;
                    str2 = "";
                }
                str = str3;
                i = 1;
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                UsageAppData c1098l53 = (UsageAppData) it2.next();
                ArrayList arrayListM1772q = CompilerOutline.m1772q("com.android.documentsui", "com.android.systemui", "com.android.launcher3", "com.huawei.hwstartupguide", "com.android.packageinstaller");
                CompilerOutline.m1749G(arrayListM1772q, "com.android.permissioncontroller", "com.android.providers.contacts", "com.lenovo.mia.setupwizard", "com.tbsmart.levision");
                CompilerOutline.m1749G(arrayListM1772q, "com.huawei.android.launcher", "com.android.provision", "com.huawei.android.hwouc", "com.google.android.inputmethod.pinyin");
                arrayListM1772q.add(DispatchConstants.ANDROID);
                if (arrayListM1772q.contains(c1098l53.getmPackageName())) {
                    it2.remove();
                }
            }
            return arrayList2;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(List<UsageAppData> list) {
            List<UsageAppData> list2 = list;
            if (MobileSdkPlatformUtilities.m2273N(list2)) {
                LTKDateUtil.m1393c("AppUsageHelper -- queryEvents , usageAppDataList data is null.");
                return;
            }
            int size = list2.size();
            LTKDateUtil.m1403m("AppUsageHelper -- queryEvents , 应用使用：usageAppDataList size = " + size);
            if (size <= 500) {
                AppUsageCollector.m2162a(AppUsageCollector.this, list2, 0);
                AppUsageCollector.this.f3032i = null;
                return;
            }
            LTKDateUtil.m1390A("AppUsageHelper -- queryEvents , 应用使用：usageAppDataList size > 500 . ");
            AppUsageCollector.this.f3032i = new ArrayList();
            int i = size / 500;
            int i2 = size % 500;
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 * 500;
                i3++;
                AppUsageCollector.this.f3032i.add(list2.subList(i4, i3 * 500));
            }
            if (i2 > 0) {
                int i5 = i * 500;
                AppUsageCollector.this.f3032i.add(list2.subList(i5, i2 + i5));
            }
            if (MobileSdkPlatformUtilities.m2273N(AppUsageCollector.this.f3032i)) {
                return;
            }
            AppUsageCollector c1073k5 = AppUsageCollector.this;
            AppUsageCollector.m2162a(c1073k5, c1073k5.f3032i.get(0), 0);
        }
    }

    public AppUsageCollector() {
        GuardSecureApplication guardSecureApplication = GuardSecureApplication.f1640b;
        this.f3031h = guardSecureApplication;
        this.f3026c = UserInfoUtil.b.f4202a;
        this.f3028e = (UsageStatsManager) guardSecureApplication.getSystemService("usagestats");
        this.f3029f = (AppOpsManager) this.f3031h.getSystemService("appops");
        this.f3030g = this.f3031h.getPackageManager();
        this.f3027d = new HttpCore();
    }

    /* renamed from: a */
    public static void m2162a(AppUsageCollector c1073k5, List list, int i) {
        if (c1073k5 == null) {
            throw null;
        }
        if (!LauncherMenuHelper.m3005z()) {
            LTKDateUtil.m1403m("AppUsageHelperno need upload");
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            UsageParams c1124m5 = new UsageParams(c1073k5.f3031h);
            c1124m5.setEmail(c1073k5.f3026c.m3052k());
            c1124m5.setLogs(list);
            v2Params.setParams(JSON.toJSONString(c1124m5));
            v2Params.setMethod(RequestUrl.APP_USAGE_TIME);
            HttpCore c1255rb = c1073k5.f3027d;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new AppUsageUploadCallback(c1073k5, Boolean.class, list, i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    public final String m2163b(String str) throws PackageManager.NameNotFoundException {
        try {
            return this.f3030g.getApplicationLabel(this.f3030g.getApplicationInfo(str, 128)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            LTKDateUtil.m1393c("AppUsageHelper -- error msg = " + e.getMessage());
            return "";
        }
    }
}
