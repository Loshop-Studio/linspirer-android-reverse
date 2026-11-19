package com.loc;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AppInfo;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.loc.FpsCollector;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.KeyGenerator;
import org.android.agoo.message.MessageService;

/* compiled from: CollectionManager.java */
/* renamed from: com.loc.dq */
/* loaded from: classes.dex */
public final class CollectionManager implements INetwork {

    /* renamed from: k */
    public static long f5400k;

    /* renamed from: a */
    public Context f5401a;

    /* renamed from: d */
    public OpenSdkCollectionManagerProxy f5404d;

    /* renamed from: e */
    public LogConfig f5405e;

    /* renamed from: g */
    public Handler f5407g;

    /* renamed from: h */
    public LocationManager f5408h;

    /* renamed from: i */
    public a f5409i;

    /* renamed from: f */
    public ArrayList<CollectionData> f5406f = new ArrayList<>();

    /* renamed from: b */
    public WifiManagerWrapper f5402b = null;

    /* renamed from: c */
    public CgiManager f5403c = null;

    /* renamed from: j */
    public volatile boolean f5410j = false;

    /* compiled from: CollectionManager.java */
    /* renamed from: com.loc.dq$a */
    public static class a implements LocationListener {

        /* renamed from: a */
        public CollectionManager f5412a;

        public a(CollectionManager c1808dq) {
            this.f5412a = c1808dq;
        }

        /* renamed from: a */
        public final void m4657a() {
            this.f5412a = null;
        }

        /* renamed from: a */
        public final void m4658a(CollectionManager c1808dq) {
            this.f5412a = c1808dq;
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            try {
                if (this.f5412a != null) {
                    this.f5412a.m4651a(location);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* compiled from: CollectionManager.java */
    /* renamed from: com.loc.dq$b */
    public class b extends ThreadTask {

        /* renamed from: b */
        public int f5414b;

        /* renamed from: c */
        public Location f5415c;

        public b(int i) {
            this.f5414b = 0;
            this.f5414b = i;
        }

        public b(CollectionManager c1808dq, Location location) {
            this(1);
            this.f5415c = location;
        }

        /* renamed from: b */
        private void m4659b() {
            int iM1074h;
            try {
                if (this.f5415c != null && CollectionManager.this.f5410j) {
                    Bundle extras = this.f5415c.getExtras();
                    int i = extras != null ? extras.getInt("satellites") : 0;
                    if (C1841ew.m5115a(this.f5415c, i)) {
                        return;
                    }
                    if (CollectionManager.this.f5402b != null && !CollectionManager.this.f5402b.f5601r) {
                        CollectionManager.this.f5402b.m4860f();
                    }
                    ArrayList<AmapWifi> arrayListM4850a = CollectionManager.this.f5402b.m4850a();
                    List<AmapCell> listM4765a = CollectionManager.this.f5403c.m4765a();
                    FpsCollector.a aVar = new FpsCollector.a();
                    AmapLocationGnss c1795dd = new AmapLocationGnss();
                    c1795dd.f5291i = this.f5415c.getAccuracy();
                    c1795dd.f5288f = this.f5415c.getAltitude();
                    c1795dd.f5286d = this.f5415c.getLatitude();
                    c1795dd.f5290h = this.f5415c.getBearing();
                    c1795dd.f5287e = this.f5415c.getLongitude();
                    c1795dd.f5292j = this.f5415c.isFromMockProvider();
                    c1795dd.f5283a = this.f5415c.getProvider();
                    c1795dd.f5289g = this.f5415c.getSpeed();
                    c1795dd.f5294l = (byte) i;
                    c1795dd.f5284b = System.currentTimeMillis();
                    c1795dd.f5285c = this.f5415c.getTime();
                    c1795dd.f5293k = this.f5415c.getTime();
                    aVar.f5177a = c1795dd;
                    aVar.f5178b = arrayListM4850a;
                    WifiInfo wifiInfoM4856c = CollectionManager.this.f5402b.m4856c();
                    if (wifiInfoM4856c != null) {
                        aVar.f5179c = AmapWifi.m4515a(wifiInfoM4856c.getBSSID());
                    }
                    aVar.f5180d = WifiManagerWrapper.f5584z;
                    aVar.f5182f = this.f5415c.getTime();
                    try {
                        iM1074h = DeviceInfo.m1074h(CollectionManager.this.f5401a);
                    } catch (Throwable unused) {
                        iM1074h = -1;
                    }
                    aVar.f5183g = (byte) iM1074h;
                    Context context = CollectionManager.this.f5401a;
                    String networkOperatorName = "";
                    try {
                        if (DeviceInfo.m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                            if (telephonyManager != null) {
                                networkOperatorName = telephonyManager.getNetworkOperatorName();
                            }
                        } else {
                            networkOperatorName = DeviceInfo.f1594E;
                        }
                    } catch (Throwable unused2) {
                    }
                    aVar.f5184h = networkOperatorName;
                    aVar.f5181e = CollectionManager.this.f5402b.m4865k();
                    aVar.f5186j = C1841ew.m5113a(CollectionManager.this.f5401a);
                    aVar.f5185i = listM4765a;
                    CollectionData c1765caM4412a = OpenSdkCollectionManagerProxy.m4412a(aVar);
                    if (c1765caM4412a == null) {
                        return;
                    }
                    synchronized (CollectionManager.this.f5406f) {
                        CollectionManager.this.f5406f.add(c1765caM4412a);
                        if (CollectionManager.this.f5406f.size() >= 5) {
                            CollectionManager.this.m4656e();
                        }
                    }
                    CollectionManager.this.m4655d();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "cl", "coll");
            }
        }

        /* renamed from: c */
        private void m4660c() {
            C1720aj c1720ajM3999a = null;
            try {
                long unused = CollectionManager.f5400k = System.currentTimeMillis();
                if (CollectionManager.this.f5405e.f5059f.m4213c()) {
                    c1720ajM3999a = C1720aj.m3999a(new File(CollectionManager.this.f5405e.f5054a), CollectionManager.this.f5405e.f5055b);
                    ArrayList arrayList = new ArrayList();
                    byte[] bArrM4648f = CollectionManager.m4648f();
                    if (bArrM4648f == null) {
                        try {
                            c1720ajM3999a.close();
                            return;
                        } catch (Throwable unused2) {
                            return;
                        }
                    }
                    List listM4643b = CollectionManager.m4643b(c1720ajM3999a, CollectionManager.this.f5405e, arrayList, bArrM4648f);
                    if (listM4643b != null && listM4643b.size() != 0) {
                        CollectionManager.this.f5405e.f5059f.mo4212a(true);
                        if (OpenSdkCollectionManagerProxy.m4414a(C1094l1.m2250s(OpenSdkCollectionManagerProxy.m4416a(C1823ee.m4873a(bArrM4648f), C0994h1.m1936g(bArrM4648f, OpenSdkCollectionManagerProxy.m4415a(), C1094l1.m2252u()), listM4643b)))) {
                            CollectionManager.m4644b(c1720ajM3999a, arrayList);
                        }
                    }
                    try {
                        c1720ajM3999a.close();
                        return;
                    } catch (Throwable unused3) {
                        return;
                    }
                }
                if (c1720ajM3999a != null) {
                    try {
                        c1720ajM3999a.close();
                    } catch (Throwable unused4) {
                    }
                }
            } catch (Throwable th) {
                try {
                    SDKLogHandler.m5333b(th, "leg", "uts");
                    if (c1720ajM3999a != null) {
                        try {
                            c1720ajM3999a.close();
                        } catch (Throwable unused5) {
                        }
                    }
                } catch (Throwable th2) {
                    if (c1720ajM3999a != null) {
                        try {
                            c1720ajM3999a.close();
                        } catch (Throwable unused6) {
                        }
                    }
                    throw th2;
                }
            }
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            int i = this.f5414b;
            if (i == 1) {
                m4659b();
            } else if (i == 2) {
                m4660c();
            } else if (i == 3) {
                CollectionManager.this.m4649g();
            }
        }
    }

    public CollectionManager(Context context) {
        this.f5401a = null;
        this.f5401a = context;
        LogConfig c1730at = new LogConfig();
        this.f5405e = c1730at;
        C1736az.m4195a(this.f5401a, c1730at, AMapLog.f5951k, 100, 1024000, MessageService.MSG_DB_READY_REPORT);
        LogConfig c1730at2 = this.f5405e;
        int i = AuthUtil.f5733g;
        boolean z = AuthUtil.f5731e;
        int i2 = AuthUtil.f5732f;
        c1730at2.f5059f = new TimeUpdateStrategy(context, i, "kKey", new MobileUpdateStrategy(context, z, i2, i2 * 10, "carrierLocKey"));
        this.f5405e.f5058e = new NoneEncryptProcessor();
    }

    /* renamed from: a */
    public static int m4636a(byte[] bArr) {
        return ((bArr[0] & Base64.EQUALS_SIGN_ENC) << 24) | (bArr[3] & Base64.EQUALS_SIGN_ENC) | ((bArr[2] & Base64.EQUALS_SIGN_ENC) << 8) | ((bArr[1] & Base64.EQUALS_SIGN_ENC) << 16);
    }

    /* renamed from: a */
    public static byte[] m4641a(int i) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            if (keyGenerator == null) {
                return null;
            }
            keyGenerator.init(i);
            return keyGenerator.generateKey().getEncoded();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:14|(3:104|15|16)|(2:106|17)|(1:(0))(3:98|22|(1:(2:102|25))(3:27|28|(10:33|(7:84|36|37|88|38|39|34)|113|42|94|43|44|86|45|(6:90|50|100|51|112|63)(0))(0)))|96|20) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c2, code lost:
    
        r7.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00cc A[EXC_TOP_SPLITTER, PHI: r5 r9 r16
      0x00cc: PHI (r5v3 int) = (r5v4 int), (r5v5 int), (r5v5 int) binds: [B:59:0x00ec, B:74:0x00cc, B:50:0x00c9] A[DONT_GENERATE, DONT_INLINE]
      0x00cc: PHI (r9v1 com.loc.aj$b) = (r9v2 com.loc.aj$b), (r9v3 com.loc.aj$b), (r9v3 com.loc.aj$b) binds: [B:59:0x00ec, B:74:0x00cc, B:50:0x00c9] A[DONT_GENERATE, DONT_INLINE]
      0x00cc: PHI (r16v3 java.lang.String[]) = (r16v4 java.lang.String[]), (r16v6 java.lang.String[]), (r16v6 java.lang.String[]) binds: [B:59:0x00ec, B:74:0x00cc, B:50:0x00c9] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.loc.CollectionData> m4643b(com.loc.C1720aj r17, com.loc.LogConfig r18, java.util.List<java.lang.String> r19, byte[] r20) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1808dq.m4643b(com.loc.aj, com.loc.at, java.util.List, byte[]):java.util.List");
    }

    /* renamed from: b */
    public static void m4644b(C1720aj c1720aj, List<String> list) {
        if (c1720aj != null) {
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    c1720aj.m4029c(it.next());
                }
                c1720aj.close();
            } catch (Throwable th) {
                SDKLogHandler.m5333b(th, "aps", "dlo");
            }
        }
    }

    /* renamed from: b */
    public static byte[] m4645b(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    /* renamed from: c */
    public static byte[] m4647c(int i) {
        return new byte[]{(byte) ((i & 65280) >> 8), (byte) (i & 255)};
    }

    /* renamed from: f */
    public static /* synthetic */ byte[] m4648f() {
        return m4641a(128);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m4649g() {
        try {
            if (this.f5406f != null && this.f5406f.size() != 0) {
                ArrayList arrayList = new ArrayList();
                synchronized (this.f5406f) {
                    arrayList.addAll(this.f5406f);
                    this.f5406f.clear();
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArrM4641a = m4641a(256);
                if (bArrM4641a == null) {
                    return;
                }
                byteArrayOutputStream.write(m4647c(bArrM4641a.length));
                byteArrayOutputStream.write(bArrM4641a);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    CollectionData c1765ca = (CollectionData) it.next();
                    byte[] bArrM4280b = c1765ca.m4280b();
                    if (bArrM4280b.length >= 10 && bArrM4280b.length <= 65535) {
                        byte[] bArrM1936g = C0994h1.m1936g(bArrM4641a, bArrM4280b, C1094l1.m2252u());
                        byteArrayOutputStream.write(m4647c(bArrM1936g.length));
                        byteArrayOutputStream.write(bArrM1936g);
                        byteArrayOutputStream.write(m4645b(c1765ca.m4279a()));
                    }
                }
                LogEngine.m4168a(Long.toString(System.currentTimeMillis()), byteArrayOutputStream.toByteArray(), this.f5405e);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "clm", "wtD");
        }
    }

    @Override // com.loc.InterfaceC1802dk
    /* renamed from: a */
    public final HttpResponse mo4571a(C1800di c1800di) {
        try {
            C1828ej c1828ej = new C1828ej();
            c1828ej.m4935a(c1800di.f5325b);
            c1828ej.m4937b(c1800di.f5324a);
            c1828ej.m4936a(c1800di.f5327d);
            BaseNetManager.m4058a();
            ResponseEntity c1729asM4059a = BaseNetManager.m4059a(c1828ej);
            HttpResponse c1801dj = new HttpResponse();
            c1801dj.f5331c = c1729asM4059a.f5048a;
            c1801dj.f5330b = c1729asM4059a.f5049b;
            c1801dj.f5329a = 200;
            return c1801dj;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m4650a() {
        try {
            if (this.f5409i != null && this.f5408h != null) {
                this.f5408h.removeUpdates(this.f5409i);
            }
            if (this.f5409i != null) {
                this.f5409i.m4657a();
            }
            if (this.f5410j) {
                m4649g();
                this.f5402b.m4851a((CollectionManager) null);
                this.f5403c.m4766a((CollectionManager) null);
                this.f5403c = null;
                this.f5402b = null;
                this.f5407g = null;
                this.f5410j = false;
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "clm", "stc");
        }
    }

    /* renamed from: a */
    public final void m4651a(Location location) {
        try {
            if (this.f5407g != null) {
                this.f5407g.post(new b(this, location));
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "cl", "olcc");
        }
    }

    /* renamed from: a */
    public final void m4652a(CgiManager c1817dz, WifiManagerWrapper c1822ed, Handler handler) {
        if (this.f5410j || c1817dz == null || c1822ed == null || handler == null) {
            return;
        }
        this.f5410j = true;
        this.f5403c = c1817dz;
        this.f5402b = c1822ed;
        c1822ed.m4851a(this);
        this.f5403c.m4766a(this);
        this.f5407g = handler;
        try {
            if (this.f5408h == null && handler != null) {
                this.f5408h = (LocationManager) this.f5401a.getSystemService("location");
            }
            if (this.f5409i == null) {
                this.f5409i = new a(this);
            }
            this.f5409i.m4658a(this);
            if (this.f5409i != null && this.f5408h != null) {
                this.f5408h.requestLocationUpdates("passive", 1000L, -1.0f, this.f5409i);
            }
            if (this.f5404d == null) {
                OpenSdkCollectionManagerProxy c1785cu = new OpenSdkCollectionManagerProxy("5.5.1", AppInfo.m1641g(this.f5401a), "S128DF1572465B890OE3F7A13167KLEI", AppInfo.m1638d(this.f5401a), this);
                this.f5404d = c1785cu;
                c1785cu.m4421a(DeviceInfo.m1091y(this.f5401a)).m4422b(DeviceInfo.m1083q(this.f5401a)).m4423c(DeviceInfo.m1078l(this.f5401a)).m4424d(DeviceInfo.m1081o(this.f5401a)).m4425e(DeviceInfo.m1092z(this.f5401a)).m4426f(DeviceInfo.m1084r(this.f5401a)).m4427g(Build.MODEL).m4428h(Build.MANUFACTURER).m4429i(Build.BRAND).m4419a(Build.VERSION.SDK_INT).m4430j(Build.VERSION.RELEASE).m4420a(AmapWifi.m4515a(DeviceInfo.m1086t(this.f5401a))).m4431k(DeviceInfo.m1086t(this.f5401a));
                OpenSdkCollectionManagerProxy.m4417b();
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "col", "init");
        }
    }

    /* renamed from: b */
    public final void m4653b() {
        try {
            if (this.f5407g != null) {
                this.f5407g.post(new Runnable() { // from class: com.loc.dq.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (CollectionManager.this.f5404d == null || CollectionManager.this.f5402b == null) {
                                return;
                            }
                            OpenSdkCollectionManagerProxy.m4418b(CollectionManager.this.f5402b.m4850a());
                        } catch (Throwable th) {
                            CoreUtil.m5014a(th, "cl", "upwr");
                        }
                    }
                });
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "cl", "upw");
        }
    }

    /* renamed from: c */
    public final void m4654c() {
        try {
            if (this.f5404d == null || this.f5403c == null) {
                return;
            }
            OpenSdkCollectionManagerProxy.m4413a(this.f5403c.m4765a());
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "cl", "upc");
        }
    }

    /* renamed from: d */
    public final void m4655d() {
        try {
            if (System.currentTimeMillis() - f5400k < 60000) {
                return;
            }
            ThreadPool.m4236a().m4242b(new b(2));
        } catch (Throwable unused) {
        }
    }

    /* renamed from: e */
    public final void m4656e() {
        try {
            ThreadPool.m4236a().m4242b(new b(3));
        } catch (Throwable unused) {
        }
    }
}
