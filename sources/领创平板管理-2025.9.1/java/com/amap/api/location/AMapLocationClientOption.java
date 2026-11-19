package com.amap.api.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import android.support.v7.widget.FastScroller;
import com.huawei.hem.CompilerOutline;
import com.loc.CoreUtil;

/* loaded from: classes.dex */
public class AMapLocationClientOption implements Parcelable, Cloneable {

    /* renamed from: d */
    public static int f1520d = 0;

    /* renamed from: e */
    public static int f1521e = 1;

    /* renamed from: f */
    public static int f1522f = 2;

    /* renamed from: g */
    public static int f1523g = 4;

    /* renamed from: A */
    public boolean f1525A;

    /* renamed from: B */
    public int f1526B;

    /* renamed from: C */
    public int f1527C;

    /* renamed from: D */
    public float f1528D;

    /* renamed from: E */
    public AMapLocationPurpose f1529E;

    /* renamed from: b */
    public boolean f1530b;

    /* renamed from: c */
    public String f1531c;

    /* renamed from: h */
    public long f1532h;

    /* renamed from: i */
    public long f1533i;

    /* renamed from: j */
    public boolean f1534j;

    /* renamed from: k */
    public boolean f1535k;

    /* renamed from: l */
    public boolean f1536l;

    /* renamed from: m */
    public boolean f1537m;

    /* renamed from: n */
    public boolean f1538n;

    /* renamed from: o */
    public AMapLocationMode f1539o;

    /* renamed from: q */
    public boolean f1540q;

    /* renamed from: r */
    public boolean f1541r;

    /* renamed from: s */
    public boolean f1542s;

    /* renamed from: t */
    public boolean f1543t;

    /* renamed from: u */
    public boolean f1544u;

    /* renamed from: v */
    public boolean f1545v;

    /* renamed from: w */
    public boolean f1546w;

    /* renamed from: x */
    public long f1547x;

    /* renamed from: y */
    public long f1548y;

    /* renamed from: z */
    public GeoLanguage f1549z;

    /* renamed from: p */
    public static AMapLocationProtocol f1524p = AMapLocationProtocol.HTTP;

    /* renamed from: a */
    public static String f1519a = "";
    public static final Parcelable.Creator<AMapLocationClientOption> CREATOR = new Parcelable.Creator<AMapLocationClientOption>() { // from class: com.amap.api.location.AMapLocationClientOption.1
        /* renamed from: a */
        public static AMapLocationClientOption m1061a(Parcel parcel) {
            return new AMapLocationClientOption(parcel);
        }

        /* renamed from: a */
        public static AMapLocationClientOption[] m1062a(int i) {
            return new AMapLocationClientOption[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocationClientOption createFromParcel(Parcel parcel) {
            return m1061a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocationClientOption[] newArray(int i) {
            return m1062a(i);
        }
    };
    public static boolean OPEN_ALWAYS_SCAN_WIFI = true;
    public static long SCAN_WIFI_INTERVAL = 30000;

    /* renamed from: com.amap.api.location.AMapLocationClientOption$2 */
    public static /* synthetic */ class C06162 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1550a;

        static {
            int[] iArr = new int[AMapLocationPurpose.values().length];
            f1550a = iArr;
            try {
                AMapLocationPurpose aMapLocationPurpose = AMapLocationPurpose.SignIn;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f1550a;
                AMapLocationPurpose aMapLocationPurpose2 = AMapLocationPurpose.Transport;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f1550a;
                AMapLocationPurpose aMapLocationPurpose3 = AMapLocationPurpose.Sport;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum AMapLocationMode {
        Battery_Saving,
        Device_Sensors,
        Hight_Accuracy
    }

    public enum AMapLocationProtocol {
        HTTP(0),
        HTTPS(1);


        /* renamed from: a */
        public int f1553a;

        AMapLocationProtocol(int i) {
            this.f1553a = i;
        }

        public final int getValue() {
            return this.f1553a;
        }
    }

    public enum AMapLocationPurpose {
        SignIn,
        Transport,
        Sport
    }

    public enum GeoLanguage {
        DEFAULT,
        ZH,
        EN
    }

    public AMapLocationClientOption() {
        this.f1532h = 2000L;
        this.f1533i = CoreUtil.f5762i;
        this.f1534j = false;
        this.f1535k = true;
        this.f1536l = true;
        this.f1537m = true;
        this.f1538n = true;
        this.f1539o = AMapLocationMode.Hight_Accuracy;
        this.f1540q = false;
        this.f1541r = false;
        this.f1542s = true;
        this.f1543t = true;
        this.f1544u = false;
        this.f1545v = false;
        this.f1546w = true;
        this.f1547x = 30000L;
        this.f1548y = 30000L;
        this.f1549z = GeoLanguage.DEFAULT;
        this.f1525A = false;
        this.f1526B = FastScroller.HIDE_DELAY_AFTER_VISIBLE_MS;
        this.f1527C = 21600000;
        this.f1528D = 0.0f;
        this.f1529E = null;
        this.f1530b = false;
        this.f1531c = null;
    }

    public AMapLocationClientOption(Parcel parcel) {
        this.f1532h = 2000L;
        this.f1533i = CoreUtil.f5762i;
        this.f1534j = false;
        this.f1535k = true;
        this.f1536l = true;
        this.f1537m = true;
        this.f1538n = true;
        this.f1539o = AMapLocationMode.Hight_Accuracy;
        this.f1540q = false;
        this.f1541r = false;
        this.f1542s = true;
        this.f1543t = true;
        this.f1544u = false;
        this.f1545v = false;
        this.f1546w = true;
        this.f1547x = 30000L;
        this.f1548y = 30000L;
        this.f1549z = GeoLanguage.DEFAULT;
        this.f1525A = false;
        this.f1526B = FastScroller.HIDE_DELAY_AFTER_VISIBLE_MS;
        this.f1527C = 21600000;
        this.f1528D = 0.0f;
        this.f1529E = null;
        this.f1530b = false;
        this.f1531c = null;
        this.f1532h = parcel.readLong();
        this.f1533i = parcel.readLong();
        this.f1534j = parcel.readByte() != 0;
        this.f1535k = parcel.readByte() != 0;
        this.f1536l = parcel.readByte() != 0;
        this.f1537m = parcel.readByte() != 0;
        this.f1538n = parcel.readByte() != 0;
        int i = parcel.readInt();
        this.f1539o = i == -1 ? AMapLocationMode.Hight_Accuracy : AMapLocationMode.values()[i];
        this.f1540q = parcel.readByte() != 0;
        this.f1541r = parcel.readByte() != 0;
        this.f1542s = parcel.readByte() != 0;
        this.f1543t = parcel.readByte() != 0;
        this.f1544u = parcel.readByte() != 0;
        this.f1545v = parcel.readByte() != 0;
        this.f1546w = parcel.readByte() != 0;
        this.f1547x = parcel.readLong();
        int i2 = parcel.readInt();
        f1524p = i2 == -1 ? AMapLocationProtocol.HTTP : AMapLocationProtocol.values()[i2];
        int i3 = parcel.readInt();
        this.f1549z = i3 == -1 ? GeoLanguage.DEFAULT : GeoLanguage.values()[i3];
        this.f1528D = parcel.readFloat();
        int i4 = parcel.readInt();
        this.f1529E = i4 != -1 ? AMapLocationPurpose.values()[i4] : null;
        OPEN_ALWAYS_SCAN_WIFI = parcel.readByte() != 0;
        this.f1548y = parcel.readLong();
    }

    /* renamed from: a */
    private AMapLocationClientOption m1060a(AMapLocationClientOption aMapLocationClientOption) {
        this.f1532h = aMapLocationClientOption.f1532h;
        this.f1534j = aMapLocationClientOption.f1534j;
        this.f1539o = aMapLocationClientOption.f1539o;
        this.f1535k = aMapLocationClientOption.f1535k;
        this.f1540q = aMapLocationClientOption.f1540q;
        this.f1541r = aMapLocationClientOption.f1541r;
        this.f1536l = aMapLocationClientOption.f1536l;
        this.f1537m = aMapLocationClientOption.f1537m;
        this.f1533i = aMapLocationClientOption.f1533i;
        this.f1542s = aMapLocationClientOption.f1542s;
        this.f1543t = aMapLocationClientOption.f1543t;
        this.f1544u = aMapLocationClientOption.f1544u;
        this.f1545v = aMapLocationClientOption.isSensorEnable();
        this.f1546w = aMapLocationClientOption.isWifiScan();
        this.f1547x = aMapLocationClientOption.f1547x;
        setLocationProtocol(aMapLocationClientOption.getLocationProtocol());
        this.f1549z = aMapLocationClientOption.f1549z;
        setDownloadCoordinateConvertLibrary(isDownloadCoordinateConvertLibrary());
        this.f1528D = aMapLocationClientOption.f1528D;
        this.f1529E = aMapLocationClientOption.f1529E;
        setOpenAlwaysScanWifi(isOpenAlwaysScanWifi());
        setScanWifiInterval(aMapLocationClientOption.getScanWifiInterval());
        this.f1548y = aMapLocationClientOption.f1548y;
        this.f1527C = aMapLocationClientOption.getCacheTimeOut();
        this.f1525A = aMapLocationClientOption.getCacheCallBack();
        this.f1526B = aMapLocationClientOption.getCacheCallBackTime();
        return this;
    }

    public static String getAPIKEY() {
        return f1519a;
    }

    public static boolean isDownloadCoordinateConvertLibrary() {
        return false;
    }

    public static boolean isOpenAlwaysScanWifi() {
        return OPEN_ALWAYS_SCAN_WIFI;
    }

    public static void setDownloadCoordinateConvertLibrary(boolean z) {
    }

    public static void setLocationProtocol(AMapLocationProtocol aMapLocationProtocol) {
        f1524p = aMapLocationProtocol;
    }

    public static void setOpenAlwaysScanWifi(boolean z) {
        OPEN_ALWAYS_SCAN_WIFI = z;
    }

    public static void setScanWifiInterval(long j) {
        SCAN_WIFI_INTERVAL = j;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AMapLocationClientOption m5889clone() {
        try {
            super.clone();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return new AMapLocationClientOption().m1060a(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getCacheCallBack() {
        return this.f1525A;
    }

    public int getCacheCallBackTime() {
        return this.f1526B;
    }

    public int getCacheTimeOut() {
        return this.f1527C;
    }

    public float getDeviceModeDistanceFilter() {
        return this.f1528D;
    }

    public GeoLanguage getGeoLanguage() {
        return this.f1549z;
    }

    public long getGpsFirstTimeout() {
        return this.f1548y;
    }

    public long getHttpTimeOut() {
        return this.f1533i;
    }

    public long getInterval() {
        return this.f1532h;
    }

    public long getLastLocationLifeCycle() {
        return this.f1547x;
    }

    public AMapLocationMode getLocationMode() {
        return this.f1539o;
    }

    public AMapLocationProtocol getLocationProtocol() {
        return f1524p;
    }

    public AMapLocationPurpose getLocationPurpose() {
        return this.f1529E;
    }

    public long getScanWifiInterval() {
        return SCAN_WIFI_INTERVAL;
    }

    public boolean isGpsFirst() {
        return this.f1541r;
    }

    public boolean isKillProcess() {
        return this.f1540q;
    }

    public boolean isLocationCacheEnable() {
        return this.f1543t;
    }

    public boolean isMockEnable() {
        return this.f1535k;
    }

    public boolean isNeedAddress() {
        return this.f1536l;
    }

    public boolean isOffset() {
        return this.f1542s;
    }

    public boolean isOnceLocation() {
        return this.f1534j;
    }

    public boolean isOnceLocationLatest() {
        return this.f1544u;
    }

    public boolean isSensorEnable() {
        return this.f1545v;
    }

    public boolean isWifiActiveScan() {
        return this.f1537m;
    }

    public boolean isWifiScan() {
        return this.f1546w;
    }

    public void setCacheCallBack(boolean z) {
        this.f1525A = z;
    }

    public void setCacheCallBackTime(int i) {
        this.f1526B = i;
    }

    public void setCacheTimeOut(int i) {
        this.f1527C = i;
    }

    public AMapLocationClientOption setDeviceModeDistanceFilter(float f) {
        this.f1528D = f;
        return this;
    }

    public AMapLocationClientOption setGeoLanguage(GeoLanguage geoLanguage) {
        this.f1549z = geoLanguage;
        return this;
    }

    public AMapLocationClientOption setGpsFirst(boolean z) {
        this.f1541r = z;
        return this;
    }

    public AMapLocationClientOption setGpsFirstTimeout(long j) {
        if (j < 5000) {
            j = 5000;
        }
        if (j > 30000) {
            j = 30000;
        }
        this.f1548y = j;
        return this;
    }

    public AMapLocationClientOption setHttpTimeOut(long j) {
        this.f1533i = j;
        return this;
    }

    public AMapLocationClientOption setInterval(long j) {
        if (j <= 800) {
            j = 800;
        }
        this.f1532h = j;
        return this;
    }

    public AMapLocationClientOption setKillProcess(boolean z) {
        this.f1540q = z;
        return this;
    }

    public AMapLocationClientOption setLastLocationLifeCycle(long j) {
        this.f1547x = j;
        return this;
    }

    public AMapLocationClientOption setLocationCacheEnable(boolean z) {
        this.f1543t = z;
        return this;
    }

    public AMapLocationClientOption setLocationMode(AMapLocationMode aMapLocationMode) {
        this.f1539o = aMapLocationMode;
        return this;
    }

    public AMapLocationClientOption setLocationPurpose(AMapLocationPurpose aMapLocationPurpose) {
        String str;
        this.f1529E = aMapLocationPurpose;
        if (aMapLocationPurpose != null) {
            int i = C06162.f1550a[aMapLocationPurpose.ordinal()];
            if (i == 1) {
                this.f1539o = AMapLocationMode.Hight_Accuracy;
                this.f1534j = true;
                this.f1544u = true;
                this.f1541r = false;
                this.f1535k = false;
                this.f1546w = true;
                int i2 = f1520d;
                int i3 = f1521e;
                if ((i2 & i3) == 0) {
                    this.f1530b = true;
                    f1520d = i2 | i3;
                    this.f1531c = "signin";
                }
            } else if (i == 2) {
                int i4 = f1520d;
                int i5 = f1522f;
                if ((i4 & i5) == 0) {
                    this.f1530b = true;
                    f1520d = i4 | i5;
                    str = NotificationCompat.CATEGORY_TRANSPORT;
                    this.f1531c = str;
                }
                this.f1539o = AMapLocationMode.Hight_Accuracy;
                this.f1534j = false;
                this.f1544u = false;
                this.f1541r = true;
                this.f1535k = false;
                this.f1546w = true;
            } else if (i == 3) {
                int i6 = f1520d;
                int i7 = f1523g;
                if ((i6 & i7) == 0) {
                    this.f1530b = true;
                    f1520d = i6 | i7;
                    str = "sport";
                    this.f1531c = str;
                }
                this.f1539o = AMapLocationMode.Hight_Accuracy;
                this.f1534j = false;
                this.f1544u = false;
                this.f1541r = true;
                this.f1535k = false;
                this.f1546w = true;
            }
        }
        return this;
    }

    public AMapLocationClientOption setMockEnable(boolean z) {
        this.f1535k = z;
        return this;
    }

    public AMapLocationClientOption setNeedAddress(boolean z) {
        this.f1536l = z;
        return this;
    }

    public AMapLocationClientOption setOffset(boolean z) {
        this.f1542s = z;
        return this;
    }

    public AMapLocationClientOption setOnceLocation(boolean z) {
        this.f1534j = z;
        return this;
    }

    public AMapLocationClientOption setOnceLocationLatest(boolean z) {
        this.f1544u = z;
        return this;
    }

    public AMapLocationClientOption setSensorEnable(boolean z) {
        this.f1545v = z;
        return this;
    }

    public AMapLocationClientOption setWifiActiveScan(boolean z) {
        this.f1537m = z;
        this.f1538n = z;
        return this;
    }

    public AMapLocationClientOption setWifiScan(boolean z) {
        this.f1546w = z;
        this.f1537m = z ? this.f1538n : false;
        return this;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("interval:");
        sbM1765j.append(String.valueOf(this.f1532h));
        sbM1765j.append("#");
        sbM1765j.append("isOnceLocation:");
        sbM1765j.append(String.valueOf(this.f1534j));
        sbM1765j.append("#");
        sbM1765j.append("locationMode:");
        sbM1765j.append(String.valueOf(this.f1539o));
        sbM1765j.append("#");
        sbM1765j.append("locationProtocol:");
        sbM1765j.append(String.valueOf(f1524p));
        sbM1765j.append("#");
        sbM1765j.append("isMockEnable:");
        sbM1765j.append(String.valueOf(this.f1535k));
        sbM1765j.append("#");
        sbM1765j.append("isKillProcess:");
        sbM1765j.append(String.valueOf(this.f1540q));
        sbM1765j.append("#");
        sbM1765j.append("isGpsFirst:");
        sbM1765j.append(String.valueOf(this.f1541r));
        sbM1765j.append("#");
        sbM1765j.append("isNeedAddress:");
        sbM1765j.append(String.valueOf(this.f1536l));
        sbM1765j.append("#");
        sbM1765j.append("isWifiActiveScan:");
        sbM1765j.append(String.valueOf(this.f1537m));
        sbM1765j.append("#");
        sbM1765j.append("wifiScan:");
        sbM1765j.append(String.valueOf(this.f1546w));
        sbM1765j.append("#");
        sbM1765j.append("httpTimeOut:");
        sbM1765j.append(String.valueOf(this.f1533i));
        sbM1765j.append("#");
        sbM1765j.append("isLocationCacheEnable:");
        sbM1765j.append(String.valueOf(this.f1543t));
        sbM1765j.append("#");
        sbM1765j.append("isOnceLocationLatest:");
        sbM1765j.append(String.valueOf(this.f1544u));
        sbM1765j.append("#");
        sbM1765j.append("sensorEnable:");
        sbM1765j.append(String.valueOf(this.f1545v));
        sbM1765j.append("#");
        sbM1765j.append("geoLanguage:");
        sbM1765j.append(String.valueOf(this.f1549z));
        sbM1765j.append("#");
        sbM1765j.append("locationPurpose:");
        sbM1765j.append(String.valueOf(this.f1529E));
        sbM1765j.append("#");
        sbM1765j.append("callback:");
        sbM1765j.append(String.valueOf(this.f1525A));
        sbM1765j.append("#");
        sbM1765j.append("time:");
        sbM1765j.append(String.valueOf(this.f1526B));
        sbM1765j.append("#");
        return sbM1765j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1532h);
        parcel.writeLong(this.f1533i);
        parcel.writeByte(this.f1534j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1535k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1536l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1537m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1538n ? (byte) 1 : (byte) 0);
        AMapLocationMode aMapLocationMode = this.f1539o;
        parcel.writeInt(aMapLocationMode == null ? -1 : aMapLocationMode.ordinal());
        parcel.writeByte(this.f1540q ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1541r ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1542s ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1543t ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1544u ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1545v ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1546w ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f1547x);
        parcel.writeInt(f1524p == null ? -1 : getLocationProtocol().ordinal());
        GeoLanguage geoLanguage = this.f1549z;
        parcel.writeInt(geoLanguage == null ? -1 : geoLanguage.ordinal());
        parcel.writeFloat(this.f1528D);
        AMapLocationPurpose aMapLocationPurpose = this.f1529E;
        parcel.writeInt(aMapLocationPurpose != null ? aMapLocationPurpose.ordinal() : -1);
        parcel.writeInt(OPEN_ALWAYS_SCAN_WIFI ? 1 : 0);
        parcel.writeLong(this.f1548y);
    }
}
