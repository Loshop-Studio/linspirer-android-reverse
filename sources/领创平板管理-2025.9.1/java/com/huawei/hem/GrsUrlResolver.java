package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.framework.network.grs.IQueryUrlsCallBack;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.z7 */
/* loaded from: classes.dex */
public class GrsUrlResolver {

    /* renamed from: a */
    public GrsBaseInfo f4272a;

    /* renamed from: b */
    public GrsCacheManager f4273b;

    /* renamed from: c */
    public GrsRequestController f4274c;

    /* renamed from: d */
    public GrsPreferencesStore f4275d;

    /* renamed from: com.huawei.hem.z7$a */
    public static class a implements GrsResponseCallback {

        /* renamed from: a */
        public String f4276a;

        /* renamed from: b */
        public Map<String, String> f4277b;

        /* renamed from: c */
        public IQueryUrlsCallBack f4278c;

        /* renamed from: d */
        public Context f4279d;

        /* renamed from: e */
        public GrsBaseInfo f4280e;

        /* renamed from: f */
        public GrsCacheManager f4281f;

        public a(String str, Map<String, String> map, IQueryUrlsCallBack iQueryUrlsCallBack, Context context, GrsBaseInfo grsBaseInfo, GrsCacheManager c0820a8) {
            this.f4276a = str;
            this.f4277b = map;
            this.f4278c = iQueryUrlsCallBack;
            this.f4279d = context;
            this.f4280e = grsBaseInfo;
            this.f4281f = c0820a8;
        }

        @Override // com.huawei.hem.InterfaceC1026i8
        /* renamed from: a */
        public void mo2040a() {
            Map<String, String> map = this.f4277b;
            if (map != null && !map.isEmpty()) {
                this.f4278c.onCallBackSuccess(this.f4277b);
            } else {
                if (this.f4277b != null) {
                    this.f4278c.onCallBackFail(-3);
                    return;
                }
                Logger.m3434i("a", "access local config for return a domain.");
                this.f4278c.onCallBackSuccess(GrsLocalManagerProxy.m1669a(this.f4279d.getPackageName(), this.f4280e).m1672c(this.f4279d, this.f4281f, this.f4280e, this.f4276a, true));
            }
        }

        @Override // com.huawei.hem.InterfaceC1026i8
        /* renamed from: a */
        public void mo2041a(GrsHttpResponse c1252r8) {
            Map<String, String> mapM3140f = GrsUrlResolver.m3140f(c1252r8.f3609g, this.f4276a);
            if (((HashMap) mapM3140f).isEmpty()) {
                Map<String, String> map = this.f4277b;
                if (map != null && !map.isEmpty()) {
                    this.f4278c.onCallBackSuccess(this.f4277b);
                    return;
                } else if (this.f4277b != null) {
                    this.f4278c.onCallBackFail(-5);
                    return;
                } else {
                    Logger.m3434i("a", "access local config for return a domain.");
                    mapM3140f = GrsLocalManagerProxy.m1669a(this.f4279d.getPackageName(), this.f4280e).m1672c(this.f4279d, this.f4281f, this.f4280e, this.f4276a, true);
                }
            }
            this.f4278c.onCallBackSuccess(mapM3140f);
        }
    }

    /* renamed from: com.huawei.hem.z7$b */
    public static class b implements GrsResponseCallback {

        /* renamed from: a */
        public String f4282a;

        /* renamed from: b */
        public String f4283b;

        /* renamed from: c */
        public IQueryUrlCallBack f4284c;

        /* renamed from: d */
        public String f4285d;

        /* renamed from: e */
        public Context f4286e;

        /* renamed from: f */
        public GrsBaseInfo f4287f;

        /* renamed from: g */
        public GrsCacheManager f4288g;

        public b(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, String str3, Context context, GrsBaseInfo grsBaseInfo, GrsCacheManager c0820a8) {
            this.f4282a = str;
            this.f4283b = str2;
            this.f4284c = iQueryUrlCallBack;
            this.f4285d = str3;
            this.f4286e = context;
            this.f4287f = grsBaseInfo;
            this.f4288g = c0820a8;
        }

        @Override // com.huawei.hem.InterfaceC1026i8
        /* renamed from: a */
        public void mo2040a() {
            if (!TextUtils.isEmpty(this.f4285d)) {
                this.f4284c.onCallBackSuccess(this.f4285d);
            } else {
                if (!TextUtils.isEmpty(this.f4285d)) {
                    this.f4284c.onCallBackFail(-3);
                    return;
                }
                Logger.m3434i("a", "access local config for return a domain.");
                this.f4284c.onCallBackSuccess(GrsLocalManagerProxy.m1669a(this.f4286e.getPackageName(), this.f4287f).m1671b(this.f4286e, this.f4288g, this.f4287f, this.f4282a, this.f4283b, true));
            }
        }

        @Override // com.huawei.hem.InterfaceC1026i8
        /* renamed from: a */
        public void mo2041a(GrsHttpResponse c1252r8) {
            String strM3138c = GrsUrlResolver.m3138c(c1252r8.f3609g, this.f4282a, this.f4283b);
            if (TextUtils.isEmpty(strM3138c)) {
                if (!TextUtils.isEmpty(this.f4285d)) {
                    this.f4284c.onCallBackSuccess(this.f4285d);
                    return;
                } else if (!TextUtils.isEmpty(this.f4285d)) {
                    this.f4284c.onCallBackFail(-5);
                    return;
                } else {
                    Logger.m3434i("a", "access local config for return a domain.");
                    strM3138c = GrsLocalManagerProxy.m1669a(this.f4286e.getPackageName(), this.f4287f).m1671b(this.f4286e, this.f4288g, this.f4287f, this.f4282a, this.f4283b, true);
                }
            }
            this.f4284c.onCallBackSuccess(strM3138c);
        }
    }

    public GrsUrlResolver(GrsBaseInfo grsBaseInfo, GrsCacheManager c0820a8, GrsRequestController c1352v8, GrsPreferencesStore c0872c8) {
        this.f4272a = grsBaseInfo;
        this.f4273b = c0820a8;
        this.f4274c = c1352v8;
        this.f4275d = c0872c8;
    }

    /* renamed from: c */
    public static String m3138c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new JSONObject(str).getJSONObject(str2).getString(str3);
        } catch (JSONException e) {
            Logger.m3439w("a", "Method{getServiceNameUrl} query url from SP occur an JSONException", e);
            return "";
        }
    }

    /* renamed from: d */
    public static Map<String, Map<String, String>> m3139d(String str) throws JSONException {
        HashMap map = new HashMap(16);
        if (TextUtils.isEmpty(str)) {
            Logger.m3436v("a", "isSpExpire jsonValue is null.");
            return map;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                JSONObject jSONObject2 = jSONObject.getJSONObject(string);
                HashMap map2 = new HashMap(16);
                try {
                    Iterator<String> itKeys2 = jSONObject2.keys();
                    while (itKeys2.hasNext()) {
                        String string2 = itKeys2.next().toString();
                        map2.put(string2, jSONObject2.get(string2).toString());
                    }
                } catch (JSONException e) {
                    Logger.m3439w("a", "getServiceUrls occur a JSONException", e);
                }
                map.put(string, map2);
            }
            return map;
        } catch (JSONException e2) {
            Logger.m3439w("a", "getServicesUrlsMap occur a JSONException", e2);
            return map;
        }
    }

    /* renamed from: f */
    public static Map<String, String> m3140f(String str, String str2) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str)) {
            Logger.m3436v("a", "isSpExpire jsonValue is null.");
            return map;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(str2);
            if (jSONObject == null) {
                Logger.m3436v("a", "getServiceNameUrls jsObject null.");
                return map;
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                map.put(string, jSONObject.get(string).toString());
            }
            return map;
        } catch (JSONException e) {
            Logger.m3439w("a", "Method{getServiceNameUrls} query url from SP occur an JSONException", e);
            return map;
        }
    }

    /* renamed from: a */
    public String m3141a(Context context, String str) {
        GrsHttpResponse c1252r8M2858a = this.f4274c.m2858a(new GrsRequestInfo(this.f4272a, context), str, this.f4275d);
        return c1252r8M2858a == null ? "" : c1252r8M2858a.f3609g;
    }

    /* renamed from: b */
    public final String m3142b(String str, String str2, GrsCacheStatus c0846b8, Context context) {
        Map<String, String> mapM1300a = this.f4273b.m1300a(this.f4272a, str, c0846b8, context);
        String str3 = mapM1300a == null ? null : mapM1300a.get(str2);
        if (TextUtils.isEmpty(str3)) {
            return GrsLocalManagerProxy.m1669a(context.getPackageName(), this.f4272a).m1671b(context, this.f4273b, this.f4272a, str, str2, false);
        }
        Logger.m3434i("a", "get url from sp is not empty.");
        GrsLocalManagerProxy.m1670d(context, this.f4272a);
        return str3;
    }

    /* renamed from: e */
    public final Map<String, String> m3143e(String str, GrsCacheStatus c0846b8, Context context) {
        Map<String, String> mapM1300a = this.f4273b.m1300a(this.f4272a, str, c0846b8, context);
        if (mapM1300a == null || mapM1300a.isEmpty()) {
            return GrsLocalManagerProxy.m1669a(context.getPackageName(), this.f4272a).m1672c(context, this.f4273b, this.f4272a, str, false);
        }
        Logger.m3434i("a", "get url from sp is not empty.");
        GrsLocalManagerProxy.m1670d(context, this.f4272a);
        return mapM1300a;
    }
}
