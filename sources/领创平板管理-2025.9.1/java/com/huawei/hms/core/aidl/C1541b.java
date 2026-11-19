package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: DataBuffer.java */
/* renamed from: com.huawei.hms.core.aidl.b */
/* loaded from: classes.dex */
public class C1541b implements Parcelable {
    public static final Parcelable.Creator<C1541b> CREATOR = new a();

    /* renamed from: a */
    public String f4526a;

    /* renamed from: b */
    public Bundle f4527b;

    /* renamed from: c */
    public int f4528c;

    /* renamed from: d */
    public Bundle f4529d;

    /* compiled from: DataBuffer.java */
    /* renamed from: com.huawei.hms.core.aidl.b$a */
    public static class a implements Parcelable.Creator<C1541b> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public C1541b createFromParcel(Parcel parcel) {
            return new C1541b(parcel, (a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public C1541b[] newArray(int i) {
            return new C1541b[i];
        }
    }

    public /* synthetic */ C1541b(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static ClassLoader m3387a(Class cls) {
        return cls.getClassLoader();
    }

    /* renamed from: b */
    public int m3391b() {
        return this.f4529d == null ? 0 : 1;
    }

    /* renamed from: c */
    public int m3392c() {
        return this.f4528c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4528c);
        parcel.writeString(this.f4526a);
        parcel.writeBundle(this.f4527b);
        parcel.writeBundle(this.f4529d);
    }

    public C1541b(Parcel parcel) {
        this.f4527b = null;
        this.f4528c = 1;
        this.f4529d = null;
        m3388a(parcel);
    }

    /* renamed from: a */
    public C1541b m3390a(Bundle bundle) {
        this.f4529d = bundle;
        return this;
    }

    /* renamed from: a */
    public Bundle m3389a() {
        return this.f4529d;
    }

    /* renamed from: a */
    private void m3388a(Parcel parcel) {
        this.f4528c = parcel.readInt();
        this.f4526a = parcel.readString();
        this.f4527b = parcel.readBundle(m3387a(Bundle.class));
        this.f4529d = parcel.readBundle(m3387a(Bundle.class));
    }

    public C1541b() {
        this.f4527b = null;
        this.f4528c = 1;
        this.f4529d = null;
    }

    public C1541b(String str, int i) {
        this.f4527b = null;
        this.f4528c = 1;
        this.f4529d = null;
        this.f4526a = str;
        this.f4528c = i;
    }
}
