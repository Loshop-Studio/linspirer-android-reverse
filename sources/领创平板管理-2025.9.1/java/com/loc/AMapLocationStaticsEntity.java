package com.loc;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: AMapLocationStaticsEntity.java */
/* renamed from: com.loc.do */
/* loaded from: classes.dex */
public final class AMapLocationStaticsEntity implements Parcelable {
    public static final Parcelable.Creator<AMapLocationStaticsEntity> CREATOR = new Parcelable.Creator<AMapLocationStaticsEntity>() { // from class: com.loc.do.1
        /* renamed from: a */
        public static AMapLocationStaticsEntity m4596a(Parcel parcel) {
            AMapLocationStaticsEntity c1806do = new AMapLocationStaticsEntity();
            c1806do.m4586c(parcel.readString());
            c1806do.m4589d(parcel.readString());
            c1806do.m4591e(parcel.readString());
            c1806do.m4593f(parcel.readString());
            c1806do.m4583b(parcel.readString());
            c1806do.m4585c(parcel.readLong());
            c1806do.m4588d(parcel.readLong());
            c1806do.m4579a(parcel.readLong());
            c1806do.m4582b(parcel.readLong());
            c1806do.m4580a(parcel.readString());
            return c1806do;
        }

        /* renamed from: a */
        public static AMapLocationStaticsEntity[] m4597a(int i) {
            return new AMapLocationStaticsEntity[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocationStaticsEntity createFromParcel(Parcel parcel) {
            return m4596a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AMapLocationStaticsEntity[] newArray(int i) {
            return m4597a(i);
        }
    };

    /* renamed from: e */
    public String f5346e;

    /* renamed from: f */
    public String f5347f;

    /* renamed from: a */
    public long f5342a = 0;

    /* renamed from: b */
    public long f5343b = 0;

    /* renamed from: c */
    public long f5344c = 0;

    /* renamed from: d */
    public long f5345d = 0;

    /* renamed from: g */
    public String f5348g = "first";

    /* renamed from: h */
    public String f5349h = "";

    /* renamed from: i */
    public String f5350i = "";

    /* renamed from: j */
    public String f5351j = null;

    /* renamed from: a */
    public final long m4578a() {
        long j = this.f5345d;
        long j2 = this.f5344c;
        if (j - j2 <= 0) {
            return 0L;
        }
        return j - j2;
    }

    /* renamed from: a */
    public final void m4579a(long j) {
        this.f5344c = j;
    }

    /* renamed from: a */
    public final void m4580a(String str) {
        this.f5350i = str;
    }

    /* renamed from: b */
    public final String m4581b() {
        return this.f5350i;
    }

    /* renamed from: b */
    public final void m4582b(long j) {
        this.f5345d = j;
    }

    /* renamed from: b */
    public final void m4583b(String str) {
        this.f5351j = str;
    }

    /* renamed from: c */
    public final String m4584c() {
        return this.f5351j;
    }

    /* renamed from: c */
    public final void m4585c(long j) {
        this.f5342a = j;
    }

    /* renamed from: c */
    public final void m4586c(String str) {
        this.f5346e = str;
    }

    /* renamed from: d */
    public final String m4587d() {
        return this.f5346e;
    }

    /* renamed from: d */
    public final void m4588d(long j) {
        this.f5343b = j;
    }

    /* renamed from: d */
    public final void m4589d(String str) {
        this.f5347f = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final String m4590e() {
        return this.f5347f;
    }

    /* renamed from: e */
    public final void m4591e(String str) {
        this.f5348g = str;
    }

    /* renamed from: f */
    public final String m4592f() {
        return this.f5348g;
    }

    /* renamed from: f */
    public final void m4593f(String str) {
        this.f5349h = str;
    }

    /* renamed from: g */
    public final String m4594g() {
        return this.f5349h;
    }

    /* renamed from: h */
    public final long m4595h() {
        long j = this.f5343b;
        long j2 = this.f5342a;
        if (j <= j2) {
            return 0L;
        }
        return j - j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        try {
            parcel.writeString(this.f5346e);
            parcel.writeString(this.f5347f);
            parcel.writeString(this.f5348g);
            parcel.writeString(this.f5349h);
            parcel.writeString(this.f5351j);
            parcel.writeLong(this.f5342a);
            parcel.writeLong(this.f5343b);
            parcel.writeLong(this.f5344c);
            parcel.writeLong(this.f5345d);
            parcel.writeString(this.f5350i);
        } catch (Throwable unused) {
        }
    }
}
