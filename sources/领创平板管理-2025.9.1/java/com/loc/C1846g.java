package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.DPoint;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hem.C1094l1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;
import org.json.JSONObject;

/* compiled from: GpsLocation.java */
/* renamed from: com.loc.g */
/* loaded from: classes.dex */
public final class C1846g {

    /* renamed from: j */
    public static AMapLocation f5823j = null;

    /* renamed from: k */
    public static long f5824k = 0;

    /* renamed from: l */
    public static Object f5825l = new Object();

    /* renamed from: q */
    public static long f5826q = 0;

    /* renamed from: t */
    public static boolean f5827t = false;

    /* renamed from: u */
    public static boolean f5828u = false;

    /* renamed from: y */
    public static volatile AMapLocation f5829y;

    /* renamed from: a */
    public Handler f5839a;

    /* renamed from: b */
    public LocationManager f5840b;

    /* renamed from: c */
    public AMapLocationClientOption f5841c;

    /* renamed from: f */
    public C1811dt f5844f;

    /* renamed from: z */
    public Context f5857z;

    /* renamed from: A */
    public long f5830A = 0;

    /* renamed from: d */
    public long f5842d = 0;

    /* renamed from: e */
    public boolean f5843e = false;

    /* renamed from: B */
    public int f5831B = 0;

    /* renamed from: g */
    public int f5845g = 240;

    /* renamed from: h */
    public int f5846h = 80;

    /* renamed from: i */
    public AMapLocation f5847i = null;

    /* renamed from: m */
    public long f5848m = 0;

    /* renamed from: n */
    public float f5849n = 0.0f;

    /* renamed from: o */
    public Object f5850o = new Object();

    /* renamed from: p */
    public Object f5851p = new Object();

    /* renamed from: r */
    public AMapLocationClientOption.GeoLanguage f5852r = AMapLocationClientOption.GeoLanguage.DEFAULT;

    /* renamed from: s */
    public boolean f5853s = true;

    /* renamed from: v */
    public long f5854v = 0;

    /* renamed from: w */
    public int f5855w = 0;

    /* renamed from: x */
    public LocationListener f5856x = null;

    /* renamed from: C */
    public int f5832C = 0;

    /* renamed from: D */
    public GpsStatus f5833D = null;

    /* renamed from: E */
    public GpsStatus.Listener f5834E = new GpsStatus.Listener() { // from class: com.loc.g.1
        @Override // android.location.GpsStatus.Listener
        public final void onGpsStatusChanged(int i) {
            Iterable<GpsSatellite> satellites;
            try {
                if (C1846g.this.f5840b == null) {
                    return;
                }
                C1846g.this.f5833D = C1846g.this.f5840b.getGpsStatus(C1846g.this.f5833D);
                int i2 = 0;
                if (i == 2) {
                    C1846g.this.f5832C = 0;
                    return;
                }
                if (i != 4) {
                    return;
                }
                try {
                    if (C1846g.this.f5833D != null && (satellites = C1846g.this.f5833D.getSatellites()) != null) {
                        Iterator<GpsSatellite> it = satellites.iterator();
                        int maxSatellites = C1846g.this.f5833D.getMaxSatellites();
                        while (it.hasNext() && i2 < maxSatellites) {
                            if (it.next().usedInFix()) {
                                i2++;
                            }
                        }
                    }
                } catch (Throwable th) {
                    C1834ep.m5014a(th, "GpsLocation", "GPS_EVENT_SATELLITE_STATUS");
                }
                C1846g.this.f5832C = i2;
            } catch (Throwable th2) {
                C1834ep.m5014a(th2, "GpsLocation", "onGpsStatusChanged");
            }
        }
    };

    /* renamed from: F */
    public String f5835F = null;

    /* renamed from: G */
    public boolean f5836G = false;

    /* renamed from: H */
    public int f5837H = 0;

    /* renamed from: I */
    public boolean f5838I = false;

    /* compiled from: GpsLocation.java */
    /* renamed from: com.loc.g$a */
    public static class a implements LocationListener {

        /* renamed from: a */
        public C1846g f5859a;

        public a(C1846g c1846g) {
            this.f5859a = c1846g;
        }

        /* renamed from: a */
        public final void m5233a() {
            this.f5859a = null;
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            try {
                if (this.f5859a != null) {
                    this.f5859a.m5202a(location);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            try {
                if (this.f5859a != null) {
                    this.f5859a.m5208a(str);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
            try {
                if (this.f5859a != null) {
                    this.f5859a.m5200a(i);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public C1846g(Context context, Handler handler) {
        this.f5844f = null;
        this.f5857z = context;
        this.f5839a = handler;
        try {
            this.f5840b = (LocationManager) context.getSystemService("location");
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GpsLocation", "<init>");
        }
        this.f5844f = new C1811dt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5200a(int i) {
        if (i == 0) {
            try {
                this.f5842d = 0L;
                this.f5832C = 0;
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: a */
    private void m5201a(int i, int i2, String str, long j) {
        try {
            if (this.f5839a == null || this.f5841c.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors) {
                return;
            }
            Message messageObtain = Message.obtain();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setProvider("gps");
            aMapLocation.setErrorCode(i2);
            aMapLocation.setLocationDetail(str);
            aMapLocation.setLocationType(1);
            messageObtain.obj = aMapLocation;
            messageObtain.what = i;
            this.f5839a.sendMessageDelayed(messageObtain, j);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5202a(Location location) {
        Handler handler = this.f5839a;
        if (handler != null) {
            handler.removeMessages(8);
        }
        if (location == null) {
            return;
        }
        try {
            AMapLocation aMapLocation = new AMapLocation(location);
            if (C1841ew.m5116a(aMapLocation)) {
                aMapLocation.setProvider("gps");
                aMapLocation.setLocationType(1);
                if (!this.f5843e && C1841ew.m5116a(aMapLocation)) {
                    C1839eu.m5068a(this.f5857z, C1841ew.m5127b() - this.f5830A, C1834ep.m5015a(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
                    this.f5843e = true;
                }
                if (C1841ew.m5115a(location, this.f5832C)) {
                    aMapLocation.setMock(true);
                    aMapLocation.setTrustedLevel(4);
                    if (!this.f5841c.isMockEnable()) {
                        if (this.f5855w <= 3) {
                            this.f5855w++;
                            return;
                        }
                        C1839eu.m5076a((String) null, 2152);
                        aMapLocation.setErrorCode(15);
                        aMapLocation.setLocationDetail("GpsLocation has been mocked!#1501");
                        aMapLocation.setLatitude(0.0d);
                        aMapLocation.setLongitude(0.0d);
                        aMapLocation.setAltitude(0.0d);
                        aMapLocation.setSpeed(0.0f);
                        aMapLocation.setAccuracy(0.0f);
                        aMapLocation.setBearing(0.0f);
                        aMapLocation.setExtras(null);
                        m5213c(aMapLocation);
                        return;
                    }
                } else {
                    this.f5855w = 0;
                }
                aMapLocation.setSatellites(this.f5832C);
                m5215e(aMapLocation);
                m5216f(aMapLocation);
                m5220h(aMapLocation);
                AMapLocation aMapLocationM5217g = m5217g(aMapLocation);
                m5203a(aMapLocationM5217g);
                m5211b(aMapLocationM5217g);
                synchronized (this.f5850o) {
                    m5204a(aMapLocationM5217g, f5829y);
                }
                try {
                    if (C1841ew.m5116a(aMapLocationM5217g)) {
                        if (this.f5847i != null) {
                            this.f5848m = location.getTime() - this.f5847i.getTime();
                            this.f5849n = C1841ew.m5103a(this.f5847i, aMapLocationM5217g);
                        }
                        synchronized (this.f5851p) {
                            this.f5847i = aMapLocationM5217g.m5888clone();
                        }
                        this.f5835F = null;
                        this.f5836G = false;
                        this.f5837H = 0;
                    }
                } catch (Throwable th) {
                    C1834ep.m5014a(th, "GpsLocation", "onLocationChangedLast");
                }
                m5213c(aMapLocationM5217g);
            }
        } catch (Throwable th2) {
            C1834ep.m5014a(th2, "GpsLocation", "onLocationChanged");
        }
    }

    /* renamed from: a */
    private void m5203a(AMapLocation aMapLocation) {
        if (C1841ew.m5116a(aMapLocation)) {
            this.f5842d = C1841ew.m5127b();
            synchronized (f5825l) {
                f5824k = C1841ew.m5127b();
                f5823j = aMapLocation.m5888clone();
            }
            this.f5831B++;
        }
    }

    /* renamed from: a */
    private void m5204a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        if (aMapLocation2 == null || !this.f5841c.isNeedAddress() || C1841ew.m5103a(aMapLocation, aMapLocation2) >= this.f5845g) {
            return;
        }
        C1834ep.m5008a(aMapLocation, aMapLocation2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5208a(String str) {
        try {
            if ("gps".equalsIgnoreCase(str)) {
                this.f5842d = 0L;
                this.f5832C = 0;
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static boolean m5209a(LocationManager locationManager) {
        try {
            if (f5827t) {
                return f5828u;
            }
            List<String> allProviders = locationManager.getAllProviders();
            if (allProviders == null || allProviders.size() <= 0) {
                f5828u = false;
            } else {
                f5828u = allProviders.contains("gps");
            }
            f5827t = true;
            return f5828u;
        } catch (Throwable unused) {
            return f5828u;
        }
    }

    /* renamed from: b */
    private void m5211b(AMapLocation aMapLocation) {
        if (C1841ew.m5116a(aMapLocation) && this.f5839a != null) {
            long jM5127b = C1841ew.m5127b();
            if (this.f5841c.getInterval() <= 8000 || jM5127b - this.f5854v > this.f5841c.getInterval() - 8000) {
                Bundle bundle = new Bundle();
                bundle.putDouble(DispatchConstants.LATITUDE, aMapLocation.getLatitude());
                bundle.putDouble("lon", aMapLocation.getLongitude());
                bundle.putFloat("radius", aMapLocation.getAccuracy());
                bundle.putLong("time", aMapLocation.getTime());
                Message messageObtain = Message.obtain();
                messageObtain.setData(bundle);
                messageObtain.what = 5;
                synchronized (this.f5850o) {
                    if (f5829y == null || C1841ew.m5103a(aMapLocation, f5829y) > this.f5846h) {
                        Handler handler = this.f5839a;
                        handler.sendMessage(messageObtain);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m5212b(String str) {
        try {
            ArrayList<String> arrayListM5131b = C1841ew.m5131b(str);
            ArrayList<String> arrayListM5131b2 = C1841ew.m5131b(this.f5835F);
            if (arrayListM5131b.size() < 8 || arrayListM5131b2.size() < 8) {
                return false;
            }
            return C1841ew.m5119a(this.f5835F, str);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: c */
    private void m5213c(AMapLocation aMapLocation) {
        if (aMapLocation.getErrorCode() != 15 || AMapLocationClientOption.AMapLocationMode.Device_Sensors.equals(this.f5841c.getLocationMode())) {
            if (this.f5841c.getLocationMode().equals(AMapLocationClientOption.AMapLocationMode.Device_Sensors) && this.f5841c.getDeviceModeDistanceFilter() > 0.0f) {
                m5214d(aMapLocation);
            } else if (C1841ew.m5127b() - this.f5854v >= this.f5841c.getInterval() - 200) {
                this.f5854v = C1841ew.m5127b();
                m5214d(aMapLocation);
            }
        }
    }

    /* renamed from: d */
    private void m5214d(AMapLocation aMapLocation) {
        if (this.f5839a != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = aMapLocation;
            messageObtain.what = 2;
            this.f5839a.sendMessage(messageObtain);
        }
    }

    /* renamed from: e */
    private void m5215e(AMapLocation aMapLocation) {
        try {
            if (!C1834ep.m5015a(aMapLocation.getLatitude(), aMapLocation.getLongitude()) || !this.f5841c.isOffset()) {
                aMapLocation.setOffset(false);
                aMapLocation.setCoordType(AMapLocation.COORD_TYPE_WGS84);
                return;
            }
            DPoint dPointM5035a = C1836er.m5035a(this.f5857z, new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
            aMapLocation.setLatitude(dPointM5035a.getLatitude());
            aMapLocation.setLongitude(dPointM5035a.getLongitude());
            aMapLocation.setOffset(this.f5841c.isOffset());
            aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
        } catch (Throwable unused) {
            aMapLocation.setOffset(false);
            aMapLocation.setCoordType(AMapLocation.COORD_TYPE_WGS84);
        }
    }

    /* renamed from: f */
    private void m5216f(AMapLocation aMapLocation) {
        try {
            if (this.f5832C >= 4) {
                aMapLocation.setGpsAccuracyStatus(1);
            } else if (this.f5832C == 0) {
                aMapLocation.setGpsAccuracyStatus(-1);
            } else {
                aMapLocation.setGpsAccuracyStatus(0);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: g */
    private AMapLocation m5217g(AMapLocation aMapLocation) {
        if (!C1841ew.m5116a(aMapLocation) || this.f5831B < 3) {
            return aMapLocation;
        }
        if (aMapLocation.getAccuracy() < 0.0f || aMapLocation.getAccuracy() == Float.MAX_VALUE) {
            aMapLocation.setAccuracy(0.0f);
        }
        if (aMapLocation.getSpeed() < 0.0f || aMapLocation.getSpeed() == Float.MAX_VALUE) {
            aMapLocation.setSpeed(0.0f);
        }
        return this.f5844f.m4672a(aMapLocation);
    }

    /* renamed from: g */
    private void m5218g() {
        LocationManager locationManager;
        String str;
        long interval;
        float deviceModeDistanceFilter;
        LocationListener locationListener;
        if (this.f5840b == null) {
            return;
        }
        try {
            m5219h();
            this.f5853s = true;
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                looperMyLooper = this.f5857z.getMainLooper();
            }
            Looper looper = looperMyLooper;
            this.f5830A = C1841ew.m5127b();
            if (!m5209a(this.f5840b)) {
                m5201a(8, 14, "no gps provider#1402", 0L);
                return;
            }
            try {
                if (C1841ew.m5107a() - f5826q >= 259200000) {
                    this.f5840b.sendExtraCommand("gps", "force_xtra_injection", null);
                    f5826q = C1841ew.m5107a();
                    SharedPreferences.Editor editorM5090a = C1840ev.m5090a(this.f5857z, "pref");
                    C1840ev.m5096a(editorM5090a, "lagt", f5826q);
                    C1840ev.m5093a(editorM5090a);
                }
            } catch (Throwable unused) {
            }
            if (this.f5856x == null) {
                this.f5856x = new a(this);
            }
            if (!this.f5841c.getLocationMode().equals(AMapLocationClientOption.AMapLocationMode.Device_Sensors) || this.f5841c.getDeviceModeDistanceFilter() <= 0.0f) {
                locationManager = this.f5840b;
                str = "gps";
                interval = 900;
                deviceModeDistanceFilter = 0.0f;
                locationListener = this.f5856x;
            } else {
                locationManager = this.f5840b;
                str = "gps";
                interval = this.f5841c.getInterval();
                deviceModeDistanceFilter = this.f5841c.getDeviceModeDistanceFilter();
                locationListener = this.f5856x;
            }
            locationManager.requestLocationUpdates(str, interval, deviceModeDistanceFilter, locationListener, looper);
            this.f5840b.addGpsStatusListener(this.f5834E);
            m5201a(8, 14, "no enough satellites#1401", this.f5841c.getHttpTimeOut());
        } catch (SecurityException e) {
            this.f5853s = false;
            C1839eu.m5076a((String) null, 2121);
            m5201a(2, 12, e.getMessage() + "#1201", 0L);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GpsLocation", "requestLocationUpdates part2");
        }
    }

    /* renamed from: h */
    private void m5219h() {
        if (C1841ew.m5127b() - f5824k > 5000 || !C1841ew.m5116a(f5823j)) {
            return;
        }
        if (this.f5841c.isMockEnable() || !f5823j.isMock()) {
            this.f5842d = C1841ew.m5127b();
            m5213c(f5823j);
        }
    }

    /* renamed from: h */
    public static void m5220h(AMapLocation aMapLocation) {
        if (C1841ew.m5116a(aMapLocation) && C1833eo.m5004r()) {
            long time = aMapLocation.getTime();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jM5030a = C1835eq.m5030a(time, jCurrentTimeMillis, C1833eo.m5005s());
            if (jM5030a != time) {
                aMapLocation.setTime(jM5030a);
                C1839eu.m5065a(time, jCurrentTimeMillis);
            }
        }
    }

    /* renamed from: i */
    public static boolean m5221i() {
        try {
            return ((Boolean) C1837es.m5054a(C1094l1.m2251t("KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="), C1094l1.m2251t("UaXNOYXZpU3RhcnRlZA=="), (Object[]) null, (Class<?>[]) null)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: j */
    private AMapLocation m5222j() {
        float f;
        float f2;
        try {
            if (C1841ew.m5116a(this.f5847i) && C1833eo.m4996j() && m5221i()) {
                JSONObject jSONObject = new JSONObject((String) C1837es.m5054a(C1094l1.m2251t("KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="), C1094l1.m2251t("UZ2V0TmF2aUxvY2F0aW9u"), (Object[]) null, (Class<?>[]) null));
                long jOptLong = jSONObject.optLong("time");
                if (!this.f5838I) {
                    this.f5838I = true;
                    C1839eu.m5077a("useNaviLoc", "use NaviLoc");
                }
                if (C1841ew.m5107a() - jOptLong <= 5500) {
                    double dOptDouble = jSONObject.optDouble(DispatchConstants.LATITUDE, 0.0d);
                    double dOptDouble2 = jSONObject.optDouble(DispatchConstants.LONGTITUDE, 0.0d);
                    float f3 = 0.0f;
                    try {
                        f = Float.parseFloat(jSONObject.optString("accuracy", MessageService.MSG_DB_READY_REPORT));
                    } catch (NumberFormatException unused) {
                        f = 0.0f;
                    }
                    double dOptDouble3 = jSONObject.optDouble("altitude", 0.0d);
                    try {
                        f2 = Float.parseFloat(jSONObject.optString("bearing", MessageService.MSG_DB_READY_REPORT));
                    } catch (NumberFormatException unused2) {
                        f2 = 0.0f;
                    }
                    try {
                        f3 = (Float.parseFloat(jSONObject.optString("speed", MessageService.MSG_DB_READY_REPORT)) * 10.0f) / 36.0f;
                    } catch (NumberFormatException unused3) {
                    }
                    AMapLocation aMapLocation = new AMapLocation("lbs");
                    aMapLocation.setLocationType(9);
                    aMapLocation.setLatitude(dOptDouble);
                    aMapLocation.setLongitude(dOptDouble2);
                    aMapLocation.setAccuracy(f);
                    aMapLocation.setAltitude(dOptDouble3);
                    aMapLocation.setBearing(f2);
                    aMapLocation.setSpeed(f3);
                    aMapLocation.setTime(jOptLong);
                    aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                    if (C1841ew.m5103a(aMapLocation, this.f5847i) <= 300.0f) {
                        synchronized (this.f5851p) {
                            this.f5847i.setLongitude(dOptDouble2);
                            this.f5847i.setLatitude(dOptDouble);
                            this.f5847i.setAccuracy(f);
                            this.f5847i.setBearing(f2);
                            this.f5847i.setSpeed(f3);
                            this.f5847i.setTime(jOptLong);
                            this.f5847i.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                        }
                        return aMapLocation;
                    }
                }
            }
        } catch (Throwable unused4) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0098  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.amap.api.location.AMapLocation m5223a(com.amap.api.location.AMapLocation r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1846g.m5223a(com.amap.api.location.AMapLocation, java.lang.String):com.amap.api.location.AMapLocation");
    }

    /* renamed from: a */
    public final void m5224a() {
        LocationManager locationManager = this.f5840b;
        if (locationManager == null) {
            return;
        }
        try {
            if (this.f5856x != null) {
                locationManager.removeUpdates(this.f5856x);
                ((a) this.f5856x).m5233a();
                this.f5856x = null;
            }
        } catch (Throwable unused) {
        }
        try {
            if (this.f5834E != null) {
                this.f5840b.removeGpsStatusListener(this.f5834E);
            }
        } catch (Throwable unused2) {
        }
        try {
            if (this.f5839a != null) {
                this.f5839a.removeMessages(8);
            }
        } catch (Throwable unused3) {
        }
        this.f5832C = 0;
        this.f5830A = 0L;
        this.f5854v = 0L;
        this.f5842d = 0L;
        this.f5831B = 0;
        this.f5855w = 0;
        this.f5844f.m4674a();
        this.f5847i = null;
        this.f5848m = 0L;
        this.f5849n = 0.0f;
        this.f5835F = null;
        this.f5838I = false;
    }

    /* renamed from: a */
    public final void m5225a(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                this.f5845g = bundle.getInt("I_MAX_GEO_DIS");
                this.f5846h = bundle.getInt("I_MIN_GEO_DIS");
                AMapLocation aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                if (TextUtils.isEmpty(aMapLocation.getAdCode())) {
                    return;
                }
                synchronized (this.f5850o) {
                    f5829y = aMapLocation;
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "GpsLocation", "setLastGeoLocation");
            }
        }
    }

    /* renamed from: a */
    public final void m5226a(AMapLocationClientOption aMapLocationClientOption) {
        this.f5841c = aMapLocationClientOption;
        if (aMapLocationClientOption == null) {
            this.f5841c = new AMapLocationClientOption();
        }
        try {
            f5826q = C1840ev.m5089a(this.f5857z, "pref", "lagt", f5826q);
        } catch (Throwable unused) {
        }
        m5218g();
    }

    /* renamed from: b */
    public final void m5227b(AMapLocationClientOption aMapLocationClientOption) {
        Handler handler;
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        this.f5841c = aMapLocationClientOption;
        if (aMapLocationClientOption.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors && (handler = this.f5839a) != null) {
            handler.removeMessages(8);
        }
        if (this.f5852r != this.f5841c.getGeoLanguage()) {
            synchronized (this.f5850o) {
                f5829y = null;
            }
        }
        this.f5852r = this.f5841c.getGeoLanguage();
    }

    /* renamed from: b */
    public final boolean m5228b() {
        return C1841ew.m5127b() - this.f5842d <= 2800;
    }

    /* renamed from: c */
    public final void m5229c() {
        this.f5855w = 0;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public final int m5230d() {
        LocationManager locationManager = this.f5840b;
        if (locationManager == null || !m5209a(locationManager)) {
            return 1;
        }
        int i = Settings.Secure.getInt(this.f5857z.getContentResolver(), "location_mode", 0);
        if (i == 0) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        return !this.f5853s ? 4 : 0;
    }

    /* renamed from: e */
    public final int m5231e() {
        return this.f5832C;
    }

    /* renamed from: f */
    public final boolean m5232f() {
        AMapLocationClientOption aMapLocationClientOption = this.f5841c;
        return (aMapLocationClientOption == null || aMapLocationClientOption.isOnceLocation() || C1841ew.m5127b() - this.f5842d <= InactivityTimer.INACTIVITY_DELAY_MS) ? false : true;
    }
}
