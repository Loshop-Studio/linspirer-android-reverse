package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.e */
/* loaded from: classes.dex */
public final class NetworkRequestParcelCreator implements Parcelable.Creator<ParcelableRequest> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ParcelableRequest createFromParcel(Parcel parcel) {
        return ParcelableRequest.readFromParcel(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ParcelableRequest[] newArray(int i) {
        return new ParcelableRequest[i];
    }
}
