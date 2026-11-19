package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.location.DPoint;
import java.util.List;

/* loaded from: classes.dex */
public class DistrictItem implements Parcelable {
    public static final Parcelable.Creator<DistrictItem> CREATOR = new Parcelable.Creator<DistrictItem>() { // from class: com.amap.api.fence.DistrictItem.1
        /* renamed from: a */
        public static DistrictItem m1024a(Parcel parcel) {
            return new DistrictItem(parcel);
        }

        /* renamed from: a */
        public static DistrictItem[] m1025a(int i) {
            return new DistrictItem[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DistrictItem createFromParcel(Parcel parcel) {
            return m1024a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DistrictItem[] newArray(int i) {
            return m1025a(i);
        }
    };

    /* renamed from: a */
    public String f1452a;

    /* renamed from: b */
    public String f1453b;

    /* renamed from: c */
    public String f1454c;

    /* renamed from: d */
    public List<DPoint> f1455d;

    public DistrictItem() {
        this.f1452a = "";
        this.f1453b = null;
        this.f1454c = null;
        this.f1455d = null;
    }

    public DistrictItem(Parcel parcel) {
        this.f1452a = "";
        this.f1453b = null;
        this.f1454c = null;
        this.f1455d = null;
        this.f1452a = parcel.readString();
        this.f1453b = parcel.readString();
        this.f1454c = parcel.readString();
        this.f1455d = parcel.createTypedArrayList(DPoint.CREATOR);
    }

    public static Parcelable.Creator<DistrictItem> getCreator() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdcode() {
        return this.f1454c;
    }

    public String getCitycode() {
        return this.f1453b;
    }

    public String getDistrictName() {
        return this.f1452a;
    }

    public List<DPoint> getPolyline() {
        return this.f1455d;
    }

    public void setAdcode(String str) {
        this.f1454c = str;
    }

    public void setCitycode(String str) {
        this.f1453b = str;
    }

    public void setDistrictName(String str) {
        this.f1452a = str;
    }

    public void setPolyline(List<DPoint> list) {
        this.f1455d = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1452a);
        parcel.writeString(this.f1453b);
        parcel.writeString(this.f1454c);
        parcel.writeTypedList(this.f1455d);
    }
}
