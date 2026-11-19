package com.loc;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;

/* compiled from: WifiManagerWrapper.java */
/* renamed from: com.loc.ed */
/* loaded from: classes.dex */
public final class WifiManagerWrapper {

    /* renamed from: d */
    public static long f5576d;

    /* renamed from: e */
    public static long f5577e;

    /* renamed from: f */
    public static long f5578f;

    /* renamed from: g */
    public static long f5579g;

    /* renamed from: h */
    public static long f5580h;

    /* renamed from: v */
    public static HashMap<String, Long> f5581v = new HashMap<>(36);

    /* renamed from: w */
    public static long f5582w = 0;

    /* renamed from: x */
    public static int f5583x = 0;

    /* renamed from: z */
    public static long f5584z = 0;

    /* renamed from: D */
    public CollectionManager f5588D;

    /* renamed from: a */
    public WifiManager f5589a;

    /* renamed from: i */
    public Context f5592i;

    /* renamed from: s */
    public WifiAgeEstimator f5602s;

    /* renamed from: b */
    public ArrayList<AmapWifi> f5590b = new ArrayList<>();

    /* renamed from: c */
    public ArrayList<AmapWifi> f5591c = new ArrayList<>();

    /* renamed from: j */
    public boolean f5593j = false;

    /* renamed from: k */
    public StringBuilder f5594k = null;

    /* renamed from: l */
    public boolean f5595l = true;

    /* renamed from: m */
    public boolean f5596m = true;

    /* renamed from: n */
    public boolean f5597n = true;

    /* renamed from: B */
    public volatile WifiInfo f5586B = null;

    /* renamed from: o */
    public String f5598o = null;

    /* renamed from: p */
    public TreeMap<Integer, AmapWifi> f5599p = null;

    /* renamed from: q */
    public boolean f5600q = true;

    /* renamed from: r */
    public boolean f5601r = false;

    /* renamed from: t */
    public String f5603t = "";

    /* renamed from: u */
    public long f5604u = 0;

    /* renamed from: y */
    public ConnectivityManager f5605y = null;

    /* renamed from: C */
    public long f5587C = 30000;

    /* renamed from: A */
    public volatile boolean f5585A = false;

    public WifiManagerWrapper(Context context, WifiManager wifiManager, Handler handler) {
        this.f5589a = wifiManager;
        this.f5592i = context;
        WifiAgeEstimator c1821ec = new WifiAgeEstimator(context, "wifiAgee", handler);
        this.f5602s = c1821ec;
        c1821ec.m4713a();
    }

    /* renamed from: a */
    public static boolean m4835a(int i) {
        int iCalculateSignalLevel = 20;
        try {
            iCalculateSignalLevel = WifiManager.calculateSignalLevel(i, 20);
        } catch (ArithmeticException e) {
            CoreUtil.m5014a(e, "Aps", "wifiSigFine");
        }
        return iCalculateSignalLevel > 0;
    }

    /* renamed from: a */
    public static boolean m4836a(WifiInfo wifiInfo) {
        return (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getSSID()) || !AMapLocationUtilities.m5118a(wifiInfo.getBSSID())) ? false : true;
    }

    /* renamed from: b */
    public static long m4837b() {
        return ((AMapLocationUtilities.m5127b() - f5582w) / 1000) + 1;
    }

    /* renamed from: d */
    private void m4838d(boolean z) {
        String strValueOf;
        ArrayList<AmapWifi> arrayList = this.f5590b;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (AMapLocationUtilities.m5127b() - f5579g > 3600000) {
            m4861g();
        }
        if (this.f5599p == null) {
            this.f5599p = new TreeMap<>(Collections.reverseOrder());
        }
        this.f5599p.clear();
        if (this.f5601r && z) {
            try {
                this.f5591c.clear();
            } catch (Throwable unused) {
            }
        }
        int size = this.f5590b.size();
        this.f5604u = 0L;
        for (int i = 0; i < size; i++) {
            AmapWifi c1796de = this.f5590b.get(i);
            if (c1796de.f5302h) {
                this.f5604u = c1796de.f5300f;
            }
            if (AMapLocationUtilities.m5118a(AmapWifi.m4516a(c1796de.f5295a)) && (size <= 20 || m4835a(c1796de.f5297c))) {
                if (this.f5601r && z) {
                    this.f5591c.add(c1796de);
                }
                if (!TextUtils.isEmpty(c1796de.f5296b)) {
                    strValueOf = "<unknown ssid>".equals(c1796de.f5296b) ? "unkwn" : String.valueOf(i);
                    this.f5599p.put(Integer.valueOf((c1796de.f5297c * 25) + i), c1796de);
                }
                c1796de.f5296b = strValueOf;
                this.f5599p.put(Integer.valueOf((c1796de.f5297c * 25) + i), c1796de);
            }
        }
        this.f5590b.clear();
        Iterator<AmapWifi> it = this.f5599p.values().iterator();
        while (it.hasNext()) {
            this.f5590b.add(it.next());
        }
        this.f5599p.clear();
    }

    /* renamed from: o */
    public static String m4839o() {
        return String.valueOf(AMapLocationUtilities.m5127b() - f5579g);
    }

    /* renamed from: q */
    private List<AmapWifi> m4840q() {
        WifiManager wifiManager = this.f5589a;
        if (wifiManager != null) {
            try {
                List<ScanResult> scanResults = wifiManager.getScanResults();
                HashMap<String, Long> map = new HashMap<>(36);
                if (scanResults != null) {
                    for (ScanResult scanResult : scanResults) {
                        map.put(scanResult.BSSID, Long.valueOf(scanResult.timestamp));
                    }
                }
                if (f5581v.isEmpty() || !f5581v.equals(map)) {
                    f5581v = map;
                    f5582w = AMapLocationUtilities.m5127b();
                }
                this.f5598o = null;
                ArrayList arrayList = new ArrayList();
                this.f5603t = "";
                this.f5586B = m4866l();
                if (m4836a(this.f5586B)) {
                    this.f5603t = this.f5586B.getBSSID();
                }
                int size = scanResults.size();
                for (int i = 0; i < size; i++) {
                    ScanResult scanResult2 = scanResults.get(i);
                    AmapWifi c1796de = new AmapWifi(!TextUtils.isEmpty(this.f5603t) && this.f5603t.equals(scanResult2.BSSID));
                    c1796de.f5296b = scanResult2.SSID;
                    c1796de.f5298d = scanResult2.frequency;
                    c1796de.f5299e = scanResult2.timestamp;
                    c1796de.f5295a = AmapWifi.m4515a(scanResult2.BSSID);
                    c1796de.f5297c = (short) scanResult2.level;
                    short sElapsedRealtime = (short) ((SystemClock.elapsedRealtime() - (scanResult2.timestamp / 1000)) / 1000);
                    c1796de.f5301g = sElapsedRealtime;
                    if (sElapsedRealtime < 0) {
                        c1796de.f5301g = (short) 0;
                    }
                    c1796de.f5300f = AMapLocationUtilities.m5127b();
                    arrayList.add(c1796de);
                }
                this.f5602s.m4716a((List) arrayList);
                return arrayList;
            } catch (SecurityException e) {
                this.f5598o = e.getMessage();
            } catch (Throwable th) {
                this.f5598o = null;
                CoreUtil.m5014a(th, "WifiManagerWrapper", "getScanResults");
            }
        }
        return null;
    }

    /* renamed from: r */
    private int m4841r() {
        WifiManager wifiManager = this.f5589a;
        if (wifiManager != null) {
            return wifiManager.getWifiState();
        }
        return 4;
    }

    /* renamed from: s */
    private boolean m4842s() {
        long jM5127b = AMapLocationUtilities.m5127b() - f5576d;
        if (jM5127b < 4900) {
            return false;
        }
        if (m4843t() && jM5127b < 9900) {
            return false;
        }
        if (f5583x > 1) {
            long jM5000n = this.f5587C;
            if (jM5000n == 30000) {
                jM5000n = AuthUtil.m5000n() != -1 ? AuthUtil.m5000n() : 30000L;
            }
            if (Build.VERSION.SDK_INT >= 28 && jM5127b < jM5000n) {
                return false;
            }
        }
        if (this.f5589a == null) {
            return false;
        }
        f5576d = AMapLocationUtilities.m5127b();
        int i = f5583x;
        if (i < 2) {
            f5583x = i + 1;
        }
        return this.f5589a.startScan();
    }

    /* renamed from: t */
    private boolean m4843t() {
        if (this.f5605y == null) {
            this.f5605y = (ConnectivityManager) AMapLocationUtilities.m5108a(this.f5592i, "connectivity");
        }
        return m4854a(this.f5605y);
    }

    /* renamed from: u */
    private boolean m4844u() {
        if (this.f5589a == null) {
            return false;
        }
        return AMapLocationUtilities.m5151h(this.f5592i);
    }

    /* renamed from: v */
    private void m4845v() {
        if (m4849z()) {
            long jM5127b = AMapLocationUtilities.m5127b();
            if (jM5127b - f5577e >= 10000) {
                this.f5590b.clear();
                f5580h = f5579g;
            }
            m4846w();
            if (jM5127b - f5577e >= 10000) {
                for (int i = 20; i > 0 && f5579g == f5580h; i--) {
                    try {
                        Thread.sleep(150L);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* renamed from: w */
    private void m4846w() {
        if (m4849z()) {
            try {
                if (m4842s()) {
                    f5578f = AMapLocationUtilities.m5127b();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "WifiManager", "wifiScan");
            }
        }
    }

    /* renamed from: x */
    private void m4847x() {
        if (f5580h != f5579g) {
            List<AmapWifi> listM4840q = null;
            try {
                listM4840q = m4840q();
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "WifiManager", "updateScanResult");
            }
            f5580h = f5579g;
            if (listM4840q == null) {
                this.f5590b.clear();
            } else {
                this.f5590b.clear();
                this.f5590b.addAll(listM4840q);
            }
        }
    }

    /* renamed from: y */
    private void m4848y() {
        int iM4841r;
        try {
            if (this.f5589a == null) {
                return;
            }
            try {
                iM4841r = m4841r();
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "WifiManager", "onReceive part");
                iM4841r = 4;
            }
            if (this.f5590b == null) {
                this.f5590b = new ArrayList<>();
            }
            if (iM4841r == 0 || iM4841r == 1 || iM4841r == 4) {
                m4861g();
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: z */
    private boolean m4849z() {
        boolean zM4844u = m4844u();
        this.f5600q = zM4844u;
        if (zM4844u && this.f5595l) {
            if (f5578f == 0) {
                return true;
            }
            if (AMapLocationUtilities.m5127b() - f5578f >= 4900 && AMapLocationUtilities.m5127b() - f5579g >= 1500) {
                int i = ((AMapLocationUtilities.m5127b() - f5579g) > 4900L ? 1 : ((AMapLocationUtilities.m5127b() - f5579g) == 4900L ? 0 : -1));
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final ArrayList<AmapWifi> m4850a() {
        if (!this.f5601r) {
            return this.f5591c;
        }
        m4855b(true);
        return this.f5591c;
    }

    /* renamed from: a */
    public final void m4851a(CollectionManager c1808dq) {
        this.f5588D = c1808dq;
    }

    /* renamed from: a */
    public final void m4852a(boolean z) {
        Context context = this.f5592i;
        if (!AuthUtil.m4999m() || !this.f5597n || this.f5589a == null || context == null || !z || AMapLocationUtilities.m5137c() <= 17) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (((Integer) Reflect.m5054a("android.provider.Settings$Global", "getInt", new Object[]{contentResolver, "wifi_scan_always_enabled"}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 0) {
                Reflect.m5054a("android.provider.Settings$Global", "putInt", new Object[]{contentResolver, "wifi_scan_always_enabled", 1}, (Class<?>[]) new Class[]{ContentResolver.class, String.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "WifiManagerWrapper", "enableWifiAlwaysScan");
        }
    }

    /* renamed from: a */
    public final void m4853a(boolean z, boolean z2, boolean z3, long j) {
        this.f5595l = z;
        this.f5596m = z2;
        this.f5597n = z3;
        if (j < 10000) {
            this.f5587C = 10000L;
        } else {
            this.f5587C = j;
        }
    }

    /* renamed from: a */
    public final boolean m4854a(ConnectivityManager connectivityManager) {
        WifiManager wifiManager = this.f5589a;
        if (wifiManager == null) {
            return false;
        }
        try {
            if (AMapLocationUtilities.m5106a(connectivityManager.getActiveNetworkInfo()) == 1) {
                return m4836a(wifiManager.getConnectionInfo());
            }
            return false;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "WifiManagerWrapper", "wifiAccess");
            return false;
        }
    }

    /* renamed from: b */
    public final void m4855b(boolean z) {
        if (z) {
            m4845v();
        } else {
            m4846w();
        }
        boolean z2 = false;
        if (this.f5585A) {
            this.f5585A = false;
            m4848y();
        }
        m4847x();
        if (AMapLocationUtilities.m5127b() - f5579g > 20000) {
            this.f5590b.clear();
        }
        f5577e = AMapLocationUtilities.m5127b();
        if (this.f5590b.isEmpty()) {
            f5579g = AMapLocationUtilities.m5127b();
            List<AmapWifi> listM4840q = m4840q();
            if (listM4840q != null) {
                this.f5590b.addAll(listM4840q);
                z2 = true;
            }
        }
        m4838d(z2);
    }

    /* renamed from: c */
    public final WifiInfo m4856c() {
        try {
            if (this.f5589a != null) {
                return this.f5589a.getConnectionInfo();
            }
            return null;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "WifiManagerWrapper", "getConnectionInfo");
            return null;
        }
    }

    /* renamed from: c */
    public final void m4857c(boolean z) {
        m4861g();
        this.f5590b.clear();
        this.f5602s.m4717a(z);
    }

    /* renamed from: d */
    public final String m4858d() {
        return this.f5598o;
    }

    /* renamed from: e */
    public final ArrayList<AmapWifi> m4859e() {
        if (this.f5590b == null) {
            return null;
        }
        ArrayList<AmapWifi> arrayList = new ArrayList<>();
        if (!this.f5590b.isEmpty()) {
            arrayList.addAll(this.f5590b);
        }
        return arrayList;
    }

    /* renamed from: f */
    public final void m4860f() {
        try {
            this.f5601r = true;
            List<AmapWifi> listM4840q = m4840q();
            if (listM4840q != null) {
                this.f5590b.clear();
                this.f5590b.addAll(listM4840q);
            }
            m4838d(true);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: g */
    public final void m4861g() {
        this.f5586B = null;
        this.f5590b.clear();
    }

    /* renamed from: h */
    public final void m4862h() {
        f5584z = System.currentTimeMillis();
        CollectionManager c1808dq = this.f5588D;
        if (c1808dq != null) {
            c1808dq.m4653b();
        }
    }

    /* renamed from: i */
    public final void m4863i() {
        if (this.f5589a != null && AMapLocationUtilities.m5127b() - f5579g > 4900) {
            f5579g = AMapLocationUtilities.m5127b();
        }
    }

    /* renamed from: j */
    public final void m4864j() {
        if (this.f5589a == null) {
            return;
        }
        this.f5585A = true;
    }

    /* renamed from: k */
    public final boolean m4865k() {
        return this.f5600q;
    }

    /* renamed from: l */
    public final WifiInfo m4866l() {
        this.f5586B = m4856c();
        return this.f5586B;
    }

    /* renamed from: m */
    public final boolean m4867m() {
        return this.f5593j;
    }

    /* renamed from: n */
    public final String m4868n() {
        boolean z;
        String str;
        StringBuilder sb = this.f5594k;
        if (sb == null) {
            this.f5594k = new StringBuilder(700);
        } else {
            sb.delete(0, sb.length());
        }
        this.f5593j = false;
        int size = this.f5590b.size();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < size) {
            String strM4516a = AmapWifi.m4516a(this.f5590b.get(i).f5295a);
            if (!this.f5596m && !"<unknown ssid>".equals(this.f5590b.get(i).f5296b)) {
                z2 = true;
            }
            if (TextUtils.isEmpty(this.f5603t) || !this.f5603t.equals(strM4516a)) {
                z = z3;
                str = "nb";
            } else {
                str = "access";
                z = true;
            }
            this.f5594k.append(String.format(Locale.US, "#%s,%s", strM4516a, str));
            i++;
            z3 = z;
        }
        if (this.f5590b.size() == 0) {
            z2 = true;
        }
        if (!this.f5596m && !z2) {
            this.f5593j = true;
        }
        if (!z3 && !TextUtils.isEmpty(this.f5603t)) {
            StringBuilder sb2 = this.f5594k;
            sb2.append("#");
            sb2.append(this.f5603t);
            this.f5594k.append(",access");
        }
        return this.f5594k.toString();
    }

    /* renamed from: p */
    public final long m4869p() {
        return this.f5604u;
    }
}
