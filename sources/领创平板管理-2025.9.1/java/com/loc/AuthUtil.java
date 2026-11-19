package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hem.AuthConfigManager;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.AMapCoreUtilities;
import com.taobao.accs.AccsState;
import com.taobao.accs.utl.BaseMonitor;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AuthUtil.java */
/* renamed from: com.loc.eo */
/* loaded from: classes.dex */
public final class AuthUtil {

    /* renamed from: h */
    public static volatile boolean f5734h = false;

    /* renamed from: i */
    public static boolean f5735i = true;

    /* renamed from: j */
    public static int f5736j = 1000;

    /* renamed from: k */
    public static int f5737k = 200;

    /* renamed from: l */
    public static boolean f5738l = false;

    /* renamed from: m */
    public static int f5739m = 20;

    /* renamed from: n */
    public static int f5740n = 0;

    /* renamed from: o */
    public static volatile int f5741o = 0;

    /* renamed from: p */
    public static boolean f5742p = true;

    /* renamed from: q */
    public static boolean f5743q = false;

    /* renamed from: r */
    public static int f5744r = -1;

    /* renamed from: s */
    public static long f5745s;

    /* renamed from: t */
    public static ArrayList<String> f5746t = new ArrayList<>();

    /* renamed from: u */
    public static ArrayList<String> f5747u = new ArrayList<>();

    /* renamed from: v */
    public static volatile boolean f5748v = false;

    /* renamed from: w */
    public static boolean f5749w = true;

    /* renamed from: x */
    public static long f5750x = InactivityTimer.INACTIVITY_DELAY_MS;

    /* renamed from: y */
    public static boolean f5751y = false;

    /* renamed from: z */
    public static double f5752z = 0.618d;

    /* renamed from: A */
    public static boolean f5713A = true;

    /* renamed from: B */
    public static int f5714B = 80;

    /* renamed from: a */
    public static long f5727a = 3600000;

    /* renamed from: C */
    public static boolean f5715C = false;

    /* renamed from: D */
    public static boolean f5716D = true;

    /* renamed from: E */
    public static boolean f5717E = false;

    /* renamed from: b */
    public static volatile long f5728b = 0;

    /* renamed from: c */
    public static boolean f5729c = true;

    /* renamed from: F */
    public static boolean f5718F = true;

    /* renamed from: G */
    public static long f5719G = -1;

    /* renamed from: H */
    public static boolean f5720H = true;

    /* renamed from: I */
    public static int f5721I = 1;

    /* renamed from: J */
    public static boolean f5722J = false;

    /* renamed from: K */
    public static int f5723K = 5;

    /* renamed from: L */
    public static boolean f5724L = false;

    /* renamed from: M */
    public static String f5725M = "CMjAzLjEwNy4xLjEvMTU0MDgxL2Q";

    /* renamed from: N */
    public static long f5726N = 0;

    /* renamed from: d */
    public static boolean f5730d = false;

    /* renamed from: e */
    public static boolean f5731e = false;

    /* renamed from: f */
    public static int f5732f = 20480;

    /* renamed from: g */
    public static int f5733g = 10800000;

    /* renamed from: a */
    public static void m4971a(final Context context) {
        if (f5734h) {
            return;
        }
        f5734h = true;
        AuthConfigManager.m1710d(context, CoreUtil.m5023c(), CoreUtil.m5025d(), new AuthConfigManager.b() { // from class: com.loc.eo.1
            @Override // com.huawei.hem.C0943f1.b
            /* renamed from: a */
            public final void mo1733a(AuthConfigManager.c cVar) {
                AuthUtil.m4977a(context, cVar);
            }
        });
    }

    /* renamed from: a */
    public static void m4972a(Context context, JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("13S");
            if (jSONObjectOptJSONObject != null) {
                try {
                    long jOptInt = jSONObjectOptJSONObject.optInt("at", 123) * 60 * 1000;
                    f5727a = jOptInt;
                    AMapLocationPreferences.m5096a(editor, "13S_at", jOptInt);
                } catch (Throwable th) {
                    CoreUtil.m5014a(th, "AuthUtil", "requestSdkAuthInterval");
                }
                m4986d(jSONObjectOptJSONObject, editor);
                try {
                    boolean zM1723q = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("nla"), true);
                    f5716D = zM1723q;
                    AMapLocationPreferences.m5098a(editor, "13S_nla", zM1723q);
                } catch (Throwable unused) {
                }
                try {
                    boolean zM1723q2 = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("asw"), true);
                    f5718F = zM1723q2;
                    AMapLocationPreferences.m5098a(editor, "asw", zM1723q2);
                } catch (Throwable unused2) {
                }
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mlpl");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || context == null) {
                        f5717E = false;
                        AMapLocationPreferences.m5094a(editor, "13S_mlpl");
                    } else {
                        AMapLocationPreferences.m5097a(editor, "13S_mlpl", AMapCoreUtilities.m2247p(jSONArrayOptJSONArray.toString()));
                        f5717E = m4978a(context, jSONArrayOptJSONArray);
                    }
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "AuthUtil", "loadConfigAbleStatus");
        }
    }

    /* renamed from: a */
    public static void m4973a(AuthConfigManager.c cVar, SharedPreferences.Editor editor) {
        try {
            AuthConfigManager.c.a aVar = cVar.f2616c;
            if (aVar != null) {
                boolean z = aVar.f2617a;
                f5735i = z;
                AMapLocationPreferences.m5098a(editor, "exception", z);
                JSONObject jSONObject = aVar.f2618b;
                if (jSONObject != null) {
                    f5736j = jSONObject.optInt("fn", f5736j);
                    int iOptInt = jSONObject.optInt("mpn", f5737k);
                    f5737k = iOptInt;
                    if (iOptInt > 500) {
                        f5737k = 500;
                    }
                    if (f5737k < 30) {
                        f5737k = 30;
                    }
                    f5738l = AuthConfigManager.m1723q(jSONObject.optString("igu"), false);
                    f5739m = jSONObject.optInt("ms", f5739m);
                    f5741o = jSONObject.optInt("rot", 0);
                    f5740n = jSONObject.optInt("pms", 0);
                }
                OfflineLocManager.m4174a(f5736j, f5738l, f5739m, f5740n);
                StatisticsManager.m4187a(f5738l, f5740n);
                AMapLocationPreferences.m5095a(editor, "fn", f5736j);
                AMapLocationPreferences.m5095a(editor, "mpn", f5737k);
                AMapLocationPreferences.m5098a(editor, "igu", f5738l);
                AMapLocationPreferences.m5095a(editor, "ms", f5739m);
                AMapLocationPreferences.m5095a(editor, "rot", f5741o);
                AMapLocationPreferences.m5095a(editor, "pms", f5740n);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AuthUtil", "loadConfigDataUploadException");
        }
    }

    /* renamed from: a */
    public static void m4974a(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("11G");
            if (jSONObjectOptJSONObject != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("able"), true);
                f5749w = zM1723q;
                if (zM1723q) {
                    f5750x = jSONObjectOptJSONObject.optInt("c", 300) * 1000;
                }
                f5751y = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("fa"), false);
                f5752z = Math.min(1.0d, Math.max(0.2d, jSONObjectOptJSONObject.optDouble("ms", 0.618d)));
                AMapLocationPreferences.m5098a(editor, "ca", f5749w);
                AMapLocationPreferences.m5096a(editor, "ct", f5750x);
                AMapLocationPreferences.m5098a(editor, "11G_fa", f5751y);
                AMapLocationPreferences.m5097a(editor, "11G_ms", String.valueOf(f5752z));
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AuthUtil", "loadConfigDataCacheAble");
        }
    }

    /* renamed from: a */
    public static boolean m4975a() {
        return f5735i;
    }

    /* renamed from: a */
    public static boolean m4976a(long j) {
        if (!f5749w) {
            return false;
        }
        long jM5107a = AMapLocationUtilities.m5107a() - j;
        long j2 = f5750x;
        return j2 < 0 || jM5107a < j2;
    }

    /* renamed from: a */
    public static boolean m4977a(Context context, AuthConfigManager.c cVar) {
        SharedPreferences.Editor editorM5090a;
        try {
            editorM5090a = AMapLocationPreferences.m5090a(context, "pref");
        } catch (Throwable unused) {
            editorM5090a = null;
        }
        try {
            m4973a(cVar, editorM5090a);
            m4983c(context);
            JSONObject jSONObject = cVar.f2615b;
            if (jSONObject == null) {
                if (editorM5090a != null) {
                    try {
                        AMapLocationPreferences.m5093a(editorM5090a);
                    } catch (Throwable unused2) {
                    }
                }
                return true;
            }
            m4972a(context, jSONObject, editorM5090a);
            m4974a(jSONObject, editorM5090a);
            m4984c(jSONObject, editorM5090a);
            m4987e(jSONObject, editorM5090a);
            m4992g(jSONObject, editorM5090a);
            m4989f(jSONObject, editorM5090a);
            m4993h(jSONObject, editorM5090a);
            m4981b(jSONObject, editorM5090a);
            if (editorM5090a != null) {
                try {
                    AMapLocationPreferences.m5093a(editorM5090a);
                } catch (Throwable unused3) {
                }
            }
            return true;
        } catch (Throwable unused4) {
            if (editorM5090a == null) {
                return false;
            }
            try {
                AMapLocationPreferences.m5093a(editorM5090a);
                return false;
            } catch (Throwable unused5) {
                return false;
            }
        }
    }

    /* renamed from: a */
    public static boolean m4978a(Context context, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0 && context != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        if (AMapLocationUtilities.m5132b(context, jSONArray.getString(i))) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    /* renamed from: b */
    public static int m4979b() {
        return f5737k;
    }

    /* renamed from: b */
    public static void m4980b(Context context) {
        if (f5748v) {
            return;
        }
        f5748v = true;
        try {
            f5735i = AMapLocationPreferences.m5099a(context, "pref", "exception", f5735i);
            m4983c(context);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AuthUtil", "loadLastAbleState p1");
        }
        try {
            f5736j = AMapLocationPreferences.m5088a(context, "pref", "fn", f5736j);
            f5737k = AMapLocationPreferences.m5088a(context, "pref", "mpn", f5737k);
            f5738l = AMapLocationPreferences.m5099a(context, "pref", "igu", f5738l);
            f5739m = AMapLocationPreferences.m5088a(context, "pref", "ms", f5739m);
            f5741o = AMapLocationPreferences.m5088a(context, "pref", "rot", 0);
            int iM5088a = AMapLocationPreferences.m5088a(context, "pref", "pms", 0);
            f5740n = iM5088a;
            OfflineLocManager.m4174a(f5736j, f5738l, f5739m, iM5088a);
            StatisticsManager.m4187a(f5738l, f5740n);
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "AuthUtil", "loadLastAbleState p2");
        }
        try {
            f5749w = AMapLocationPreferences.m5099a(context, "pref", "ca", f5749w);
            f5750x = AMapLocationPreferences.m5089a(context, "pref", "ct", f5750x);
            f5751y = AMapLocationPreferences.m5099a(context, "pref", "11G_fa", f5751y);
            double dDoubleValue = Double.valueOf(AMapLocationPreferences.m5092a(context, "pref", "11G_ms", String.valueOf(f5752z))).doubleValue();
            f5752z = dDoubleValue;
            f5752z = Math.max(0.2d, dDoubleValue);
        } catch (Throwable th3) {
            CoreUtil.m5014a(th3, "AuthUtil", "loadLastAbleState p3");
        }
        try {
            f5729c = AMapLocationPreferences.m5099a(context, "pref", "fr", f5729c);
        } catch (Throwable th4) {
            CoreUtil.m5014a(th4, "AuthUtil", "loadLastAbleState p4");
        }
        try {
            f5718F = AMapLocationPreferences.m5099a(context, "pref", "asw", f5718F);
        } catch (Throwable th5) {
            CoreUtil.m5014a(th5, "AuthUtil", "loadLastAbleState p5");
        }
        try {
            f5719G = AMapLocationPreferences.m5089a(context, "pref", "awsi", f5719G);
        } catch (Throwable th6) {
            CoreUtil.m5014a(th6, "AuthUtil", "loadLastAbleState p6");
        }
        try {
            f5720H = AMapLocationPreferences.m5099a(context, "pref", "15ua", f5720H);
            f5721I = AMapLocationPreferences.m5088a(context, "pref", "15un", f5721I);
            f5726N = AMapLocationPreferences.m5089a(context, "pref", "15ust", f5726N);
        } catch (Throwable th7) {
            CoreUtil.m5014a(th7, "AuthUtil", "loadLastAbleState p7");
        }
        try {
            f5722J = AMapLocationPreferences.m5099a(context, "pref", "ok9", f5722J);
            f5723K = AMapLocationPreferences.m5088a(context, "pref", "ok10", f5723K);
            f5725M = AMapLocationPreferences.m5092a(context, "pref", "ok11", f5725M);
        } catch (Throwable th8) {
            CoreUtil.m5014a(th8, "AuthUtil", "loadLastAbleState p8");
        }
        try {
            f5730d = AMapLocationPreferences.m5099a(context, "pref", "17ya", false);
            f5731e = AMapLocationPreferences.m5099a(context, "pref", "17ym", false);
            f5733g = AMapLocationPreferences.m5088a(context, "pref", "17yi", 2) * 60 * 60 * 1000;
            f5732f = AMapLocationPreferences.m5088a(context, "pref", "17yx", 100) * 1024;
        } catch (Throwable th9) {
            CoreUtil.m5014a(th9, "AuthUtil", "loadLastAbleState p9");
        }
        try {
            f5728b = AMapLocationUtilities.m5127b();
            f5727a = AMapLocationPreferences.m5089a(context, "pref", "13S_at", f5727a);
            f5716D = AMapLocationPreferences.m5099a(context, "pref", "13S_nla", f5716D);
            f5713A = AMapLocationPreferences.m5099a(context, "pref", "13J_able", f5713A);
            f5714B = AMapLocationPreferences.m5088a(context, "pref", "13J_c", f5714B);
        } catch (Throwable th10) {
            CoreUtil.m5014a(th10, "AuthUtil", "loadLastAbleState p10");
        }
        AuthConfigManager.m1726t(context);
        try {
            String strM5092a = AMapLocationPreferences.m5092a(context, "pref", "13S_mlpl", (String) null);
            if (!TextUtils.isEmpty(strM5092a)) {
                f5717E = m4978a(context, new JSONArray(AMapCoreUtilities.m2251t(strM5092a)));
            }
        } catch (Throwable th11) {
            CoreUtil.m5014a(th11, "AuthUtil", "loadLastAbleState p11");
        }
        try {
            boolean zM5099a = AMapLocationPreferences.m5099a(context, "pref", "197a", false);
            String strM5092a2 = AMapLocationPreferences.m5092a(context, "pref", "197dv", "");
            String strM5092a3 = AMapLocationPreferences.m5092a(context, "pref", "197tv", "");
            if (zM5099a && CoreUtil.f5754a.equals(strM5092a2)) {
                for (String str : CoreUtil.f5755b) {
                    if (str.equals(strM5092a3)) {
                        CoreUtil.f5754a = strM5092a3;
                    }
                }
            }
        } catch (Throwable th12) {
            CoreUtil.m5014a(th12, "AuthUtil", "loadLastAbleState p12");
        }
    }

    /* renamed from: b */
    public static void m4981b(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("197");
            if (jSONObject2 != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObject2.optString("able"), false);
                AMapLocationPreferences.m5098a(editor, "197a", zM1723q);
                if (zM1723q) {
                    AMapLocationPreferences.m5097a(editor, "197dv", jSONObject2.optString(AccsState.SDK_VERSION, ""));
                    AMapLocationPreferences.m5097a(editor, "197tv", jSONObject2.optString("tv", ""));
                } else {
                    AMapLocationPreferences.m5097a(editor, "197dv", "");
                    AMapLocationPreferences.m5097a(editor, "197tv", "");
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public static int m4982c() {
        if (f5741o < 0) {
            f5741o = 0;
        }
        return f5741o;
    }

    /* renamed from: c */
    public static void m4983c(Context context) {
        try {
            SDKInfo c1069k1M5023c = CoreUtil.m5023c();
            c1069k1M5023c.f3004c = f5735i ? 1 : 0;
            SDKLogHandler.m5327a(context, c1069k1M5023c);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public static void m4984c(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("13J");
            if (jSONObjectOptJSONObject != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("able"), true);
                f5713A = zM1723q;
                if (zM1723q) {
                    f5714B = jSONObjectOptJSONObject.optInt("c", f5714B);
                }
                AMapLocationPreferences.m5098a(editor, "13J_able", f5713A);
                AMapLocationPreferences.m5095a(editor, "13J_c", f5714B);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AuthUtil", "loadConfigDataGpsGeoAble");
        }
    }

    /* renamed from: d */
    public static long m4985d() {
        return f5750x;
    }

    /* renamed from: d */
    public static void m4986d(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            boolean zM1723q = AuthConfigManager.m1723q(jSONObject.optString(AccsState.RECENT_ERRORS), true);
            f5729c = zM1723q;
            AMapLocationPreferences.m5098a(editor, "fr", zM1723q);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AuthUtil", "checkReLocationAble");
        }
    }

    /* renamed from: e */
    public static void m4987e(JSONObject jSONObject, SharedPreferences.Editor editor) {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("15O");
            if (jSONObjectOptJSONObject != null) {
                if (AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("able"), false) && ((jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("fl")) == null || jSONArrayOptJSONArray.length() <= 0 || jSONArrayOptJSONArray.toString().contains(Build.MANUFACTURER))) {
                    f5719G = jSONObjectOptJSONObject.optInt("iv", 30) * 1000;
                } else {
                    f5719G = -1L;
                }
                AMapLocationPreferences.m5096a(editor, "awsi", f5719G);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: e */
    public static boolean m4988e() {
        return f5749w;
    }

    /* renamed from: f */
    public static void m4989f(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("17Y");
            if (jSONObject2 != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObject2.optString("able"), false);
                f5730d = zM1723q;
                AMapLocationPreferences.m5098a(editor, "17ya", zM1723q);
                boolean zM1723q2 = AuthConfigManager.m1723q(jSONObject2.optString("mup"), false);
                f5731e = zM1723q2;
                AMapLocationPreferences.m5098a(editor, "17ym", zM1723q2);
                int iOptInt = jSONObject2.optInt("max", 20);
                if (iOptInt > 0) {
                    AMapLocationPreferences.m5095a(editor, "17yx", iOptInt);
                    f5732f = iOptInt * 1024;
                }
                int iOptInt2 = jSONObject2.optInt("inv", 3);
                if (iOptInt2 > 0) {
                    AMapLocationPreferences.m5095a(editor, "17yi", iOptInt2);
                    f5733g = iOptInt2 * 60 * 60 * 1000;
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: f */
    public static boolean m4990f() {
        return f5751y;
    }

    /* renamed from: g */
    public static double m4991g() {
        return f5752z;
    }

    /* renamed from: g */
    public static void m4992g(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("15U");
            if (jSONObjectOptJSONObject != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("able"), true);
                int iOptInt = jSONObjectOptJSONObject.optInt("yn", f5721I);
                f5726N = jSONObjectOptJSONObject.optLong("sysTime", f5726N);
                AMapLocationPreferences.m5098a(editor, "15ua", zM1723q);
                AMapLocationPreferences.m5095a(editor, "15un", iOptInt);
                AMapLocationPreferences.m5096a(editor, "15ust", f5726N);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: h */
    public static void m4993h(JSONObject jSONObject, SharedPreferences.Editor editor) {
        int i;
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("17J");
            if (jSONObjectOptJSONObject != null) {
                boolean zM1723q = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("able"), false);
                f5722J = zM1723q;
                AMapLocationPreferences.m5098a(editor, "ok9", zM1723q);
                if (zM1723q) {
                    String strOptString = jSONObjectOptJSONObject.optString(BaseMonitor.ALARM_POINT_AUTH);
                    String strOptString2 = jSONObjectOptJSONObject.optString("ht");
                    f5725M = strOptString2;
                    AMapLocationPreferences.m5097a(editor, "ok11", strOptString2);
                    AuthConfigManager.m1723q(strOptString, false);
                    f5724L = AuthConfigManager.m1723q(jSONObjectOptJSONObject.optString("nr"), false);
                    String strOptString3 = jSONObjectOptJSONObject.optString("tm");
                    if (TextUtils.isEmpty(strOptString3) || (i = Integer.parseInt(strOptString3)) <= 0 || i >= 20) {
                        return;
                    }
                    f5723K = i;
                    AMapLocationPreferences.m5095a(editor, "ok10", i);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: h */
    public static boolean m4994h() {
        return f5713A;
    }

    /* renamed from: i */
    public static int m4995i() {
        return f5714B;
    }

    /* renamed from: j */
    public static boolean m4996j() {
        return f5716D;
    }

    /* renamed from: k */
    public static boolean m4997k() {
        return f5717E;
    }

    /* renamed from: l */
    public static boolean m4998l() {
        return f5729c;
    }

    /* renamed from: m */
    public static boolean m4999m() {
        return f5718F;
    }

    /* renamed from: n */
    public static long m5000n() {
        return f5719G;
    }

    /* renamed from: o */
    public static boolean m5001o() {
        return f5724L;
    }

    /* renamed from: p */
    public static boolean m5002p() {
        return f5722J;
    }

    /* renamed from: q */
    public static String m5003q() {
        return AMapCoreUtilities.m2251t(f5725M);
    }

    /* renamed from: r */
    public static boolean m5004r() {
        return f5720H && f5721I > 0;
    }

    /* renamed from: s */
    public static int m5005s() {
        return f5721I;
    }

    /* renamed from: t */
    public static long m5006t() {
        return f5726N;
    }
}
