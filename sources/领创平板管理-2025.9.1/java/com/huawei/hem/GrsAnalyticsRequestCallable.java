package com.huawei.hem;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.hianalytics.HianalyticsHelper;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;

/* renamed from: com.huawei.hem.p8 */
/* loaded from: classes.dex */
public class GrsAnalyticsRequestCallable implements Callable<GrsHttpResponse> {

    /* renamed from: a */
    public final /* synthetic */ ExecutorService f3439a;

    /* renamed from: b */
    public final /* synthetic */ String f3440b;

    /* renamed from: c */
    public final /* synthetic */ GrsPreferencesStore f3441c;

    /* renamed from: d */
    public final /* synthetic */ GrsRequestCoordinator f3442d;

    public GrsAnalyticsRequestCallable(GrsRequestCoordinator c1227q8, ExecutorService executorService, String str, GrsPreferencesStore c0872c8) {
        this.f3442d = c1227q8;
        this.f3439a = executorService;
        this.f3440b = str;
        this.f3441c = c0872c8;
    }

    @Override // java.util.concurrent.Callable
    public GrsHttpResponse call() throws ExecutionException, InterruptedException, TimeoutException {
        GrsRequestCoordinator c1227q8 = this.f3442d;
        ExecutorService executorService = this.f3439a;
        String str = this.f3440b;
        GrsPreferencesStore c0872c8 = this.f3441c;
        GrsHttpResponse c1252r8M2581a = null;
        if (c1227q8 == null) {
            throw null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        GrsHttpResponse c1252r8M2581a2 = c1227q8.m2581a(executorService, c1227q8.f3501i, str, c0872c8);
        int i = c1252r8M2581a2 == null ? 0 : c1252r8M2581a2.f3605c;
        Logger.m3437v("e", "use 2.0 interface return http's code is：{%s}", Integer.valueOf(i));
        if (i != 404 && i != 401) {
            c1252r8M2581a = c1252r8M2581a2;
        } else {
            if (TextUtils.isEmpty(c1227q8.m2583c()) && TextUtils.isEmpty(c1227q8.f3493a.getAppName())) {
                Logger.m3434i("e", "request grs server use 1.0 API must set appName,please check.");
                return c1252r8M2581a;
            }
            c1227q8.f3497e.clear();
            Logger.m3434i("e", "this env has not deploy new interface,so use old interface.");
            c1252r8M2581a = c1227q8.m2581a(executorService, c1227q8.f3500h, str, c0872c8);
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        ArrayList arrayList = new ArrayList(c1227q8.f3498f);
        JSONArray jSONArray = c1227q8.f3499g;
        Context context = c1227q8.f3494b;
        if (context != null && arrayList.size() > 0 && HianalyticsHelper.getInstance().isEnableReportNoSeed(context)) {
            HianalyticsHelper.getInstance().getReportExecutor().submit(new GrsReportRequestMetricsTask(jElapsedRealtime2, context, arrayList, jSONArray));
        }
        return c1252r8M2581a;
    }
}
