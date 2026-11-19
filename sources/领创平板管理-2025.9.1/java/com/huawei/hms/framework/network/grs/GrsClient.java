package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.C0820a8;
import com.huawei.hem.C0846b8;
import com.huawei.hem.C0872c8;
import com.huawei.hem.C0924e8;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1152n8;
import com.huawei.hem.C1377w8;
import com.huawei.hem.C1451z7;
import com.huawei.hem.C1452z8;
import com.huawei.hms.framework.common.Logger;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.android.agoo.message.MessageService;

/* loaded from: classes.dex */
public class GrsClient {
    public C1377w8 grsClientGlobal;

    public GrsClient(Context context, GrsBaseInfo grsBaseInfo) {
        C1377w8 c1377w8;
        if (context == null || grsBaseInfo == null) {
            throw new NullPointerException("invalid init params for context is null or GrsBaseInfo instance is null Object.");
        }
        synchronized (C1452z8.f4290b) {
            int iUniqueCode = grsBaseInfo.uniqueCode();
            c1377w8 = C1452z8.f4289a.get(context.getPackageName() + iUniqueCode);
            if (c1377w8 != null) {
                C1377w8 c1377w82 = new C1377w8(grsBaseInfo);
                if (!(c1377w8 == c1377w82 ? true : C1377w8.class != c1377w82.getClass() ? false : c1377w8.f3998a.compare(c1377w82.f3998a))) {
                    c1377w8 = new C1377w8(context, grsBaseInfo);
                    C1452z8.f4289a.put(context.getPackageName() + iUniqueCode, c1377w8);
                }
            } else {
                c1377w8 = new C1377w8(context, grsBaseInfo);
                C1452z8.f4289a.put(context.getPackageName() + iUniqueCode, c1377w8);
            }
        }
        this.grsClientGlobal = c1377w8;
    }

    public void ayncGetGrsUrl(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack) {
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (c1377w8 == null) {
            throw null;
        }
        if (iQueryUrlCallBack == null) {
            Logger.m3438w("d", "IQueryUrlCallBack is must not null for process continue.");
            return;
        }
        if (c1377w8.f3998a == null || str == null || str2 == null) {
            iQueryUrlCallBack.onCallBackFail(-6);
            return;
        }
        if (c1377w8.m2902b()) {
            C1451z7 c1451z7 = c1377w8.f4006i;
            Context context = c1377w8.f4001d;
            C0846b8 c0846b8 = new C0846b8();
            String strM3142b = c1451z7.m3142b(str, str2, c0846b8, context);
            if (!c0846b8.m1388a()) {
                c1451z7.f4274c.m2859b(new C1152n8(c1451z7.f4272a, context), new C1451z7.b(str, str2, iQueryUrlCallBack, strM3142b, context, c1451z7.f4272a, c1451z7.f4273b), str, c1451z7.f4275d);
            } else if (TextUtils.isEmpty(strM3142b)) {
                iQueryUrlCallBack.onCallBackFail(-5);
            } else {
                C0924e8.m1670d(context, c1451z7.f4272a);
                iQueryUrlCallBack.onCallBackSuccess(strM3142b);
            }
        }
    }

    public void ayncGetGrsUrls(String str, IQueryUrlsCallBack iQueryUrlsCallBack) {
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (c1377w8 == null) {
            throw null;
        }
        if (iQueryUrlsCallBack == null) {
            Logger.m3438w("d", "IQueryUrlsCallBack is must not null for process continue.");
            return;
        }
        if (c1377w8.f3998a == null || str == null) {
            iQueryUrlsCallBack.onCallBackFail(-6);
            return;
        }
        if (c1377w8.m2902b()) {
            C1451z7 c1451z7 = c1377w8.f4006i;
            Context context = c1377w8.f4001d;
            C0846b8 c0846b8 = new C0846b8();
            Map<String, String> mapM3143e = c1451z7.m3143e(str, c0846b8, context);
            if (!c0846b8.m1388a()) {
                c1451z7.f4274c.m2859b(new C1152n8(c1451z7.f4272a, context), new C1451z7.a(str, mapM3143e, iQueryUrlsCallBack, context, c1451z7.f4272a, c1451z7.f4273b), str, c1451z7.f4275d);
            } else if (mapM3143e == null || mapM3143e.isEmpty()) {
                iQueryUrlsCallBack.onCallBackFail(-5);
            } else {
                C0924e8.m1670d(context, c1451z7.f4272a);
                iQueryUrlsCallBack.onCallBackSuccess(mapM3143e);
            }
        }
    }

    public void clearSp() throws UnsupportedEncodingException {
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (c1377w8.m2902b()) {
            String grsParasKey = c1377w8.f3998a.getGrsParasKey(false, true, c1377w8.f4001d);
            c1377w8.f4004g.f2329a.remove(grsParasKey);
            C0872c8 c0872c8 = c1377w8.f4004g;
            c0872c8.f2329a.remove(C0948f6.m1760e(grsParasKey, "time"));
            c1377w8.f4002e.m2860c(grsParasKey);
        }
    }

    public boolean forceExpire() throws UnsupportedEncodingException {
        GrsBaseInfo grsBaseInfo;
        Context context;
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (!c1377w8.m2902b() || (grsBaseInfo = c1377w8.f3998a) == null || (context = c1377w8.f4001d) == null) {
            return false;
        }
        C0820a8 c0820a8 = c1377w8.f4003f;
        if (c0820a8 == null) {
            throw null;
        }
        String grsParasKey = grsBaseInfo.getGrsParasKey(false, true, context);
        c0820a8.f2188c.f2329a.putString(C0948f6.m1760e(grsParasKey, "time"), MessageService.MSG_DB_READY_REPORT);
        c0820a8.f2187b.remove(grsParasKey + "time");
        c0820a8.f2186a.remove(grsParasKey);
        c0820a8.f2190e.m2860c(grsParasKey);
        return true;
    }

    public String synGetGrsUrl(String str, String str2) {
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (c1377w8.f3998a == null || str == null || str2 == null) {
            Logger.m3438w("d", "invalid para!");
            return null;
        }
        if (!c1377w8.m2902b()) {
            return null;
        }
        C1451z7 c1451z7 = c1377w8.f4006i;
        Context context = c1377w8.f4001d;
        C0846b8 c0846b8 = new C0846b8();
        String strM3142b = c1451z7.m3142b(str, str2, c0846b8, context);
        if (c0846b8.m1388a() && !TextUtils.isEmpty(strM3142b)) {
            Logger.m3437v("a", "get unexpired cache localUrl{%s}", strM3142b);
            C0924e8.m1670d(context, c1451z7.f4272a);
            return strM3142b;
        }
        String strM3138c = C1451z7.m3138c(c1451z7.m3141a(context, str), str, str2);
        if (!TextUtils.isEmpty(strM3138c)) {
            Logger.m3434i("a", "get url is from remote server");
            C0924e8.m1670d(context, c1451z7.f4272a);
            return strM3138c;
        }
        if (!TextUtils.isEmpty(strM3142b)) {
            return strM3142b;
        }
        Logger.m3434i("a", "access local config for return a domain.");
        return C0924e8.m1669a(context.getPackageName(), c1451z7.f4272a).m1671b(context, c1451z7.f4273b, c1451z7.f4272a, str, str2, true);
    }

    public Map<String, String> synGetGrsUrls(String str) {
        C1377w8 c1377w8 = this.grsClientGlobal;
        if (c1377w8.f3998a == null || str == null) {
            Logger.m3438w("d", "invalid para!");
            return new HashMap();
        }
        if (!c1377w8.m2902b()) {
            return new HashMap();
        }
        C1451z7 c1451z7 = c1377w8.f4006i;
        Context context = c1377w8.f4001d;
        C0846b8 c0846b8 = new C0846b8();
        Map<String, String> mapM3143e = c1451z7.m3143e(str, c0846b8, context);
        if (c0846b8.m1388a() && mapM3143e != null && !mapM3143e.isEmpty()) {
            C0924e8.m1670d(context, c1451z7.f4272a);
            return mapM3143e;
        }
        Map<String, String> mapM3140f = C1451z7.m3140f(c1451z7.m3141a(context, str), str);
        if (!((HashMap) mapM3140f).isEmpty()) {
            C0924e8.m1670d(context, c1451z7.f4272a);
            return mapM3140f;
        }
        if (mapM3143e == null || !mapM3143e.isEmpty()) {
            return mapM3143e;
        }
        Logger.m3434i("a", "access local config for return a domain.");
        return C0924e8.m1669a(context.getPackageName(), c1451z7.f4272a).m1672c(context, c1451z7.f4273b, c1451z7.f4272a, str, true);
    }
}
