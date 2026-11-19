package com.loc;

import android.content.Context;
import android.support.v4.app.Person;
import android.text.TextUtils;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.AppInfo;
import com.huawei.hem.HttpsDecisionUtil;
import com.huawei.hem.AMapCoreUtilities;
import com.huawei.hem.AgooNotificationHandler;
import com.taobao.accs.AccsState;
import java.util.HashMap;
import java.util.Map;
import org.android.agoo.message.MessageService;

/* compiled from: GeoFenceNetManager.java */
/* renamed from: com.loc.b */
/* loaded from: classes.dex */
public final class GeoFenceNetManager {

    /* renamed from: a */
    public BaseNetManager f5092a;

    public GeoFenceNetManager(Context context) {
        this.f5092a = null;
        try {
            HttpsDecisionUtil.a.f2886a.m2020a(context);
        } catch (Throwable unused) {
        }
        this.f5092a = BaseNetManager.m4058a();
    }

    /* renamed from: a */
    private String m4197a(Context context, String str, Map<String, String> map) {
        try {
            HashMap map2 = new HashMap(16);
            AMapIpv6HttpRequest c1828ej = new AMapIpv6HttpRequest();
            map2.clear();
            map2.put(HttpConstant.CONTENT_TYPE, "application/x-www-form-urlencoded");
            map2.put("Connection", "Keep-Alive");
            map2.put(LazyHeaders.Builder.USER_AGENT_HEADER, "AMAP_Location_SDK_Android 5.5.1");
            String strM2505a = AgooNotificationHandler.m2505a();
            String strM2506b = AgooNotificationHandler.m2506b(context, strM2505a, AMapCoreUtilities.m2248q(map));
            map.put("ts", strM2505a);
            map.put("scode", strM2506b);
            c1828ej.m4938b(map);
            c1828ej.m4935a((Map<String, String>) map2);
            c1828ej.m4937b(str);
            c1828ej.m4140a(AgooNotificationHandler.m2509e(context));
            c1828ej.m4135a(CoreUtil.f5762i);
            c1828ej.m4142b(CoreUtil.f5762i);
            try {
                return new String(BaseNetManager.m4059a(c1828ej).f5048a, "utf-8");
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "GeoFenceNetManager", "post");
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static Map<String, String> m4198b(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        HashMap map = new HashMap(16);
        map.put(Person.KEY_KEY, AppInfo.m1641g(context));
        if (!TextUtils.isEmpty(str)) {
            map.put("keywords", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put("types", str2);
        }
        if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
            map.put("location", str6 + "," + str5);
        }
        if (!TextUtils.isEmpty(str3)) {
            map.put("city", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            map.put("offset", str4);
        }
        if (!TextUtils.isEmpty(str7)) {
            map.put("radius", str7);
        }
        return map;
    }

    /* renamed from: a */
    public final String m4199a(Context context, String str, String str2) {
        Map<String, String> mapM4198b = m4198b(context, str2, null, null, null, null, null, null);
        mapM4198b.put("extensions", AccsState.ALL);
        mapM4198b.put("subdistrict", MessageService.MSG_DB_READY_REPORT);
        return m4197a(context, str, mapM4198b);
    }

    /* renamed from: a */
    public final String m4200a(Context context, String str, String str2, String str3, String str4, String str5) {
        Map<String, String> mapM4198b = m4198b(context, str2, str3, str4, str5, null, null, null);
        mapM4198b.put("children", "1");
        mapM4198b.put("page", "1");
        mapM4198b.put("extensions", "base");
        return m4197a(context, str, mapM4198b);
    }

    /* renamed from: a */
    public final String m4201a(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Map<String, String> mapM4198b = m4198b(context, str2, str3, null, str4, str5, str6, str7);
        mapM4198b.put("children", "1");
        mapM4198b.put("page", "1");
        mapM4198b.put("extensions", "base");
        return m4197a(context, str, mapM4198b);
    }
}
