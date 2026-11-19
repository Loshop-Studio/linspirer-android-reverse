package com.amap.api.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DPoint implements Parcelable {
    public static final Parcelable.Creator<DPoint> CREATOR = new Parcelable.Creator<DPoint>() { // from class: com.amap.api.location.DPoint.1
        /* renamed from: a */
        public static DPoint m1064a(Parcel parcel) {
            return new DPoint(parcel);
        }

        /* renamed from: a */
        public static DPoint[] m1065a(int i) {
            return new DPoint[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DPoint createFromParcel(Parcel parcel) {
            return m1064a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DPoint[] newArray(int i) {
            return m1065a(i);
        }
    };

    /* renamed from: a */
    public double f1583a;

    /* renamed from: b */
    public double f1584b;

    public DPoint() {
        this.f1583a = 0.0d;
        this.f1584b = 0.0d;
    }

    public DPoint(double d, double d2) {
        this.f1583a = 0.0d;
        this.f1584b = 0.0d;
        d2 = d2 > 180.0d ? 180.0d : d2;
        d2 = d2 < -180.0d ? -180.0d : d2;
        d = d > 90.0d ? 90.0d : d;
        d = d < -90.0d ? -90.0d : d;
        this.f1583a = d2;
        this.f1584b = d;
    }

    public DPoint(Parcel parcel) {
        this.f1583a = 0.0d;
        this.f1584b = 0.0d;
        this.f1583a = parcel.readDouble();
        this.f1584b = parcel.readDouble();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DPoint)) {
            return false;
        }
        DPoint dPoint = (DPoint) obj;
        return this.f1584b == dPoint.f1584b && this.f1583a == dPoint.f1583a;
    }

    public double getLatitude() {
        return this.f1584b;
    }

    public double getLongitude() {
        return this.f1583a;
    }

    public int hashCode() {
        return Double.valueOf((this.f1584b + this.f1583a) * 1000000.0d).intValue();
    }

    public void setLatitude(double d) {
        if (d > 90.0d) {
            d = 90.0d;
        }
        if (d < -90.0d) {
            d = -90.0d;
        }
        this.f1584b = d;
    }

    public void setLongitude(double d) {
        if (d > 180.0d) {
            d = 180.0d;
        }
        if (d < -180.0d) {
            d = -180.0d;
        }
        this.f1583a = d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.f1583a);
        parcel.writeDouble(this.f1584b);
    }
}
