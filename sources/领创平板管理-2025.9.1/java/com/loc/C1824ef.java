package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C0994h1;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

/* compiled from: Cache.java */
/* renamed from: com.loc.ef */
/* loaded from: classes.dex */
public final class C1824ef {

    /* renamed from: a */
    public Hashtable<String, ArrayList<a>> f5610a = new Hashtable<>();

    /* renamed from: i */
    public long f5618i = 0;

    /* renamed from: j */
    public boolean f5619j = false;

    /* renamed from: k */
    public String f5620k = "2.0.201501131131".replace(".", "");

    /* renamed from: l */
    public String f5621l = null;

    /* renamed from: b */
    public boolean f5611b = true;

    /* renamed from: c */
    public long f5612c = 0;

    /* renamed from: d */
    public String f5613d = null;

    /* renamed from: e */
    public C1816dy f5614e = null;

    /* renamed from: m */
    public String f5622m = null;

    /* renamed from: n */
    public long f5623n = 0;

    /* renamed from: f */
    public boolean f5615f = true;

    /* renamed from: g */
    public boolean f5616g = true;

    /* renamed from: h */
    public String f5617h = String.valueOf(AMapLocationClientOption.GeoLanguage.DEFAULT);

    /* compiled from: Cache.java */
    /* renamed from: com.loc.ef$a */
    public static class a {

        /* renamed from: a */
        public C1812du f5624a = null;

        /* renamed from: b */
        public String f5625b = null;

        /* renamed from: a */
        public final C1812du m4902a() {
            return this.f5624a;
        }

        /* renamed from: a */
        public final void m4903a(C1812du c1812du) {
            this.f5624a = c1812du;
        }

        /* renamed from: a */
        public final void m4904a(String str) {
            this.f5625b = TextUtils.isEmpty(str) ? null : str.replace("##", "#");
        }

        /* renamed from: b */
        public final String m4905b() {
            return this.f5625b;
        }
    }

    /* renamed from: a */
    private C1812du m4879a(String str, StringBuilder sb, boolean z) {
        try {
            a aVarM4880a = (str.contains("cgiwifi") || str.contains(UtilityImpl.NET_TYPE_WIFI)) ? m4880a(sb, str) : (str.contains("cgi") && this.f5610a.containsKey(str) && this.f5610a.get(str).size() > 0) ? this.f5610a.get(str).get(0) : null;
            if (aVarM4880a != null && C1841ew.m5117a(aVarM4880a.m4902a())) {
                C1812du c1812duM4902a = aVarM4880a.m4902a();
                c1812duM4902a.m4691e("mem");
                c1812duM4902a.m4697h(aVarM4880a.m4905b());
                if (!z && !C1833eo.m4976a(c1812duM4902a.getTime())) {
                    if (this.f5610a != null && this.f5610a.containsKey(str)) {
                        this.f5610a.get(str).remove(aVarM4880a);
                    }
                }
                if (C1841ew.m5117a(c1812duM4902a)) {
                    this.f5612c = 0L;
                }
                c1812duM4902a.setLocationType(4);
                return c1812duM4902a;
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Cache", "get1");
        }
        return null;
    }

    /* renamed from: a */
    private a m4880a(StringBuilder sb, String str) {
        a aVar;
        char c;
        a aVar2;
        if (this.f5610a.isEmpty() || TextUtils.isEmpty(sb)) {
            return null;
        }
        if (!this.f5610a.containsKey(str)) {
            return null;
        }
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        Hashtable hashtable3 = new Hashtable();
        ArrayList<a> arrayList = this.f5610a.get(str);
        char c2 = 1;
        int size = arrayList.size() - 1;
        while (size >= 0) {
            a aVar3 = arrayList.get(size);
            if (!TextUtils.isEmpty(aVar3.m4905b())) {
                if (!m4887a(aVar3.m4905b(), sb)) {
                    c = 0;
                } else {
                    if (C1841ew.m5119a(aVar3.m4905b(), sb.toString())) {
                        aVar2 = aVar3;
                        aVar = aVar2;
                        break;
                    }
                    c = c2;
                }
                m4884a(aVar3.m4905b(), (Hashtable<String, String>) hashtable);
                m4884a(sb.toString(), (Hashtable<String, String>) hashtable2);
                hashtable3.clear();
                Iterator it = hashtable.keySet().iterator();
                while (it.hasNext()) {
                    hashtable3.put((String) it.next(), "");
                }
                Iterator it2 = hashtable2.keySet().iterator();
                while (it2.hasNext()) {
                    hashtable3.put((String) it2.next(), "");
                }
                Set setKeySet = hashtable3.keySet();
                double[] dArr = new double[setKeySet.size()];
                double[] dArr2 = new double[setKeySet.size()];
                Iterator it3 = setKeySet.iterator();
                int i = 0;
                while (it3 != null && it3.hasNext()) {
                    String str2 = (String) it3.next();
                    double d = 1.0d;
                    dArr[i] = hashtable.containsKey(str2) ? 1.0d : 0.0d;
                    if (!hashtable2.containsKey(str2)) {
                        d = 0.0d;
                    }
                    dArr2[i] = d;
                    i++;
                }
                setKeySet.clear();
                double[] dArrM4889a = m4889a(dArr, dArr2);
                if (dArrM4889a[0] < 0.800000011920929d) {
                    aVar2 = aVar3;
                    if (dArrM4889a[c2] >= Math.min(C1833eo.m4991g(), 0.618d) || (c != 0 && dArrM4889a[0] >= Math.min(C1833eo.m4991g(), 0.618d))) {
                        aVar = aVar2;
                        break;
                    }
                } else {
                    aVar2 = aVar3;
                    aVar = aVar2;
                    break;
                }
            }
            size--;
            c2 = 1;
        }
        aVar = null;
        hashtable.clear();
        hashtable2.clear();
        hashtable3.clear();
        return aVar;
    }

    /* renamed from: a */
    private String m4881a(String str, StringBuilder sb, Context context) {
        if (context == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            this.f5621l = C1841ew.m5156m(context);
            if (str.contains("&")) {
                str = str.substring(0, str.indexOf("&"));
            }
            String strSubstring = str.substring(str.lastIndexOf("#") + 1);
            if (strSubstring.equals("cgi")) {
                jSONObject.put("cgi", str.substring(0, str.length() - 12));
            } else if (!TextUtils.isEmpty(sb) && sb.indexOf(",access") != -1) {
                jSONObject.put("cgi", str.substring(0, str.length() - (strSubstring.length() + 9)));
                String[] strArrSplit = sb.toString().split(",access");
                jSONObject.put("mmac", strArrSplit[0].contains("#") ? strArrSplit[0].substring(strArrSplit[0].lastIndexOf("#") + 1) : strArrSplit[0]);
            }
            return C0994h1.m1933d(C1823ee.m4874a(jSONObject.toString().getBytes("UTF-8"), this.f5621l));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x029b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02a0 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0261 A[EDGE_INSN: B:139:0x0261->B:91:0x0261 BREAK  A[LOOP:0: B:42:0x00cf->B:93:0x0271], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0129 A[Catch: all -> 0x00c4, TRY_LEAVE, TryCatch #1 {all -> 0x00c4, blocks: (B:35:0x00bd, B:45:0x00e6, B:47:0x0100, B:48:0x0104, B:52:0x0119, B:54:0x0129, B:73:0x01b8, B:75:0x01be, B:77:0x01ea, B:78:0x01f7, B:79:0x01fc, B:49:0x0108, B:51:0x010e, B:58:0x0159, B:59:0x016c, B:68:0x01a0, B:63:0x0176), top: B:128:0x00bd }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a0 A[Catch: all -> 0x00c4, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00c4, blocks: (B:35:0x00bd, B:45:0x00e6, B:47:0x0100, B:48:0x0104, B:52:0x0119, B:54:0x0129, B:73:0x01b8, B:75:0x01be, B:77:0x01ea, B:78:0x01f7, B:79:0x01fc, B:49:0x0108, B:51:0x010e, B:58:0x0159, B:59:0x016c, B:68:0x01a0, B:63:0x0176), top: B:128:0x00bd }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0271 A[LOOP:0: B:42:0x00cf->B:93:0x0271, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x027b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4882a(android.content.Context r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1824ef.m4882a(android.content.Context, java.lang.String, boolean):void");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private void m4883a(String str, AMapLocation aMapLocation, StringBuilder sb, Context context) {
        if (context == null) {
            return;
        }
        if (this.f5621l == null) {
            this.f5621l = C1841ew.m5156m(context);
        }
        String strM4881a = m4881a(str, sb, context);
        StringBuilder sb2 = new StringBuilder();
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = null;
        try {
            sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
            sb2.append("CREATE TABLE IF NOT EXISTS hist"); // hmdb 表名继续拼接去除句点的版本号。
            sb2.append(this.f5620k);
            sb2.append(" (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);");
            sQLiteDatabaseOpenOrCreateDatabase.execSQL(sb2.toString());
            sb2.delete(0, sb2.length());
            sb2.append("REPLACE INTO ");
            sb2.append("hist");
            sb2.append(this.f5620k);
            sb2.append(" VALUES (?, ?, ?, ?)");
            Object[] objArr = new Object[4];
            objArr[0] = strM4881a;
            byte[] bArrM4874a = C1823ee.m4874a(sb.toString().getBytes("UTF-8"), this.f5621l);
            objArr[1] = bArrM4874a;
            objArr[2] = C1823ee.m4874a(aMapLocation.toStr().getBytes("UTF-8"), this.f5621l);
            objArr[3] = Long.valueOf(aMapLocation.getTime());
            for (int i = 1; i < 3; i++) {
                objArr[i] = C0994h1.m1933d((byte[]) objArr[i]);
            }
            sQLiteDatabaseOpenOrCreateDatabase.execSQL(sb2.toString(), objArr);
            sb2.delete(0, sb2.length());
            sb2.delete(0, sb2.length());
            if (sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                sQLiteDatabaseOpenOrCreateDatabase.close();
            }
        } catch (Throwable th) {
            try {
                C1834ep.m5014a(th, "DB", "updateHist");
                sb2.delete(0, sb2.length());
                if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    return;
                }
                sQLiteDatabaseOpenOrCreateDatabase.close();
            } catch (Throwable th2) {
                sb2.delete(0, sb2.length());
                if (sQLiteDatabaseOpenOrCreateDatabase != null && sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    sQLiteDatabaseOpenOrCreateDatabase.close();
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m4884a(String str, Hashtable<String, String> hashtable) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hashtable.clear();
        for (String str2 : str.split("#")) {
            if (!TextUtils.isEmpty(str2) && !str2.contains("|")) {
                hashtable.put(str2, "");
            }
        }
    }

    /* renamed from: a */
    private boolean m4885a(C1812du c1812du, boolean z) {
        if (m4888a(z)) {
            return c1812du == null || C1833eo.m4976a(c1812du.getTime()) || z;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m4886a(String str, C1812du c1812du) {
        if (TextUtils.isEmpty(str) || !C1841ew.m5117a(c1812du) || str.startsWith("#")) {
            return false;
        }
        return str.contains("network");
    }

    /* renamed from: a */
    public static boolean m4887a(String str, StringBuilder sb) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(sb) || !str.contains(",access") || sb.indexOf(",access") == -1) {
            return false;
        }
        String[] strArrSplit = str.split(",access");
        String strSubstring = strArrSplit[0].contains("#") ? strArrSplit[0].substring(strArrSplit[0].lastIndexOf("#") + 1) : strArrSplit[0];
        if (TextUtils.isEmpty(strSubstring)) {
            return false;
        }
        return sb.toString().contains(strSubstring + ",access");
    }

    /* renamed from: a */
    private boolean m4888a(boolean z) {
        if (C1833eo.m4988e() || z) {
            return this.f5611b || C1833eo.m4990f() || z;
        }
        return false;
    }

    /* renamed from: a */
    public static double[] m4889a(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[3];
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length; i3++) {
            d2 += dArr[i3] * dArr[i3];
            d3 += dArr2[i3] * dArr2[i3];
            d += dArr[i3] * dArr2[i3];
            if (dArr2[i3] == 1.0d) {
                i2++;
                if (dArr[i3] == 1.0d) {
                    i++;
                }
            }
        }
        dArr3[0] = d / (Math.sqrt(d3) * Math.sqrt(d2));
        double d4 = i;
        dArr3[1] = (d4 * 1.0d) / i2;
        dArr3[2] = d4;
        for (int i4 = 0; i4 < 2; i4++) {
            if (dArr3[i4] > 1.0d) {
                dArr3[i4] = 1.0d;
            }
        }
        return dArr3;
    }

    /* renamed from: b */
    private boolean m4890b() {
        long jM5127b = C1841ew.m5127b();
        long j = this.f5618i;
        long j2 = jM5127b - j;
        if (j == 0) {
            return false;
        }
        return this.f5610a.size() > 360 || j2 > 172800000;
    }

    /* renamed from: c */
    private void m4891c() {
        this.f5618i = 0L;
        if (!this.f5610a.isEmpty()) {
            this.f5610a.clear();
        }
        this.f5619j = false;
    }

    /* renamed from: c */
    private void m4892c(Context context) {
        boolean zIsOpen;
        if (context == null) {
            return;
        }
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = null;
        try {
            sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("hmdb", 0, null);
            if (!C1841ew.m5114a(sQLiteDatabaseOpenOrCreateDatabase, "hist")) {
                if (sQLiteDatabaseOpenOrCreateDatabase != null) {
                    if (zIsOpen) {
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            try {
                sQLiteDatabaseOpenOrCreateDatabase.delete("hist" + this.f5620k, "time<?", new String[]{String.valueOf(C1841ew.m5107a() - 172800000)});
            } catch (Throwable th) {
                C1834ep.m5014a(th, "DB", "clearHist");
                String message = th.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    message.contains("no such table");
                }
            }
            if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                return;
            }
            sQLiteDatabaseOpenOrCreateDatabase.close();
        } catch (Throwable th2) {
            try {
                C1834ep.m5014a(th2, "DB", "clearHist p2");
                if (sQLiteDatabaseOpenOrCreateDatabase == null || !sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    return;
                }
                sQLiteDatabaseOpenOrCreateDatabase.close();
            } finally {
                if (sQLiteDatabaseOpenOrCreateDatabase != null && sQLiteDatabaseOpenOrCreateDatabase.isOpen()) {
                    sQLiteDatabaseOpenOrCreateDatabase.close();
                }
            }
        }
    }

    /* renamed from: a */
    public final C1812du m4893a(Context context, String str, StringBuilder sb, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str) || !C1833eo.m4988e()) {
            return null;
        }
        StringBuilder sbM1767l = C0948f6.m1767l(str, "&");
        sbM1767l.append(this.f5615f);
        sbM1767l.append("&");
        sbM1767l.append(this.f5616g);
        sbM1767l.append("&");
        sbM1767l.append(this.f5617h);
        String string = sbM1767l.toString();
        if (string.contains("gps") || !C1833eo.m4988e() || sb == null) {
            return null;
        }
        if (m4890b()) {
            m4891c();
            return null;
        }
        if (z && !this.f5619j) {
            try {
                String strM4881a = m4881a(string, sb, context);
                m4891c();
                m4882a(context, strM4881a, z2);
            } catch (Throwable unused) {
            }
        }
        if (this.f5610a.isEmpty()) {
            return null;
        }
        return m4879a(string, sb, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.loc.C1812du m4894a(com.loc.C1817dz r16, boolean r17, com.loc.C1812du r18, com.loc.C1822ed r19, java.lang.StringBuilder r20, java.lang.String r21, android.content.Context r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1824ef.m4894a(com.loc.dz, boolean, com.loc.du, com.loc.ed, java.lang.StringBuilder, java.lang.String, android.content.Context, boolean):com.loc.du");
    }

    /* renamed from: a */
    public final void m4895a() {
        this.f5612c = 0L;
        this.f5613d = null;
    }

    /* renamed from: a */
    public final void m4896a(Context context) {
        if (this.f5619j) {
            return;
        }
        try {
            m4891c();
            m4882a(context, (String) null, false);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Cache", "loadDB");
        }
        this.f5619j = true;
    }

    /* renamed from: a */
    public final void m4897a(AMapLocationClientOption aMapLocationClientOption) {
        this.f5616g = aMapLocationClientOption.isNeedAddress();
        this.f5615f = aMapLocationClientOption.isOffset();
        this.f5611b = aMapLocationClientOption.isLocationCacheEnable();
        this.f5617h = String.valueOf(aMapLocationClientOption.getGeoLanguage());
    }

    /* renamed from: a */
    public final void m4898a(C1816dy c1816dy) {
        this.f5614e = c1816dy;
    }

    /* renamed from: a */
    public final void m4899a(String str) {
        this.f5613d = str;
    }

    /* renamed from: a */
    public final void m4900a(String str, StringBuilder sb, C1812du c1812du, Context context, boolean z) {
        try {
            if (C1841ew.m5117a(c1812du)) {
                String str2 = str + "&" + c1812du.isOffset() + "&" + c1812du.m4698i() + "&" + c1812du.m4699j();
                if (!m4886a(str2, c1812du) || c1812du.m4690e().equals("mem") || c1812du.m4690e().equals("file") || c1812du.m4690e().equals("wifioff") || "-3".equals(c1812du.m4688d())) {
                    return;
                }
                if (m4890b()) {
                    m4891c();
                }
                JSONObject jSONObjectM4692f = c1812du.m4692f();
                if (C1841ew.m5120a(jSONObjectM4692f, "offpct")) {
                    jSONObjectM4692f.remove("offpct");
                    c1812du.m4681a(jSONObjectM4692f);
                }
                if (str2.contains(UtilityImpl.NET_TYPE_WIFI)) {
                    if (TextUtils.isEmpty(sb)) {
                        return;
                    }
                    if (c1812du.getAccuracy() >= 300.0f) {
                        int i = 0;
                        for (String str3 : sb.toString().split("#")) {
                            if (str3.contains(",")) {
                                i++;
                            }
                        }
                        if (i >= 8) {
                            return;
                        }
                    } else if (c1812du.getAccuracy() <= 3.0f) {
                        return;
                    }
                    if (str2.contains("cgiwifi") && !TextUtils.isEmpty(c1812du.m4694g())) {
                        String strReplace = str2.replace("cgiwifi", "cgi");
                        C1812du c1812duM4696h = c1812du.m4696h();
                        if (C1841ew.m5117a(c1812duM4696h)) {
                            m4900a(strReplace, new StringBuilder(), c1812duM4696h, context, true);
                        }
                    }
                } else if (str2.contains("cgi") && ((sb != null && sb.indexOf(",") != -1) || "4".equals(c1812du.m4688d()))) {
                    return;
                }
                C1812du c1812duM4879a = m4879a(str2, sb, false);
                if (C1841ew.m5117a(c1812duM4879a) && c1812duM4879a.toStr().equals(c1812du.toStr(3))) {
                    return;
                }
                this.f5618i = C1841ew.m5127b();
                a aVar = new a();
                aVar.m4903a(c1812du);
                aVar.m4904a(TextUtils.isEmpty(sb) ? null : sb.toString());
                if (this.f5610a.containsKey(str2)) {
                    this.f5610a.get(str2).add(aVar);
                } else {
                    ArrayList<a> arrayList = new ArrayList<>();
                    arrayList.add(aVar);
                    this.f5610a.put(str2, arrayList);
                }
                if (z) {
                    try {
                        m4883a(str2, c1812du, sb, context);
                    } catch (Throwable th) {
                        C1834ep.m5014a(th, "Cache", "add");
                    }
                }
            }
        } catch (Throwable th2) {
            C1834ep.m5014a(th2, "Cache", "add");
        }
    }

    /* renamed from: b */
    public final void m4901b(Context context) {
        try {
            m4891c();
            m4892c(context);
            this.f5619j = false;
            this.f5613d = null;
            this.f5623n = 0L;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Cache", "destroy part");
        }
    }
}
