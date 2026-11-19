package com.alibaba.sdk.android.push.notification;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.push.notification.b */
/* loaded from: classes.dex */
public class C0587b {

    /* renamed from: a */
    public static AmsLogger f1300a = AmsLogger.getLogger("MPS:CPushNotification");

    /* renamed from: b */
    public static ArrayList<Integer> f1301b = new ArrayList<>();

    /* renamed from: c */
    public Map<String, String> f1303c;

    /* renamed from: d */
    public String f1304d;

    /* renamed from: e */
    public String f1305e;

    /* renamed from: f */
    public String f1306f;

    /* renamed from: g */
    public String f1307g;

    /* renamed from: h */
    public String f1308h;

    /* renamed from: j */
    public String f1310j;

    /* renamed from: k */
    public String f1311k;

    /* renamed from: l */
    public String f1312l;

    /* renamed from: m */
    public String f1313m;

    /* renamed from: n */
    public String f1314n;

    /* renamed from: o */
    public boolean f1315o;

    /* renamed from: p */
    public int f1316p;

    /* renamed from: i */
    public int f1309i = 0;

    /* renamed from: q */
    public int f1317q = 0;

    /* renamed from: r */
    public int f1318r = 0;

    /* renamed from: s */
    public int f1319s = 1;

    /* renamed from: t */
    public int f1320t = 0;

    /* renamed from: u */
    public int f1321u = 3;

    /* renamed from: v */
    public int f1322v = 0;

    /* renamed from: w */
    public int f1323w = 0;

    /* renamed from: x */
    public int f1324x = 0;

    /* renamed from: y */
    public int f1325y = 0;

    /* renamed from: z */
    public int f1326z = 0;

    /* renamed from: A */
    public boolean f1302A = false;

    static {
        f1301b.add(-2);
        f1301b.add(0);
        f1301b.add(1);
        f1301b.add(-1);
        f1301b.add(2);
    }

    /* renamed from: a */
    public String m884a() {
        return this.f1307g;
    }

    /* renamed from: a */
    public void m885a(int i) {
        this.f1316p = i;
    }

    /* renamed from: a */
    public void m886a(String str) {
        this.f1307g = str;
    }

    /* renamed from: a */
    public void m887a(Map<String, String> map) {
        this.f1303c = map;
    }

    /* renamed from: a */
    public void m888a(boolean z) {
        this.f1302A = z;
    }

    /* renamed from: b */
    public String m889b() {
        return this.f1304d;
    }

    /* renamed from: b */
    public void m890b(int i) {
        this.f1318r = i;
    }

    /* renamed from: b */
    public void m891b(String str) {
        this.f1304d = str;
    }

    /* renamed from: c */
    public String m892c() {
        return this.f1305e;
    }

    /* renamed from: c */
    public void m893c(int i) {
        this.f1319s = i;
    }

    /* renamed from: c */
    public void m894c(String str) {
        this.f1305e = str;
    }

    /* renamed from: d */
    public int m895d() {
        return this.f1316p;
    }

    /* renamed from: d */
    public void m896d(int i) {
        this.f1320t = i;
    }

    /* renamed from: d */
    public void m897d(String str) {
        this.f1306f = str;
    }

    /* renamed from: e */
    public void m898e(int i) {
        this.f1321u = i;
    }

    /* renamed from: e */
    public void m899e(String str) {
        try {
            if (f1301b.contains(Integer.valueOf(Integer.parseInt(str)))) {
                this.f1317q = Integer.parseInt(str);
            }
        } catch (NumberFormatException e) {
            f1300a.m502e("formar error:数字格式错误", e);
        }
    }

    /* renamed from: e */
    public boolean m900e() {
        return this.f1315o;
    }

    /* renamed from: f */
    public int m901f() {
        return this.f1318r;
    }

    /* renamed from: f */
    public void m902f(int i) {
        this.f1322v = i;
    }

    /* renamed from: f */
    public void m903f(String str) {
        this.f1314n = str;
    }

    /* renamed from: g */
    public int m904g() {
        return this.f1319s;
    }

    /* renamed from: g */
    public void m905g(int i) {
        this.f1323w = i;
    }

    /* renamed from: g */
    public void m906g(String str) {
        this.f1308h = str;
    }

    /* renamed from: h */
    public int m907h() {
        return this.f1320t;
    }

    /* renamed from: h */
    public void m908h(int i) {
        this.f1324x = i;
    }

    /* renamed from: h */
    public void m909h(String str) {
        this.f1310j = str;
    }

    /* renamed from: i */
    public int m910i() {
        return this.f1321u;
    }

    /* renamed from: i */
    public void m911i(int i) {
        this.f1325y = i;
    }

    /* renamed from: i */
    public void m912i(String str) {
        this.f1311k = str;
    }

    /* renamed from: j */
    public int m913j() {
        return this.f1322v;
    }

    /* renamed from: j */
    public void m914j(int i) {
        this.f1326z = i;
    }

    /* renamed from: j */
    public void m915j(String str) {
        this.f1312l = str;
    }

    /* renamed from: k */
    public int m916k() {
        return this.f1323w;
    }

    /* renamed from: k */
    public void m917k(int i) {
        this.f1309i = i;
    }

    /* renamed from: k */
    public void m918k(String str) {
        this.f1313m = str;
    }

    /* renamed from: l */
    public int m919l() {
        return this.f1324x;
    }

    /* renamed from: m */
    public int m920m() {
        return this.f1325y;
    }

    /* renamed from: n */
    public int m921n() {
        return this.f1326z;
    }

    /* renamed from: o */
    public boolean m922o() {
        return this.f1302A;
    }

    /* renamed from: p */
    public int m923p() {
        return this.f1317q;
    }

    /* renamed from: q */
    public String m924q() {
        return this.f1314n;
    }

    /* renamed from: r */
    public String m925r() {
        return this.f1308h;
    }

    /* renamed from: s */
    public int m926s() {
        return this.f1309i;
    }

    /* renamed from: t */
    public String m927t() {
        return this.f1310j;
    }

    /* renamed from: u */
    public String m928u() {
        return this.f1311k;
    }

    /* renamed from: v */
    public String m929v() {
        return this.f1312l;
    }

    /* renamed from: w */
    public String m930w() {
        return this.f1313m;
    }
}
