package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.d */
/* loaded from: classes.dex */
public final class NetworkHeaderParcelCreator implements Parcelable.Creator<ParcelableHeader> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ParcelableHeader createFromParcel(Parcel parcel) {
        return ParcelableHeader.m368a(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ParcelableHeader[] newArray(int i) {
        return new ParcelableHeader[i];
    }
}
