package com.alibaba.sdk.android.sender;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.sdk.android.logger.ILog;
import com.alibaba.sdk.android.tbrest.SendService;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.UTMini;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.android.agoo.common.AgooConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AlicloudSender {

    /* renamed from: a */
    public static final String f1340a = null;

    /* renamed from: c */
    public static Map<String, SdkInfo> f1342c;

    /* renamed from: d */
    public static Map<String, C0593a> f1343d;

    /* renamed from: g */
    public static SendService f1346g;

    /* renamed from: b */
    public static final ExecutorService f1341b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: e */
    public static final AtomicBoolean f1344e = new AtomicBoolean(false);

    /* renamed from: f */
    public static final AtomicBoolean f1345f = new AtomicBoolean(false);

    /* renamed from: h */
    public static final ILog f1347h = SenderLog.getLogger(AlicloudSender.class);

    /* renamed from: i */
    public static boolean f1348i = false;

    /* renamed from: j */
    @SuppressLint({"SimpleDateFormat"})
    public static final SimpleDateFormat f1349j = new SimpleDateFormat("yyyyMMdd");

    /* renamed from: com.alibaba.sdk.android.sender.AlicloudSender$a */
    public static class C0593a {

        /* renamed from: a */
        public int f1353a;

        /* renamed from: b */
        public String f1354b;

        /* renamed from: c */
        public String f1355c;

        public C0593a() {
            this.f1353a = -1;
            this.f1354b = "";
            this.f1355c = "";
        }
    }

    /* renamed from: a */
    public static void m957a(Application application) {
        if (f1345f.compareAndSet(false, true)) {
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.alibaba.sdk.android.sender.AlicloudSender.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    if (AlicloudSender.f1342c == null || AlicloudSender.f1342c.isEmpty()) {
                        return;
                    }
                    Iterator it = AlicloudSender.f1342c.values().iterator();
                    while (it.hasNext()) {
                        AlicloudSender.m963b(activity.getApplicationContext(), (SdkInfo) it.next());
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }
            });
        }
    }

    /* renamed from: a */
    public static void m958a(Context context) {
        if (f1344e.compareAndSet(false, true)) {
            f1342c = new ConcurrentHashMap();
            f1343d = m965c(context);
            SendService sendService = new SendService();
            f1346g = sendService;
            sendService.openHttp = Boolean.valueOf(f1348i);
            f1346g.init(context, "24527540@android", "24527540", m962b(context), null, null);
            f1346g.appSecret = "56fc10fbe8c6ae7d0d895f49c4fb6838";
        }
    }

    /* renamed from: a */
    public static void m961a(Context context, Map<String, C0593a> map) throws JSONException {
        SharedPreferences.Editor editorRemove;
        if (map == null || map.isEmpty()) {
            editorRemove = context.getSharedPreferences("sp_emas_info", 0).edit().remove("emas_sdk_info");
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str : map.keySet()) {
                C0593a c0593a = map.get(str);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(AgooConstants.MESSAGE_ID, str);
                    jSONObject.put("version", c0593a.f1355c);
                    jSONObject.put("time", c0593a.f1354b);
                    jSONObject.put("statu", c0593a.f1353a);
                    jSONArray.put(jSONObject);
                } catch (Exception unused) {
                }
            }
            editorRemove = context.getSharedPreferences("sp_emas_info", 0).edit().putString("emas_sdk_info", jSONArray.toString());
        }
        editorRemove.apply();
    }

    public static void asyncSend(Application application, SdkInfo sdkInfo) {
        if (application == null) {
            f1347h.mo664d("asyncSend failed. application is null. ");
            return;
        }
        if (sdkInfo == null) {
            f1347h.mo664d("asyncSend failed. sdk info is null. ");
            return;
        }
        String strM972a = sdkInfo.m972a();
        if (TextUtils.isEmpty(strM972a)) {
            f1347h.mo664d("asyncSend failed. sdk id is empty. ");
            return;
        }
        if (TextUtils.isEmpty(sdkInfo.m973b())) {
            f1347h.mo664d("asyncSend failed. sdk version is empty. ");
            return;
        }
        m958a(application.getApplicationContext());
        m957a(application);
        f1342c.put(strM972a, sdkInfo);
        m963b(application.getApplicationContext(), sdkInfo);
    }

    @Deprecated
    public static void asyncSend(Context context, SdkInfo sdkInfo) {
        if (context == null) {
            f1347h.mo664d("asyncSend failed. context is null. ");
            return;
        }
        if (sdkInfo == null) {
            f1347h.mo664d("asyncSend failed. sdk info is null. ");
            return;
        }
        String strM972a = sdkInfo.m972a();
        if (TextUtils.isEmpty(strM972a)) {
            f1347h.mo664d("asyncSend failed. sdk id is empty. ");
        } else {
            if (TextUtils.isEmpty(sdkInfo.m973b())) {
                f1347h.mo664d("asyncSend failed. sdk version is empty. ");
                return;
            }
            m958a(context.getApplicationContext());
            f1342c.put(strM972a, sdkInfo);
            m963b(context.getApplicationContext(), sdkInfo);
        }
    }

    /* renamed from: b */
    public static String m962b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static void m963b(final Context context, final SdkInfo sdkInfo) {
        final String str = f1349j.format(new Date(System.currentTimeMillis()));
        try {
            C0593a c0593a = f1343d.get(sdkInfo.m972a());
            if (c0593a == null || !TextUtils.equals(str, c0593a.f1354b) || !TextUtils.equals(sdkInfo.m973b(), c0593a.f1355c) || c0593a.f1353a != 0) {
                f1341b.execute(new Runnable() { // from class: com.alibaba.sdk.android.sender.AlicloudSender.2
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        AlicloudSender.m964b(context, sdkInfo, str);
                    }
                });
                return;
            }
            f1347h.mo664d(sdkInfo.m972a() + " " + sdkInfo.m973b() + " send abort send. ");
        } catch (Exception unused) {
        }
    }

    /* renamed from: b */
    public static void m964b(Context context, SdkInfo sdkInfo, String str) throws JSONException {
        C0593a c0593a = f1343d.get(sdkInfo.m972a());
        if (c0593a == null) {
            c0593a = new C0593a();
            f1343d.put(sdkInfo.m972a(), c0593a);
        }
        HashMap map = new HashMap();
        map.put("sdkId", sdkInfo.m972a());
        map.put(Constants.KEY_PACKAGE_NAME, context.getPackageName());
        map.put(Constants.KEY_SDK_VERSION, sdkInfo.m973b());
        map.put("kVersion", "1.1.4");
        if (!TextUtils.isEmpty(sdkInfo.m974c())) {
            map.put(Constants.KEY_APP_KEY, sdkInfo.m974c());
        }
        Map<String, String> map2 = sdkInfo.f1357a;
        if (map2 != null) {
            map.putAll(map2);
        }
        map.put("_aliyun_biz_id", "emas-active");
        f1347h.mo664d(sdkInfo.m972a() + " " + sdkInfo.m973b() + " start send. ");
        boolean zBooleanValue = f1346g.sendRequest("adash-emas.cn-hangzhou.aliyuncs.com", System.currentTimeMillis(), f1340a, UTMini.EVENTID_AGOO, sdkInfo.m972a() + "_biz_active", null, null, map).booleanValue();
        ILog iLog = f1347h;
        StringBuilder sb = new StringBuilder();
        sb.append(sdkInfo.m972a());
        sb.append(" ");
        sb.append(sdkInfo.m973b());
        sb.append(" send ");
        sb.append(zBooleanValue ? "success. " : "failed. ");
        iLog.mo664d(sb.toString());
        c0593a.f1354b = str;
        c0593a.f1355c = sdkInfo.m973b();
        c0593a.f1353a = zBooleanValue ? 0 : -1;
        m961a(context, f1343d);
    }

    /* renamed from: c */
    public static Map<String, C0593a> m965c(Context context) throws JSONException {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        String string = context.getSharedPreferences("sp_emas_info", 0).getString("emas_sdk_info", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        String string2 = jSONObject.getString(AgooConstants.MESSAGE_ID);
                        C0593a c0593a = new C0593a();
                        c0593a.f1354b = jSONObject.getString("time");
                        c0593a.f1353a = jSONObject.getInt("statu");
                        c0593a.f1355c = jSONObject.getString("version");
                        concurrentHashMap.put(string2, c0593a);
                    }
                }
            } catch (Exception unused) {
            }
        }
        return concurrentHashMap;
    }

    public static void openHttp() {
        f1348i = true;
    }
}
