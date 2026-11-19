package com.amap.api.fence;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.DPoint;
import com.loc.C1841ew;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class GeoFence implements Parcelable {
    public static final int ADDGEOFENCE_SUCCESS = 0;
    public static final String BUNDLE_KEY_CUSTOMID = "customId";
    public static final String BUNDLE_KEY_FENCE = "fence";
    public static final String BUNDLE_KEY_FENCEID = "fenceid";
    public static final String BUNDLE_KEY_FENCESTATUS = "event";
    public static final String BUNDLE_KEY_LOCERRORCODE = "location_errorcode";
    public static final Parcelable.Creator<GeoFence> CREATOR = new Parcelable.Creator<GeoFence>() { // from class: com.amap.api.fence.GeoFence.1
        /* renamed from: a */
        public static GeoFence m1026a(Parcel parcel) {
            return new GeoFence(parcel);
        }

        /* renamed from: a */
        public static GeoFence[] m1027a(int i) {
            return new GeoFence[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GeoFence createFromParcel(Parcel parcel) {
            return m1026a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GeoFence[] newArray(int i) {
            return m1027a(i);
        }
    };
    public static final int ERROR_CODE_EXISTS = 17;
    public static final int ERROR_CODE_FAILURE_AUTH = 7;
    public static final int ERROR_CODE_FAILURE_CONNECTION = 4;
    public static final int ERROR_CODE_FAILURE_PARSER = 5;
    public static final int ERROR_CODE_INVALID_PARAMETER = 1;
    public static final int ERROR_CODE_UNKNOWN = 8;
    public static final int ERROR_NO_VALIDFENCE = 16;
    public static final int STATUS_IN = 1;
    public static final int STATUS_LOCFAIL = 4;
    public static final int STATUS_OUT = 2;
    public static final int STATUS_STAYED = 3;
    public static final int STATUS_UNKNOWN = 0;
    public static final int TYPE_AMAPPOI = 2;
    public static final int TYPE_DISTRICT = 3;
    public static final int TYPE_POLYGON = 1;
    public static final int TYPE_ROUND = 0;

    /* renamed from: a */
    public String f1456a;

    /* renamed from: b */
    public String f1457b;

    /* renamed from: c */
    public String f1458c;

    /* renamed from: d */
    public PendingIntent f1459d;

    /* renamed from: e */
    public int f1460e;

    /* renamed from: f */
    public PoiItem f1461f;

    /* renamed from: g */
    public List<DistrictItem> f1462g;

    /* renamed from: h */
    public List<List<DPoint>> f1463h;

    /* renamed from: i */
    public float f1464i;

    /* renamed from: j */
    public long f1465j;

    /* renamed from: k */
    public int f1466k;

    /* renamed from: l */
    public float f1467l;

    /* renamed from: m */
    public float f1468m;

    /* renamed from: n */
    public DPoint f1469n;

    /* renamed from: o */
    public int f1470o;

    /* renamed from: p */
    public long f1471p;

    /* renamed from: q */
    public boolean f1472q;

    /* renamed from: r */
    public AMapLocation f1473r;

    public GeoFence() {
        this.f1459d = null;
        this.f1460e = 0;
        this.f1461f = null;
        this.f1462g = null;
        this.f1464i = 0.0f;
        this.f1465j = -1L;
        this.f1466k = 1;
        this.f1467l = 0.0f;
        this.f1468m = 0.0f;
        this.f1469n = null;
        this.f1470o = 0;
        this.f1471p = -1L;
        this.f1472q = true;
        this.f1473r = null;
    }

    public GeoFence(Parcel parcel) {
        this.f1459d = null;
        this.f1460e = 0;
        this.f1461f = null;
        this.f1462g = null;
        this.f1464i = 0.0f;
        this.f1465j = -1L;
        this.f1466k = 1;
        this.f1467l = 0.0f;
        this.f1468m = 0.0f;
        this.f1469n = null;
        this.f1470o = 0;
        this.f1471p = -1L;
        this.f1472q = true;
        this.f1473r = null;
        this.f1456a = parcel.readString();
        this.f1457b = parcel.readString();
        this.f1458c = parcel.readString();
        this.f1459d = (PendingIntent) parcel.readParcelable(PendingIntent.class.getClassLoader());
        this.f1460e = parcel.readInt();
        this.f1461f = (PoiItem) parcel.readParcelable(PoiItem.class.getClassLoader());
        this.f1462g = parcel.createTypedArrayList(DistrictItem.CREATOR);
        this.f1464i = parcel.readFloat();
        this.f1465j = parcel.readLong();
        this.f1466k = parcel.readInt();
        this.f1467l = parcel.readFloat();
        this.f1468m = parcel.readFloat();
        this.f1469n = (DPoint) parcel.readParcelable(DPoint.class.getClassLoader());
        this.f1470o = parcel.readInt();
        this.f1471p = parcel.readLong();
        int i = parcel.readInt();
        if (i != 0) {
            this.f1463h = new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                this.f1463h.add(parcel.createTypedArrayList(DPoint.CREATOR));
            }
        }
        this.f1472q = parcel.readByte() != 0;
        this.f1473r = (AMapLocation) parcel.readParcelable(AMapLocation.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GeoFence)) {
            return false;
        }
        GeoFence geoFence = (GeoFence) obj;
        if (TextUtils.isEmpty(this.f1457b)) {
            if (!TextUtils.isEmpty(geoFence.f1457b)) {
                return false;
            }
        } else if (!this.f1457b.equals(geoFence.f1457b)) {
            return false;
        }
        DPoint dPoint = this.f1469n;
        if (dPoint == null) {
            if (geoFence.f1469n != null) {
                return false;
            }
        } else if (!dPoint.equals(geoFence.f1469n)) {
            return false;
        }
        if (this.f1464i != geoFence.f1464i) {
            return false;
        }
        List<List<DPoint>> list = this.f1463h;
        List<List<DPoint>> list2 = geoFence.f1463h;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int getActivatesAction() {
        return this.f1466k;
    }

    public DPoint getCenter() {
        return this.f1469n;
    }

    public AMapLocation getCurrentLocation() {
        return this.f1473r;
    }

    public String getCustomId() {
        return this.f1457b;
    }

    public List<DistrictItem> getDistrictItemList() {
        return this.f1462g;
    }

    public long getEnterTime() {
        return this.f1471p;
    }

    public long getExpiration() {
        return this.f1465j;
    }

    public String getFenceId() {
        return this.f1456a;
    }

    public float getMaxDis2Center() {
        return this.f1468m;
    }

    public float getMinDis2Center() {
        return this.f1467l;
    }

    public PendingIntent getPendingIntent() {
        return this.f1459d;
    }

    public String getPendingIntentAction() {
        return this.f1458c;
    }

    public PoiItem getPoiItem() {
        return this.f1461f;
    }

    public List<List<DPoint>> getPointList() {
        return this.f1463h;
    }

    public float getRadius() {
        return this.f1464i;
    }

    public int getStatus() {
        return this.f1470o;
    }

    public int getType() {
        return this.f1460e;
    }

    public int hashCode() {
        return this.f1469n.hashCode() + this.f1463h.hashCode() + this.f1457b.hashCode() + ((int) (this.f1464i * 100.0f));
    }

    public boolean isAble() {
        return this.f1472q;
    }

    public void setAble(boolean z) {
        this.f1472q = z;
    }

    public void setActivatesAction(int i) {
        this.f1466k = i;
    }

    public void setCenter(DPoint dPoint) {
        this.f1469n = dPoint;
    }

    public void setCurrentLocation(AMapLocation aMapLocation) {
        this.f1473r = aMapLocation.m5888clone();
    }

    public void setCustomId(String str) {
        this.f1457b = str;
    }

    public void setDistrictItemList(List<DistrictItem> list) {
        this.f1462g = list;
    }

    public void setEnterTime(long j) {
        this.f1471p = j;
    }

    public void setExpiration(long j) {
        if (j < 0) {
            this.f1465j = -1L;
        } else {
            this.f1465j = C1841ew.m5127b() + j;
        }
    }

    public void setFenceId(String str) {
        this.f1456a = str;
    }

    public void setMaxDis2Center(float f) {
        this.f1468m = f;
    }

    public void setMinDis2Center(float f) {
        this.f1467l = f;
    }

    public void setPendingIntent(PendingIntent pendingIntent) {
        this.f1459d = pendingIntent;
    }

    public void setPendingIntentAction(String str) {
        this.f1458c = str;
    }

    public void setPoiItem(PoiItem poiItem) {
        this.f1461f = poiItem;
    }

    public void setPointList(List<List<DPoint>> list) {
        this.f1463h = list;
    }

    public void setRadius(float f) {
        this.f1464i = f;
    }

    public void setStatus(int i) {
        this.f1470o = i;
    }

    public void setType(int i) {
        this.f1460e = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1456a);
        parcel.writeString(this.f1457b);
        parcel.writeString(this.f1458c);
        parcel.writeParcelable(this.f1459d, i);
        parcel.writeInt(this.f1460e);
        parcel.writeParcelable(this.f1461f, i);
        parcel.writeTypedList(this.f1462g);
        parcel.writeFloat(this.f1464i);
        parcel.writeLong(this.f1465j);
        parcel.writeInt(this.f1466k);
        parcel.writeFloat(this.f1467l);
        parcel.writeFloat(this.f1468m);
        parcel.writeParcelable(this.f1469n, i);
        parcel.writeInt(this.f1470o);
        parcel.writeLong(this.f1471p);
        List<List<DPoint>> list = this.f1463h;
        if (list != null && !list.isEmpty()) {
            parcel.writeInt(this.f1463h.size());
            Iterator<List<DPoint>> it = this.f1463h.iterator();
            while (it.hasNext()) {
                parcel.writeTypedList(it.next());
            }
        }
        parcel.writeByte(this.f1472q ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f1473r, i);
    }
}
