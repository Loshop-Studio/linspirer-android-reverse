package anet.channel.request;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: Taobao */
/* renamed from: anet.channel.request.a */
/* loaded from: classes.dex */
public final class C0367a implements Parcelable.Creator<ByteArrayEntry> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ByteArrayEntry createFromParcel(Parcel parcel) {
        ByteArrayEntry byteArrayEntry = new ByteArrayEntry((C0367a) null);
        byteArrayEntry.bytes = new byte[parcel.readInt()];
        parcel.readByteArray(byteArrayEntry.bytes);
        byteArrayEntry.offset = parcel.readInt();
        byteArrayEntry.count = parcel.readInt();
        byteArrayEntry.contentType = parcel.readString();
        return byteArrayEntry;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ByteArrayEntry[] newArray(int i) {
        return new ByteArrayEntry[i];
    }
}
