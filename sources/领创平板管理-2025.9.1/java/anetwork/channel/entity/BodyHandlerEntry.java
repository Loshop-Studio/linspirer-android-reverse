package anetwork.channel.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import anet.channel.bytes.ByteArray;
import anet.channel.bytes.AwcnByteArrayPool;
import anet.channel.request.BodyEntry;
import anetwork.channel.IBodyHandler;
import anetwork.channel.aidl.ParcelableBodyHandler;
import anetwork.channel.aidl.adapter.ParcelableBodyHandlerWrapper;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class BodyHandlerEntry implements BodyEntry {
    public static final Parcelable.Creator<BodyHandlerEntry> CREATOR = new Parcelable.Creator<BodyHandlerEntry>() { // from class: anetwork.channel.entity.BodyHandlerEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodyHandlerEntry createFromParcel(Parcel parcel) {
            BodyHandlerEntry bodyHandlerEntry = new BodyHandlerEntry();
            bodyHandlerEntry.bodyHandler = ParcelableBodyHandler.Stub.asInterface(parcel.readStrongBinder());
            return bodyHandlerEntry;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodyHandlerEntry[] newArray(int i) {
            return new BodyHandlerEntry[i];
        }
    };
    public ParcelableBodyHandler bodyHandler;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // anet.channel.request.BodyEntry
    public String getContentType() {
        return null;
    }

    @Override // anet.channel.request.BodyEntry
    public int writeTo(OutputStream outputStream) throws IOException {
        try {
            ByteArray byteArrayM70a = AwcnByteArrayPool.a.f177a.m70a(2048);
            int i = 0;
            while (!this.bodyHandler.isCompleted()) {
                int i2 = this.bodyHandler.read(byteArrayM70a.getBuffer());
                outputStream.write(byteArrayM70a.getBuffer(), 0, i2);
                i += i2;
            }
            byteArrayM70a.recycle();
            return i;
        } catch (RemoteException e) {
            throw new IOException("RemoteException", e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongInterface(this.bodyHandler);
    }

    public BodyHandlerEntry(IBodyHandler iBodyHandler) {
        this.bodyHandler = null;
        this.bodyHandler = new ParcelableBodyHandlerWrapper(iBodyHandler);
    }

    public BodyHandlerEntry() {
        this.bodyHandler = null;
    }
}
