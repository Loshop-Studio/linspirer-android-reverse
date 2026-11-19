package com.amap.api.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.loc.CoreUtil;
import com.loc.C1841ew;
import com.taobao.accs.common.Constants;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AMapLocation extends Location implements Parcelable, Cloneable {
    public static final String COORD_TYPE_GCJ02 = "GCJ02";
    public static final String COORD_TYPE_WGS84 = "WGS84";
    public static final Parcelable.Creator<AMapLocation> CREATOR = new Parcelable.Creator<AMapLocation>() { // from class: com.amap.api.location.AMapLocation.1
        /* renamed from: a */
        public static AMapLocation m1058a(Parcel parcel) {
            AMapLocation aMapLocation = new AMapLocation((Location) Location.CREATOR.createFromParcel(parcel));
            aMapLocation.f1498h = parcel.readString();
            aMapLocation.f1499i = parcel.readString();
            aMapLocation.f1513w = parcel.readString();
            aMapLocation.f1491a = parcel.readString();
            aMapLocation.f1495e = parcel.readString();
            aMapLocation.f1497g = parcel.readString();
            aMapLocation.f1501k = parcel.readString();
            aMapLocation.f1496f = parcel.readString();
            aMapLocation.f1506p = parcel.readInt();
            aMapLocation.f1507q = parcel.readString();
            aMapLocation.f1492b = parcel.readString();
            aMapLocation.f1487A = parcel.readInt() != 0;
            aMapLocation.f1505o = parcel.readInt() != 0;
            aMapLocation.f1510t = parcel.readDouble();
            aMapLocation.f1508r = parcel.readString();
            aMapLocation.f1509s = parcel.readInt();
            aMapLocation.f1511u = parcel.readDouble();
            aMapLocation.f1515y = parcel.readInt() != 0;
            aMapLocation.f1504n = parcel.readString();
            aMapLocation.f1500j = parcel.readString();
            aMapLocation.f1494d = parcel.readString();
            aMapLocation.f1502l = parcel.readString();
            aMapLocation.f1512v = parcel.readInt();
            aMapLocation.f1514x = parcel.readInt();
            aMapLocation.f1503m = parcel.readString();
            aMapLocation.f1516z = parcel.readString();
            aMapLocation.f1488B = parcel.readString();
            aMapLocation.f1489C = parcel.readInt();
            aMapLocation.f1490D = parcel.readInt();
            return aMapLocation;
        }

        /* renamed from: a */
        public static AMapLocation[] m1059a(int i) {
            return new AMapLocation[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocation createFromParcel(Parcel parcel) {
            return m1058a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocation[] newArray(int i) {
            return m1059a(i);
        }
    };
    public static final int ERROR_CODE_AIRPLANEMODE_WIFIOFF = 18;
    public static final int ERROR_CODE_FAILURE_AUTH = 7;
    public static final int ERROR_CODE_FAILURE_CELL = 11;
    public static final int ERROR_CODE_FAILURE_CONNECTION = 4;
    public static final int ERROR_CODE_FAILURE_INIT = 9;
    public static final int ERROR_CODE_FAILURE_LOCATION = 6;
    public static final int ERROR_CODE_FAILURE_LOCATION_PARAMETER = 3;
    public static final int ERROR_CODE_FAILURE_LOCATION_PERMISSION = 12;
    public static final int ERROR_CODE_FAILURE_NOENOUGHSATELLITES = 14;
    public static final int ERROR_CODE_FAILURE_NOWIFIANDAP = 13;
    public static final int ERROR_CODE_FAILURE_PARSER = 5;
    public static final int ERROR_CODE_FAILURE_SIMULATION_LOCATION = 15;
    public static final int ERROR_CODE_FAILURE_WIFI_INFO = 2;
    public static final int ERROR_CODE_INVALID_PARAMETER = 1;
    public static final int ERROR_CODE_NOCGI_WIFIOFF = 19;
    public static final int ERROR_CODE_NO_COMPENSATION_CACHE = 33;
    public static final int ERROR_CODE_SERVICE_FAIL = 10;
    public static final int ERROR_CODE_UNKNOWN = 8;
    public static final int GPS_ACCURACY_BAD = 0;
    public static final int GPS_ACCURACY_GOOD = 1;
    public static final int GPS_ACCURACY_UNKNOWN = -1;
    public static final int LOCATION_COMPENSATION = 10;
    public static final int LOCATION_SUCCESS = 0;
    public static final int LOCATION_TYPE_AMAP = 7;
    public static final int LOCATION_TYPE_CELL = 6;
    public static final int LOCATION_TYPE_FAST = 3;
    public static final int LOCATION_TYPE_FIX_CACHE = 4;
    public static final int LOCATION_TYPE_GPS = 1;
    public static final int LOCATION_TYPE_LAST_LOCATION_CACHE = 9;
    public static final int LOCATION_TYPE_OFFLINE = 8;
    public static final int LOCATION_TYPE_SAME_REQ = 2;
    public static final int LOCATION_TYPE_WIFI = 5;
    public static final int TRUSTED_LEVEL_BAD = 4;
    public static final int TRUSTED_LEVEL_HIGH = 1;
    public static final int TRUSTED_LEVEL_LOW = 3;
    public static final int TRUSTED_LEVEL_NORMAL = 2;

    /* renamed from: A */
    public boolean f1487A;

    /* renamed from: B */
    public String f1488B;

    /* renamed from: C */
    public int f1489C;

    /* renamed from: D */
    public int f1490D;

    /* renamed from: a */
    public String f1491a;

    /* renamed from: b */
    public String f1492b;

    /* renamed from: c */
    public AMapLocationQualityReport f1493c;

    /* renamed from: d */
    public String f1494d;

    /* renamed from: e */
    public String f1495e;

    /* renamed from: f */
    public String f1496f;

    /* renamed from: g */
    public String f1497g;

    /* renamed from: h */
    public String f1498h;

    /* renamed from: i */
    public String f1499i;

    /* renamed from: j */
    public String f1500j;

    /* renamed from: k */
    public String f1501k;

    /* renamed from: l */
    public String f1502l;

    /* renamed from: m */
    public String f1503m;

    /* renamed from: n */
    public String f1504n;

    /* renamed from: o */
    public boolean f1505o;

    /* renamed from: p */
    public int f1506p;

    /* renamed from: q */
    public String f1507q;

    /* renamed from: r */
    public String f1508r;

    /* renamed from: s */
    public int f1509s;

    /* renamed from: t */
    public double f1510t;

    /* renamed from: u */
    public double f1511u;

    /* renamed from: v */
    public int f1512v;

    /* renamed from: w */
    public String f1513w;

    /* renamed from: x */
    public int f1514x;

    /* renamed from: y */
    public boolean f1515y;

    /* renamed from: z */
    public String f1516z;

    public AMapLocation(Location location) {
        super(location);
        this.f1494d = "";
        this.f1495e = "";
        this.f1496f = "";
        this.f1497g = "";
        this.f1498h = "";
        this.f1499i = "";
        this.f1500j = "";
        this.f1501k = "";
        this.f1502l = "";
        this.f1503m = "";
        this.f1504n = "";
        this.f1505o = true;
        this.f1506p = 0;
        this.f1507q = AbstractC2002b.JSON_SUCCESS;
        this.f1508r = "";
        this.f1509s = 0;
        this.f1510t = 0.0d;
        this.f1511u = 0.0d;
        this.f1512v = 0;
        this.f1513w = "";
        this.f1514x = -1;
        this.f1515y = false;
        this.f1516z = "";
        this.f1487A = false;
        this.f1491a = "";
        this.f1492b = "";
        this.f1493c = new AMapLocationQualityReport();
        this.f1488B = COORD_TYPE_GCJ02;
        this.f1489C = 1;
        this.f1510t = location.getLatitude();
        this.f1511u = location.getLongitude();
    }

    public AMapLocation(String str) {
        super(str);
        this.f1494d = "";
        this.f1495e = "";
        this.f1496f = "";
        this.f1497g = "";
        this.f1498h = "";
        this.f1499i = "";
        this.f1500j = "";
        this.f1501k = "";
        this.f1502l = "";
        this.f1503m = "";
        this.f1504n = "";
        this.f1505o = true;
        this.f1506p = 0;
        this.f1507q = AbstractC2002b.JSON_SUCCESS;
        this.f1508r = "";
        this.f1509s = 0;
        this.f1510t = 0.0d;
        this.f1511u = 0.0d;
        this.f1512v = 0;
        this.f1513w = "";
        this.f1514x = -1;
        this.f1515y = false;
        this.f1516z = "";
        this.f1487A = false;
        this.f1491a = "";
        this.f1492b = "";
        this.f1493c = new AMapLocationQualityReport();
        this.f1488B = COORD_TYPE_GCJ02;
        this.f1489C = 1;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AMapLocation m5888clone() {
        try {
            super.clone();
        } catch (Throwable unused) {
        }
        AMapLocation aMapLocation = new AMapLocation(this);
        try {
            aMapLocation.setLatitude(this.f1510t);
            aMapLocation.setLongitude(this.f1511u);
            aMapLocation.setAdCode(this.f1498h);
            aMapLocation.setAddress(this.f1499i);
            aMapLocation.setAoiName(this.f1513w);
            aMapLocation.setBuildingId(this.f1491a);
            aMapLocation.setCity(this.f1495e);
            aMapLocation.setCityCode(this.f1497g);
            aMapLocation.setCountry(this.f1501k);
            aMapLocation.setDistrict(this.f1496f);
            aMapLocation.setErrorCode(this.f1506p);
            aMapLocation.setErrorInfo(this.f1507q);
            aMapLocation.setFloor(this.f1492b);
            aMapLocation.setFixLastLocation(this.f1487A);
            aMapLocation.setOffset(this.f1505o);
            aMapLocation.setLocationDetail(this.f1508r);
            aMapLocation.setLocationType(this.f1509s);
            aMapLocation.setMock(this.f1515y);
            aMapLocation.setNumber(this.f1504n);
            aMapLocation.setPoiName(this.f1500j);
            aMapLocation.setProvince(this.f1494d);
            aMapLocation.setRoad(this.f1502l);
            aMapLocation.setSatellites(this.f1512v);
            aMapLocation.setGpsAccuracyStatus(this.f1514x);
            aMapLocation.setStreet(this.f1503m);
            aMapLocation.setDescription(this.f1516z);
            aMapLocation.setExtras(getExtras());
            if (this.f1493c != null) {
                aMapLocation.setLocationQualityReport(this.f1493c.m5890clone());
            }
            aMapLocation.setCoordType(this.f1488B);
            aMapLocation.setTrustedLevel(this.f1489C);
            aMapLocation.setConScenario(this.f1490D);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AMapLocation", "clone");
        }
        return aMapLocation;
    }

    @Override // android.location.Location, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.location.Location
    public float getAccuracy() {
        return super.getAccuracy();
    }

    public String getAdCode() {
        return this.f1498h;
    }

    public String getAddress() {
        return this.f1499i;
    }

    @Override // android.location.Location
    public double getAltitude() {
        return super.getAltitude();
    }

    public String getAoiName() {
        return this.f1513w;
    }

    @Override // android.location.Location
    public float getBearing() {
        return super.getBearing();
    }

    public String getBuildingId() {
        return this.f1491a;
    }

    public String getCity() {
        return this.f1495e;
    }

    public String getCityCode() {
        return this.f1497g;
    }

    public int getConScenario() {
        return this.f1490D;
    }

    public String getCoordType() {
        return this.f1488B;
    }

    public String getCountry() {
        return this.f1501k;
    }

    public String getDescription() {
        return this.f1516z;
    }

    public String getDistrict() {
        return this.f1496f;
    }

    public int getErrorCode() {
        return this.f1506p;
    }

    public String getErrorInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1507q);
        if (this.f1506p != 0) {
            sb.append(" 请到http://lbs.amap.com/api/android-location-sdk/guide/utilities/errorcode/查看错误码说明");
            sb.append(",错误详细信息:" + this.f1508r);
        }
        return sb.toString();
    }

    public String getFloor() {
        return this.f1492b;
    }

    public int getGpsAccuracyStatus() {
        return this.f1514x;
    }

    @Override // android.location.Location
    public double getLatitude() {
        return this.f1510t;
    }

    public String getLocationDetail() {
        return this.f1508r;
    }

    public AMapLocationQualityReport getLocationQualityReport() {
        return this.f1493c;
    }

    public int getLocationType() {
        return this.f1509s;
    }

    @Override // android.location.Location
    public double getLongitude() {
        return this.f1511u;
    }

    public String getPoiName() {
        return this.f1500j;
    }

    @Override // android.location.Location
    public String getProvider() {
        return super.getProvider();
    }

    public String getProvince() {
        return this.f1494d;
    }

    public String getRoad() {
        return this.f1502l;
    }

    public int getSatellites() {
        return this.f1512v;
    }

    @Override // android.location.Location
    public float getSpeed() {
        return super.getSpeed();
    }

    public String getStreet() {
        return this.f1503m;
    }

    public String getStreetNum() {
        return this.f1504n;
    }

    public int getTrustedLevel() {
        return this.f1489C;
    }

    public boolean isFixLastLocation() {
        return this.f1487A;
    }

    @Override // android.location.Location
    public boolean isMock() {
        return this.f1515y;
    }

    public boolean isOffset() {
        return this.f1505o;
    }

    public void setAdCode(String str) {
        this.f1498h = str;
    }

    public void setAddress(String str) {
        this.f1499i = str;
    }

    public void setAoiName(String str) {
        this.f1513w = str;
    }

    public void setBuildingId(String str) {
        this.f1491a = str;
    }

    public void setCity(String str) {
        this.f1495e = str;
    }

    public void setCityCode(String str) {
        this.f1497g = str;
    }

    public void setConScenario(int i) {
        this.f1490D = i;
    }

    public void setCoordType(String str) {
        this.f1488B = str;
    }

    public void setCountry(String str) {
        this.f1501k = str;
    }

    public void setDescription(String str) {
        this.f1516z = str;
    }

    public void setDistrict(String str) {
        this.f1496f = str;
    }

    public void setErrorCode(int i) {
        if (this.f1506p != 0) {
            return;
        }
        this.f1507q = C1841ew.m5109a(i);
        this.f1506p = i;
    }

    public void setErrorInfo(String str) {
        this.f1507q = str;
    }

    public void setFixLastLocation(boolean z) {
        this.f1487A = z;
    }

    public void setFloor(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = str.replace("F", "");
            try {
                Integer.parseInt(str);
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "AmapLoc", "setFloor");
                str = null;
            }
        }
        this.f1492b = str;
    }

    public void setGpsAccuracyStatus(int i) {
        this.f1514x = i;
    }

    @Override // android.location.Location
    public void setLatitude(double d) {
        this.f1510t = d;
    }

    public void setLocationDetail(String str) {
        this.f1508r = str;
    }

    public void setLocationQualityReport(AMapLocationQualityReport aMapLocationQualityReport) {
        if (aMapLocationQualityReport == null) {
            return;
        }
        this.f1493c = aMapLocationQualityReport;
    }

    public void setLocationType(int i) {
        this.f1509s = i;
    }

    @Override // android.location.Location
    public void setLongitude(double d) {
        this.f1511u = d;
    }

    @Override // android.location.Location
    public void setMock(boolean z) {
        this.f1515y = z;
    }

    public void setNumber(String str) {
        this.f1504n = str;
    }

    public void setOffset(boolean z) {
        this.f1505o = z;
    }

    public void setPoiName(String str) {
        this.f1500j = str;
    }

    public void setProvince(String str) {
        this.f1494d = str;
    }

    public void setRoad(String str) {
        this.f1502l = str;
    }

    public void setSatellites(int i) {
        this.f1512v = i;
    }

    public void setStreet(String str) {
        this.f1503m = str;
    }

    public void setTrustedLevel(int i) {
        this.f1489C = i;
    }

    public JSONObject toJson(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return jSONObject;
                    }
                }
                jSONObject.put("provider", getProvider());
                jSONObject.put("lon", getLongitude());
                jSONObject.put(DispatchConstants.LATITUDE, getLatitude());
                jSONObject.put("accuracy", getAccuracy());
                jSONObject.put("isOffset", this.f1505o);
                jSONObject.put("isFixLastLocation", this.f1487A);
                jSONObject.put("coordType", this.f1488B);
                return jSONObject;
            }
            try {
                jSONObject.put("altitude", getAltitude());
                jSONObject.put("speed", getSpeed());
                jSONObject.put("bearing", getBearing());
            } catch (Throwable unused) {
            }
            jSONObject.put("citycode", this.f1497g);
            jSONObject.put("adcode", this.f1498h);
            jSONObject.put("country", this.f1501k);
            jSONObject.put("province", this.f1494d);
            jSONObject.put("city", this.f1495e);
            jSONObject.put("district", this.f1496f);
            jSONObject.put("road", this.f1502l);
            jSONObject.put("street", this.f1503m);
            jSONObject.put("number", this.f1504n);
            jSONObject.put("poiname", this.f1500j);
            jSONObject.put(Constants.KEY_ERROR_CODE, this.f1506p);
            jSONObject.put("errorInfo", this.f1507q);
            jSONObject.put("locationType", this.f1509s);
            jSONObject.put("locationDetail", this.f1508r);
            jSONObject.put("aoiname", this.f1513w);
            jSONObject.put("address", this.f1499i);
            jSONObject.put("poiid", this.f1491a);
            jSONObject.put("floor", this.f1492b);
            jSONObject.put("description", this.f1516z);
            jSONObject.put("time", getTime());
            jSONObject.put("provider", getProvider());
            jSONObject.put("lon", getLongitude());
            jSONObject.put(DispatchConstants.LATITUDE, getLatitude());
            jSONObject.put("accuracy", getAccuracy());
            jSONObject.put("isOffset", this.f1505o);
            jSONObject.put("isFixLastLocation", this.f1487A);
            jSONObject.put("coordType", this.f1488B);
            return jSONObject;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AmapLoc", "toStr");
            return null;
        }
    }

    public String toStr() {
        return toStr(1);
    }

    public String toStr(int i) {
        JSONObject json;
        try {
            json = toJson(i);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AMapLocation", "toStr part2");
            json = null;
        }
        if (json == null) {
            return null;
        }
        return json.toString();
    }

    @Override // android.location.Location
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("latitude=" + this.f1510t + "#");
            stringBuffer.append("longitude=" + this.f1511u + "#");
            stringBuffer.append("province=" + this.f1494d + "#");
            stringBuffer.append("coordType=" + this.f1488B + "#");
            stringBuffer.append("city=" + this.f1495e + "#");
            stringBuffer.append("district=" + this.f1496f + "#");
            stringBuffer.append("cityCode=" + this.f1497g + "#");
            stringBuffer.append("adCode=" + this.f1498h + "#");
            stringBuffer.append("address=" + this.f1499i + "#");
            stringBuffer.append("country=" + this.f1501k + "#");
            stringBuffer.append("road=" + this.f1502l + "#");
            stringBuffer.append("poiName=" + this.f1500j + "#");
            stringBuffer.append("street=" + this.f1503m + "#");
            stringBuffer.append("streetNum=" + this.f1504n + "#");
            stringBuffer.append("aoiName=" + this.f1513w + "#");
            stringBuffer.append("poiid=" + this.f1491a + "#");
            stringBuffer.append("floor=" + this.f1492b + "#");
            stringBuffer.append("errorCode=" + this.f1506p + "#");
            stringBuffer.append("errorInfo=" + this.f1507q + "#");
            stringBuffer.append("locationDetail=" + this.f1508r + "#");
            stringBuffer.append("description=" + this.f1516z + "#");
            stringBuffer.append("locationType=" + this.f1509s + "#");
            StringBuilder sb = new StringBuilder("conScenario=");
            sb.append(this.f1490D);
            stringBuffer.append(sb.toString());
        } catch (Throwable unused) {
        }
        return stringBuffer.toString();
    }

    @Override // android.location.Location, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        try {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1498h);
            parcel.writeString(this.f1499i);
            parcel.writeString(this.f1513w);
            parcel.writeString(this.f1491a);
            parcel.writeString(this.f1495e);
            parcel.writeString(this.f1497g);
            parcel.writeString(this.f1501k);
            parcel.writeString(this.f1496f);
            parcel.writeInt(this.f1506p);
            parcel.writeString(this.f1507q);
            parcel.writeString(this.f1492b);
            int i2 = 1;
            parcel.writeInt(this.f1487A ? 1 : 0);
            parcel.writeInt(this.f1505o ? 1 : 0);
            parcel.writeDouble(this.f1510t);
            parcel.writeString(this.f1508r);
            parcel.writeInt(this.f1509s);
            parcel.writeDouble(this.f1511u);
            if (!this.f1515y) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            parcel.writeString(this.f1504n);
            parcel.writeString(this.f1500j);
            parcel.writeString(this.f1494d);
            parcel.writeString(this.f1502l);
            parcel.writeInt(this.f1512v);
            parcel.writeInt(this.f1514x);
            parcel.writeString(this.f1503m);
            parcel.writeString(this.f1516z);
            parcel.writeString(this.f1488B);
            parcel.writeInt(this.f1489C);
            parcel.writeInt(this.f1490D);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "AMapLocation", "writeToParcel");
        }
    }
}
