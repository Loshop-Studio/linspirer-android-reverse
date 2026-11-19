package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: Utils.java */
/* renamed from: com.huawei.hem.aj */
/* loaded from: classes.dex */
public final class C0831aj {

    /* renamed from: a */
    public String f2212a = "(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)((/(3[1-2]|[1-2]\\d|\\d))|)";

    /* renamed from: b */
    public Context f2213b;

    /* renamed from: c */
    public Intent f2214c;

    public C0831aj(Context context) {
        this.f2213b = context;
    }

    /* renamed from: a */
    public void m1356a() {
        Intent intent = new Intent("disable.fireWall");
        this.f2214c = intent;
        this.f2213b.sendBroadcast(intent);
        Intent intent2 = new Intent("save.white.list");
        this.f2214c = intent2;
        intent2.putExtra("type", "web");
        this.f2214c.putExtra("white_list", "");
        this.f2213b.sendBroadcast(this.f2214c);
    }

    /* renamed from: b */
    public List<String> m1357b() {
        ArrayList arrayList = new ArrayList();
        String string = Settings.System.getString(this.f2213b.getContentResolver(), "apk_list");
        if (string != null && !"".equals(string)) {
            for (String str : string.split(",")) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public List<String> m1358c() {
        ArrayList arrayList = new ArrayList();
        String string = Settings.System.getString(this.f2213b.getContentResolver(), "web_list");
        if (string != null && !"".equals(string)) {
            for (String str : string.split(",")) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m1359d() throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L27
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L27
            java.lang.String r3 = "/sys/class/net/wlan0/address"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L27
            r3 = 256(0x100, float:3.59E-43)
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L27
            java.lang.String r0 = r1.readLine()     // Catch: java.io.IOException -> L20 java.lang.Throwable -> L3b
            java.lang.String r0 = r0.toUpperCase()     // Catch: java.io.IOException -> L20 java.lang.Throwable -> L3b
            r1.close()     // Catch: java.io.IOException -> L1b
            goto L1f
        L1b:
            r1 = move-exception
            r1.printStackTrace()
        L1f:
            return r0
        L20:
            r0 = move-exception
            goto L2b
        L22:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L3c
        L27:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L2b:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L38
            r1.close()     // Catch: java.io.IOException -> L34
            goto L38
        L34:
            r0 = move-exception
            r0.printStackTrace()
        L38:
            java.lang.String r0 = "02:00:00:00:00:00"
            return r0
        L3b:
            r0 = move-exception
        L3c:
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.io.IOException -> L42
            goto L46
        L42:
            r1 = move-exception
            r1.printStackTrace()
        L46:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0831aj.m1359d():java.lang.String");
    }

    /* renamed from: e */
    public void m1360e(List<String> list) {
        StringBuilder sb = new StringBuilder("");
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        String strSubstring = sb.toString().substring(0, sb.length() - 1);
        Intent intent = new Intent("update.apk.whitelist");
        this.f2214c = intent;
        intent.putExtra("white_list_on", true);
        this.f2214c.putExtra("is_append", false);
        this.f2214c.putExtra("white_list", strSubstring);
        this.f2213b.sendBroadcast(this.f2214c);
        ArrayList arrayList = new ArrayList();
        for (String str : strSubstring.split(",")) {
            if (!arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        StringBuilder sb2 = new StringBuilder("");
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            sb2.append((String) it2.next());
            sb2.append(",");
        }
        Intent intent2 = new Intent("save.white.list");
        this.f2214c = intent2;
        intent2.putExtra("type", "apk");
        this.f2214c.putExtra("white_list", sb2.toString().substring(0, sb2.length() - 1));
        this.f2213b.sendBroadcast(this.f2214c);
    }

    /* renamed from: f */
    public void m1361f(List<String> list) {
        StringBuilder sb = new StringBuilder("");
        StringBuilder sb2 = new StringBuilder("");
        m1356a();
        Intent intent = new Intent("enable.fireWall");
        this.f2214c = intent;
        this.f2213b.sendBroadcast(intent);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (Pattern.matches(this.f2212a, str)) {
                sb.append(str);
                sb.append(",");
            } else {
                sb2.append(str);
                sb2.append(",");
            }
            if (!arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        String string = sb.toString();
        if (string.endsWith(",")) {
            string = string.substring(0, string.length() - 1);
        }
        Intent intent2 = new Intent("update.ip.whitelist");
        this.f2214c = intent2;
        intent2.putExtra("ips", string);
        this.f2213b.sendBroadcast(this.f2214c);
        String string2 = sb2.toString();
        if (string2.endsWith(",")) {
            string2 = string2.substring(0, string2.length() - 1);
        }
        Intent intent3 = new Intent("update.web.whitelist");
        this.f2214c = intent3;
        intent3.putExtra("urls", string2);
        this.f2213b.sendBroadcast(this.f2214c);
        StringBuilder sb3 = new StringBuilder("");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb3.append((String) it.next());
            sb3.append(",");
        }
        Intent intent4 = new Intent("save.white.list");
        this.f2214c = intent4;
        intent4.putExtra("type", "web");
        this.f2214c.putExtra("white_list", sb3.toString().substring(0, sb3.length() - 1));
        this.f2213b.sendBroadcast(this.f2214c);
    }

    /* renamed from: g */
    public final void m1362g(String str, boolean z) {
        Intent intent = new Intent("update.statusbar");
        this.f2214c = intent;
        intent.putExtra(str, z ? 1 : 0);
        this.f2213b.sendBroadcast(this.f2214c);
    }
}
