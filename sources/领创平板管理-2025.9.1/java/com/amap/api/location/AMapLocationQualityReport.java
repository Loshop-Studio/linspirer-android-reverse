package com.amap.api.location;

import com.amap.api.location.AMapLocationClientOption;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.loc.CoreUtil;

/* loaded from: classes.dex */
public class AMapLocationQualityReport implements Cloneable {
    public static final int GPS_STATUS_MODE_SAVING = 3;
    public static final int GPS_STATUS_NOGPSPERMISSION = 4;
    public static final int GPS_STATUS_NOGPSPROVIDER = 1;
    public static final int GPS_STATUS_OFF = 2;
    public static final int GPS_STATUS_OK = 0;

    /* renamed from: b */
    public boolean f1559b = false;

    /* renamed from: c */
    public int f1560c = 2;

    /* renamed from: d */
    public int f1561d = 0;

    /* renamed from: e */
    public String f1562e = GrsBaseInfo.CountryCodeSource.UNKNOWN;

    /* renamed from: f */
    public long f1563f = 0;

    /* renamed from: g */
    public boolean f1564g = false;

    /* renamed from: a */
    public AMapLocationClientOption.AMapLocationMode f1558a = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AMapLocationQualityReport m5890clone() {
        AMapLocationQualityReport aMapLocationQualityReport = new AMapLocationQualityReport();
        try {
            super.clone();
        } catch (Throwable unused) {
        }
        try {
            aMapLocationQualityReport.setGpsStatus(this.f1560c);
            aMapLocationQualityReport.setGPSSatellites(this.f1561d);
            aMapLocationQualityReport.setWifiAble(this.f1559b);
            aMapLocationQualityReport.setNetUseTime(this.f1563f);
            aMapLocationQualityReport.setNetworkType(this.f1562e);
            aMapLocationQualityReport.setLocationMode(this.f1558a);
            aMapLocationQualityReport.setInstallHighDangerMockApp(this.f1564g);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AMapLocationQualityReport", "clone");
        }
        return aMapLocationQualityReport;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getAdviseMessage() {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r1 = r4.f1558a
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r2 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Battery_Saving
            if (r1 == r2) goto L36
            int r2 = r4.f1560c
            r3 = 4
            if (r2 == 0) goto L2b
            r1 = 1
            if (r2 == r1) goto L25
            r1 = 2
            if (r2 == r1) goto L22
            r1 = 3
            if (r2 == r1) goto L1f
            if (r2 == r3) goto L1c
            goto L36
        L1c:
            java.lang.String r1 = "您的设置禁用了GPS定位权限，开启GPS定位权限有助于提高定位的精确度\n"
            goto L27
        L1f:
            java.lang.String r1 = "您的设备当前设置的定位模式不包含GPS定位，选择包含GPS模式的定位模式有助于提高定位的精确度\n"
            goto L27
        L22:
            java.lang.String r1 = "您的设备关闭了GPS定位功能，开启GPS定位功能有助于提高定位的精确度\n"
            goto L27
        L25:
            java.lang.String r1 = "您的设备没有GPS模块或者GPS模块异常，无法进行GPS定位\n"
        L27:
            r0.append(r1)
            goto L36
        L2b:
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r2 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Device_Sensors
            if (r1 != r2) goto L36
            int r1 = r4.f1561d
            if (r1 >= r3) goto L36
            java.lang.String r1 = "当前GPS信号弱，位置更新可能会延迟\n"
            goto L27
        L36:
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r1 = r4.f1558a
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r2 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Device_Sensors
            if (r1 == r2) goto L62
            java.lang.String r1 = r4.f1562e
            java.lang.String r2 = "DISCONNECTED"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L4c
            java.lang.String r1 = "您的设备未连接到网络，无法进行网络定位\n"
        L48:
            r0.append(r1)
            goto L59
        L4c:
            java.lang.String r1 = r4.f1562e
            java.lang.String r2 = "2G"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L59
            java.lang.String r1 = "您的设备网络状态不太好，网络定位可能会有延迟\n"
            goto L48
        L59:
            boolean r1 = r4.f1559b
            if (r1 != 0) goto L62
            java.lang.String r1 = "您的设备WIFI开关已关闭，打开WIFI开关有助于提高定位的成功率\n"
            r0.append(r1)
        L62:
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.location.AMapLocationQualityReport.getAdviseMessage():java.lang.String");
    }

    public int getGPSSatellites() {
        return this.f1561d;
    }

    public int getGPSStatus() {
        return this.f1560c;
    }

    public long getNetUseTime() {
        return this.f1563f;
    }

    public String getNetworkType() {
        return this.f1562e;
    }

    public boolean isInstalledHighDangerMockApp() {
        return this.f1564g;
    }

    public boolean isWifiAble() {
        return this.f1559b;
    }

    public void setGPSSatellites(int i) {
        this.f1561d = i;
    }

    public void setGpsStatus(int i) {
        this.f1560c = i;
    }

    public void setInstallHighDangerMockApp(boolean z) {
        this.f1564g = z;
    }

    public void setLocationMode(AMapLocationClientOption.AMapLocationMode aMapLocationMode) {
        this.f1558a = aMapLocationMode;
    }

    public void setNetUseTime(long j) {
        this.f1563f = j;
    }

    public void setNetworkType(String str) {
        this.f1562e = str;
    }

    public void setWifiAble(boolean z) {
        this.f1559b = z;
    }
}
