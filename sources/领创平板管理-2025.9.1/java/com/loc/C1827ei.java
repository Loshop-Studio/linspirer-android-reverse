package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.huawei.hem.C0943f1;
import com.taobao.accs.common.Constants;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: AMapDnsManager.java */
/* renamed from: com.loc.ei */
/* loaded from: classes.dex */
public final class C1827ei {

    /* renamed from: a */
    public static int f5630a = 1;

    /* renamed from: b */
    public static int f5631b = 2;

    /* renamed from: e */
    public static C1827ei f5632e;

    /* renamed from: j */
    public Context f5639j;

    /* renamed from: k */
    public String f5640k;

    /* renamed from: c */
    public long f5633c = 0;

    /* renamed from: d */
    public boolean f5634d = false;

    /* renamed from: f */
    public ArrayList<String> f5635f = new ArrayList<>();

    /* renamed from: g */
    public C1809dr f5636g = new C1809dr();

    /* renamed from: h */
    public C1809dr f5637h = new C1809dr();

    /* renamed from: i */
    public long f5638i = 120000;

    /* renamed from: l */
    public boolean f5641l = false;

    public C1827ei(Context context) {
        this.f5639j = context;
    }

    /* renamed from: a */
    public static synchronized C1827ei m4919a(Context context) {
        if (f5632e == null) {
            f5632e = new C1827ei(context);
        }
        return f5632e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public C1809dr m4922b(int i) {
        return i == f5631b ? this.f5637h : this.f5636g;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017 A[Catch: all -> 0x0090, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:10:0x000f, B:12:0x0017, B:17:0x0027, B:22:0x0033, B:24:0x004d, B:25:0x0082), top: B:31:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[Catch: all -> 0x0090, LOOP:0: B:23:0x004b->B:24:0x004d, LOOP_END, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:10:0x000f, B:12:0x0017, B:17:0x0027, B:22:0x0033, B:24:0x004d, B:25:0x0082), top: B:31:0x0003 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void m4924b(boolean r7, final int r8) {
        /*
            r6 = this;
            monitor-enter(r6)
            if (r7 != 0) goto Lf
            boolean r7 = com.loc.C1833eo.m5001o()     // Catch: java.lang.Throwable -> L90
            if (r7 != 0) goto Lf
            boolean r7 = r6.f5641l     // Catch: java.lang.Throwable -> L90
            if (r7 == 0) goto Lf
            monitor-exit(r6)
            return
        Lf:
            long r0 = r6.f5633c     // Catch: java.lang.Throwable -> L90
            r2 = 0
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 == 0) goto L33
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L90
            long r2 = r6.f5633c     // Catch: java.lang.Throwable -> L90
            long r2 = r0 - r2
            long r4 = r6.f5638i     // Catch: java.lang.Throwable -> L90
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 >= 0) goto L27
            monitor-exit(r6)
            return
        L27:
            long r2 = r6.f5633c     // Catch: java.lang.Throwable -> L90
            long r0 = r0 - r2
            r2 = 60000(0xea60, double:2.9644E-319)
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 >= 0) goto L33
            monitor-exit(r6)
            return
        L33:
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L90
            r6.f5633c = r0     // Catch: java.lang.Throwable -> L90
            r7 = 1
            r6.f5641l = r7     // Catch: java.lang.Throwable -> L90
            java.lang.Thread r7 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L90
            java.lang.StackTraceElement[] r7 = r7.getStackTrace()     // Catch: java.lang.Throwable -> L90
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L90
            r0.<init>()     // Catch: java.lang.Throwable -> L90
            int r1 = r7.length     // Catch: java.lang.Throwable -> L90
            r2 = 0
        L4b:
            if (r2 >= r1) goto L82
            r3 = r7[r2]     // Catch: java.lang.Throwable -> L90
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L90
            r4.<init>()     // Catch: java.lang.Throwable -> L90
            java.lang.String r5 = r3.getClassName()     // Catch: java.lang.Throwable -> L90
            r4.append(r5)     // Catch: java.lang.Throwable -> L90
            java.lang.String r5 = "("
            r4.append(r5)     // Catch: java.lang.Throwable -> L90
            java.lang.String r5 = r3.getMethodName()     // Catch: java.lang.Throwable -> L90
            r4.append(r5)     // Catch: java.lang.Throwable -> L90
            java.lang.String r5 = ":"
            r4.append(r5)     // Catch: java.lang.Throwable -> L90
            int r3 = r3.getLineNumber()     // Catch: java.lang.Throwable -> L90
            r4.append(r3)     // Catch: java.lang.Throwable -> L90
            java.lang.String r3 = "),"
            r4.append(r3)     // Catch: java.lang.Throwable -> L90
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L90
            r0.append(r3)     // Catch: java.lang.Throwable -> L90
            int r2 = r2 + 1
            goto L4b
        L82:
            com.loc.bp r7 = com.loc.C1753bp.m4236a()     // Catch: java.lang.Throwable -> L90
            com.loc.ei$1 r0 = new com.loc.ei$1     // Catch: java.lang.Throwable -> L90
            r0.<init>()     // Catch: java.lang.Throwable -> L90
            r7.m4242b(r0)     // Catch: java.lang.Throwable -> L90
            monitor-exit(r6)
            return
        L90:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1827ei.m4924b(boolean, int):void");
    }

    /* renamed from: b */
    public static boolean m4925b(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0 || strArr2 == null || strArr2.length == 0 || strArr.length != strArr2.length) {
            return false;
        }
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (!strArr[i].equals(strArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static String[] m4926b(JSONArray jSONArray, int i) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new String[0];
        }
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String string = jSONArray.getString(i2);
            if (!TextUtils.isEmpty(string)) {
                if (i == f5631b) {
                    string = "[" + string + "]";
                }
                strArr[i2] = string;
            }
        }
        return strArr;
    }

    /* renamed from: c */
    public static String m4927c(int i) {
        return i == f5631b ? "last_ip_6" : "last_ip_4";
    }

    /* renamed from: d */
    private void m4928d(int i) {
        if (m4922b(i).m4669d()) {
            SharedPreferences.Editor editorM5090a = C1840ev.m5090a(this.f5639j, "cbG9jaXA");
            C1840ev.m5094a(editorM5090a, m4927c(i));
            C1840ev.m5093a(editorM5090a);
            m4922b(i).m4662a(false);
        }
    }

    /* renamed from: e */
    private String m4929e(int i) {
        String str;
        int i2 = 0;
        m4924b(false, i);
        String[] strArrM4664a = m4922b(i).m4664a();
        if (strArrM4664a == null || strArrM4664a.length <= 0) {
            m4931g(i);
            return m4922b(i).m4665b();
        }
        int length = strArrM4664a.length;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            str = strArrM4664a[i2];
            if (!this.f5635f.contains(str)) {
                break;
            }
            i2++;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        m4922b(i).m4661a(str);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m4930f(int i) {
        if (m4922b(i).m4664a() == null || m4922b(i).m4664a().length <= 0) {
            return;
        }
        String str = m4922b(i).m4664a()[0];
        if (str.equals(this.f5640k) || this.f5635f.contains(str)) {
            return;
        }
        this.f5640k = str;
        SharedPreferences.Editor editorM5090a = C1840ev.m5090a(this.f5639j, "cbG9jaXA");
        C1840ev.m5097a(editorM5090a, m4927c(i), str);
        C1840ev.m5093a(editorM5090a);
    }

    /* renamed from: g */
    private void m4931g(int i) {
        String strM5092a = C1840ev.m5092a(this.f5639j, "cbG9jaXA", m4927c(i), (String) null);
        if (TextUtils.isEmpty(strM5092a) || this.f5635f.contains(strM5092a)) {
            return;
        }
        m4922b(i).m4661a(strM5092a);
        m4922b(i).m4666b(strM5092a);
        m4922b(i).m4662a(true);
    }

    /* renamed from: a */
    public final String m4932a(C1830el c1830el, int i) {
        try {
            if (C1833eo.m5002p() && c1830el != null) {
                String strMo1737b = c1830el.mo1737b();
                String host = new URL(strMo1737b).getHost();
                if (!"http://abroad.apilocate.amap.com/mobile/binary".equals(strMo1737b) && !"abroad.apilocate.amap.com".equals(host)) {
                    String str = "apilocate.amap.com".equalsIgnoreCase(host) ? "httpdns.apilocate.amap.com" : host;
                    if (!C0943f1.m1703F(str)) {
                        return null;
                    }
                    String strM4929e = m4929e(i);
                    if (!TextUtils.isEmpty(strM4929e)) {
                        c1830el.m4953d(strMo1737b.replace(host, strM4929e));
                        c1830el.mo1735a().put(Constants.KEY_HOST, str);
                        c1830el.m4954e(str);
                        c1830el.m4141a(i == f5631b);
                        return strM4929e;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* renamed from: a */
    public final void m4933a(int i) {
        if (m4922b(i).m4670e()) {
            m4928d(i);
            return;
        }
        this.f5635f.add(m4922b(i).m4665b());
        m4928d(i);
        m4924b(true, i);
    }

    /* renamed from: a */
    public final void m4934a(boolean z, int i) {
        m4922b(i).m4667b(z);
        if (z) {
            String strM4668c = m4922b(i).m4668c();
            String strM4665b = m4922b(i).m4665b();
            if (TextUtils.isEmpty(strM4665b) || strM4665b.equals(strM4668c)) {
                return;
            }
            SharedPreferences.Editor editorM5090a = C1840ev.m5090a(this.f5639j, "cbG9jaXA");
            C1840ev.m5097a(editorM5090a, m4927c(i), strM4665b);
            C1840ev.m5093a(editorM5090a);
        }
    }
}
