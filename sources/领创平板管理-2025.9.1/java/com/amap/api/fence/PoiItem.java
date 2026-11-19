package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PoiItem implements Parcelable {
    public static final Parcelable.Creator<PoiItem> CREATOR = new Parcelable.Creator<PoiItem>() { // from class: com.amap.api.fence.PoiItem.1
        /* renamed from: a */
        public static PoiItem m1029a(Parcel parcel) {
            return new PoiItem(parcel);
        }

        /* renamed from: a */
        public static PoiItem[] m1030a(int i) {
            return new PoiItem[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PoiItem createFromParcel(Parcel parcel) {
            return m1029a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PoiItem[] newArray(int i) {
            return m1030a(i);
        }
    };

    /* renamed from: a */
    public String f1476a;

    /* renamed from: b */
    public String f1477b;

    /* renamed from: c */
    public String f1478c;

    /* renamed from: d */
    public String f1479d;

    /* renamed from: e */
    public String f1480e;

    /* renamed from: f */
    public double f1481f;

    /* renamed from: g */
    public double f1482g;

    /* renamed from: h */
    public String f1483h;

    /* renamed from: i */
    public String f1484i;

    /* renamed from: j */
    public String f1485j;

    /* renamed from: k */
    public String f1486k;

    public PoiItem() {
        this.f1476a = "";
        this.f1477b = "";
        this.f1478c = "";
        this.f1479d = "";
        this.f1480e = "";
        this.f1481f = 0.0d;
        this.f1482g = 0.0d;
        this.f1483h = "";
        this.f1484i = "";
        this.f1485j = "";
        this.f1486k = "";
    }

    public PoiItem(Parcel parcel) {
        this.f1476a = "";
        this.f1477b = "";
        this.f1478c = "";
        this.f1479d = "";
        this.f1480e = "";
        this.f1481f = 0.0d;
        this.f1482g = 0.0d;
        this.f1483h = "";
        this.f1484i = "";
        this.f1485j = "";
        this.f1486k = "";
        this.f1476a = parcel.readString();
        this.f1477b = parcel.readString();
        this.f1478c = parcel.readString();
        this.f1479d = parcel.readString();
        this.f1480e = parcel.readString();
        this.f1481f = parcel.readDouble();
        this.f1482g = parcel.readDouble();
        this.f1483h = parcel.readString();
        this.f1484i = parcel.readString();
        this.f1485j = parcel.readString();
        this.f1486k = parcel.readString();
    }

    public static Parcelable.Creator<PoiItem> getCreator() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.f1480e;
    }

    public String getAdname() {
        return this.f1486k;
    }

    public String getCity() {
        return this.f1485j;
    }

    public double getLatitude() {
        return this.f1481f;
    }

    public double getLongitude() {
        return this.f1482g;
    }

    public String getPoiId() {
        return this.f1477b;
    }

    public String getPoiName() {
        return this.f1476a;
    }

    public String getPoiType() {
        return this.f1478c;
    }

    public String getProvince() {
        return this.f1484i;
    }

    public String getTel() {
        return this.f1483h;
    }

    public String getTypeCode() {
        return this.f1479d;
    }

    public void setAddress(String str) {
        this.f1480e = str;
    }

    public void setAdname(String str) {
        this.f1486k = str;
    }

    public void setCity(String str) {
        this.f1485j = str;
    }

    public void setLatitude(double d) {
        this.f1481f = d;
    }

    public void setLongitude(double d) {
        this.f1482g = d;
    }

    public void setPoiId(String str) {
        this.f1477b = str;
    }

    public void setPoiName(String str) {
        this.f1476a = str;
    }

    public void setPoiType(String str) {
        this.f1478c = str;
    }

    public void setProvince(String str) {
        this.f1484i = str;
    }

    public void setTel(String str) {
        this.f1483h = str;
    }

    public void setTypeCode(String str) {
        this.f1479d = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1476a);
        parcel.writeString(this.f1477b);
        parcel.writeString(this.f1478c);
        parcel.writeString(this.f1479d);
        parcel.writeString(this.f1480e);
        parcel.writeDouble(this.f1481f);
        parcel.writeDouble(this.f1482g);
        parcel.writeString(this.f1483h);
        parcel.writeString(this.f1484i);
        parcel.writeString(this.f1485j);
        parcel.writeString(this.f1486k);
    }
}
