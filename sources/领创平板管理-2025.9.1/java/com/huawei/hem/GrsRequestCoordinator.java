package com.huawei.hem;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hem.GrsRequestRegistry;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.q8 */
/* loaded from: classes.dex */
public class GrsRequestCoordinator implements GrsRequestObserverMarker {

    /* renamed from: a */
    public GrsBaseInfo f3493a;

    /* renamed from: b */
    public Context f3494b;

    /* renamed from: c */
    public GrsCacheManager f3495c;

    /* renamed from: d */
    public GrsHttpResponse f3496d;

    /* renamed from: j */
    public GrsServerConfig f3502j;

    /* renamed from: k */
    public GrsRequestInfo f3503k;

    /* renamed from: e */
    public ArrayList<Future<GrsHttpResponse>> f3497e = new ArrayList<>();

    /* renamed from: f */
    public ArrayList<GrsHttpResponse> f3498f = new ArrayList<>();

    /* renamed from: g */
    public JSONArray f3499g = new JSONArray();

    /* renamed from: h */
    public ArrayList<String> f3500h = new ArrayList<>();

    /* renamed from: i */
    public ArrayList<String> f3501i = new ArrayList<>();

    /* renamed from: l */
    public long f3504l = 1;

    public GrsRequestCoordinator(GrsRequestInfo c1152n8, GrsCacheManager c0820a8) throws UnsupportedEncodingException {
        GrsServerConfig c1177o8;
        this.f3503k = c1152n8;
        this.f3493a = c1152n8.f3289a;
        Context context = c1152n8.f3290b;
        this.f3494b = context;
        this.f3495c = c0820a8;
        synchronized (LauncherMenuHelper.class) {
            GrsServerConfig c1177o82 = LauncherMenuHelper.f4126d;
            if (c1177o82 == null) {
                String strM2981b = LauncherMenuHelper.m2981b("grs_sdk_server_config.json", context);
                ArrayList arrayList = null;
                c1177o8 = null;
                arrayList = null;
                if (!TextUtils.isEmpty(strM2981b)) {
                    try {
                        JSONObject jSONObject = new JSONObject(strM2981b).getJSONObject("grs_server");
                        JSONArray jSONArray = jSONObject.getJSONArray("grs_base_url");
                        if (jSONArray != null && jSONArray.length() > 0) {
                            arrayList = new ArrayList();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                arrayList.add(jSONArray.get(i).toString());
                            }
                        }
                        GrsServerConfig c1177o83 = new GrsServerConfig();
                        LauncherMenuHelper.f4126d = c1177o83;
                        c1177o83.f3374a = arrayList;
                        LauncherMenuHelper.f4126d.f3375b = jSONObject.getString("grs_query_endpoint_1.0");
                        LauncherMenuHelper.f4126d.f3376c = jSONObject.getString("grs_query_endpoint_2.0");
                        LauncherMenuHelper.f4126d.f3377d = jSONObject.getInt("grs_query_timeout");
                    } catch (JSONException e) {
                        Logger.m3439w("a", "getGrsServerBean catch JSONException", e);
                    }
                    c1177o82 = LauncherMenuHelper.f4126d;
                }
            }
            c1177o8 = c1177o82;
        }
        if (c1177o8 == null) {
            Logger.m3438w("e", "g*s***_se****er_conf*** maybe has a big error");
            return;
        }
        this.f3502j = c1177o8;
        List<String> list = c1177o8.f3374a;
        if (list == null || list.size() <= 0) {
            Logger.m3436v("e", "maybe grs_base_url config with [],please check.");
            return;
        }
        if (list.size() > 10) {
            throw new IllegalArgumentException("grs_base_url's count is larger than MAX value 10");
        }
        String str = c1177o8.f3375b;
        String str2 = c1177o8.f3376c;
        if (list.size() > 0) {
            for (String str3 : list) {
                if (str3.startsWith("https://")) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j(str3);
                    Locale locale = Locale.ROOT;
                    Object[] objArr = new Object[1];
                    objArr[0] = TextUtils.isEmpty(m2583c()) ? this.f3493a.getAppName() : m2583c();
                    sbM1765j.append(String.format(locale, str, objArr));
                    String grsReqParamJoint = this.f3493a.getGrsReqParamJoint(false, false, "1.0", this.f3494b);
                    if (!TextUtils.isEmpty(grsReqParamJoint)) {
                        sbM1765j.append("?");
                        sbM1765j.append(grsReqParamJoint);
                    }
                    this.f3500h.add(sbM1765j.toString());
                    StringBuilder sb = new StringBuilder();
                    sb.append(str3);
                    sb.append(str2);
                    String grsReqParamJoint2 = this.f3493a.getGrsReqParamJoint(false, false, m2583c(), this.f3494b);
                    if (!TextUtils.isEmpty(grsReqParamJoint2)) {
                        sb.append("?");
                        sb.append(grsReqParamJoint2);
                    }
                    this.f3501i.add(sb.toString());
                } else {
                    Logger.m3438w("e", "grs server just support https scheme url,please check.");
                }
            }
        }
        Logger.m3437v("e", "request to GRS server url is{%s} and {%s}", this.f3500h, this.f3501i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ed A[LOOP:0: B:3:0x0006->B:59:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.huawei.hem.GrsHttpResponse m2581a(java.util.concurrent.ExecutorService r17, java.util.ArrayList<java.lang.String> r18, java.lang.String r19, com.huawei.hem.GrsPreferencesStore r20) throws java.util.concurrent.ExecutionException, java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1227q8.m2581a(java.util.concurrent.ExecutorService, java.util.ArrayList, java.lang.String, com.huawei.hem.c8):com.huawei.hem.r8");
    }

    /* renamed from: b */
    public synchronized void m2582b(GrsHttpResponse c1252r8) {
        this.f3498f.add(c1252r8);
        GrsHttpResponse c1252r82 = this.f3496d;
        if (c1252r82 != null && c1252r82.m2659d()) {
            Logger.m3436v("e", "grsResponseResult is ok");
            return;
        }
        if (c1252r8.m2658c()) {
            Logger.m3434i("e", "GRS server open 503 limiting strategy.");
            GrsRequestRegistry.m3084b(this.f3493a.getGrsParasKey(false, true, this.f3494b), new GrsRequestRegistry.a(c1252r8.f3613k, SystemClock.elapsedRealtime()));
            return;
        }
        if (!c1252r8.m2659d()) {
            Logger.m3436v("e", "grsResponseResult has exception so need return");
            return;
        }
        this.f3496d = c1252r8;
        this.f3495c.m1301b(this.f3493a, c1252r8, this.f3494b, this.f3503k);
        for (int i = 0; i < this.f3497e.size(); i++) {
            if (!this.f3500h.get(i).equals(c1252r8.f3615m) && !this.f3501i.get(i).equals(c1252r8.f3615m) && !this.f3497e.get(i).isCancelled()) {
                Logger.m3434i("e", "future cancel");
                this.f3497e.get(i).cancel(true);
            }
        }
    }

    /* renamed from: c */
    public final String m2583c() {
        GrsLocalManagerProxy c0924e8M1669a = GrsLocalManagerProxy.m1669a(this.f3494b.getPackageName(), this.f3493a);
        GrsLocalApplication c0847b9 = c0924e8M1669a != null ? c0924e8M1669a.f2517a.f2387a : null;
        if (c0847b9 == null) {
            return "";
        }
        String str = c0847b9.f2284a;
        Logger.m3437v("e", "get appName from local assets is{%s}", str);
        return str;
    }
}
