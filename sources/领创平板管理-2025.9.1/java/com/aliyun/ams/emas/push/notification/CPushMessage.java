package com.aliyun.ams.emas.push.notification;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hem.CPushMessageParcelCreator;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class CPushMessage implements Parcelable {
    public static final Parcelable.Creator<CPushMessage> CREATOR = new CPushMessageParcelCreator();

    /* renamed from: a */
    public String f1447a;

    /* renamed from: b */
    public String f1448b;

    /* renamed from: c */
    public String f1449c;

    /* renamed from: d */
    public String f1450d;

    /* renamed from: e */
    public String f1451e;

    public CPushMessage() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1448b);
        parcel.writeString(this.f1447a);
        parcel.writeString(this.f1449c);
        parcel.writeString(this.f1450d);
        parcel.writeString(this.f1451e);
    }

    public CPushMessage(Parcel parcel, CPushMessageParcelCreator c1394x0) {
        this.f1448b = parcel.readString();
        this.f1447a = parcel.readString();
        this.f1449c = parcel.readString();
        this.f1450d = parcel.readString();
        this.f1451e = parcel.readString();
    }
}
