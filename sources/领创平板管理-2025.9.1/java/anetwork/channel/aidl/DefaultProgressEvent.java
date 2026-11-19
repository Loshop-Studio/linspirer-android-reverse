package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import anetwork.channel.NetworkEvent;
import com.huawei.hem.CompilerOutline;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class DefaultProgressEvent implements Parcelable, NetworkEvent.ProgressEvent {
    public static final Parcelable.Creator<DefaultProgressEvent> CREATOR = new ProgressEventParcelCreator();

    /* renamed from: a */
    public int f610a;

    /* renamed from: b */
    public int f611b;

    /* renamed from: c */
    public int f612c;

    /* renamed from: d */
    public Object f613d;

    /* renamed from: e */
    public byte[] f614e;

    public DefaultProgressEvent() {
    }

    public static DefaultProgressEvent readFromParcel(Parcel parcel) {
        DefaultProgressEvent defaultProgressEvent = new DefaultProgressEvent();
        try {
            defaultProgressEvent.f610a = parcel.readInt();
            defaultProgressEvent.f611b = parcel.readInt();
            defaultProgressEvent.f612c = parcel.readInt();
            int i = parcel.readInt();
            if (i > 0) {
                byte[] bArr = new byte[i];
                parcel.readByteArray(bArr);
                defaultProgressEvent.f614e = bArr;
            }
        } catch (Exception unused) {
        }
        return defaultProgressEvent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // anetwork.channel.NetworkEvent.ProgressEvent
    public byte[] getBytedata() {
        return this.f614e;
    }

    public Object getContext() {
        return this.f613d;
    }

    @Override // anetwork.channel.NetworkEvent.ProgressEvent
    public String getDesc() {
        return "";
    }

    @Override // anetwork.channel.NetworkEvent.ProgressEvent
    public int getIndex() {
        return this.f610a;
    }

    @Override // anetwork.channel.NetworkEvent.ProgressEvent
    public int getSize() {
        return this.f611b;
    }

    @Override // anetwork.channel.NetworkEvent.ProgressEvent
    public int getTotal() {
        return this.f612c;
    }

    public void setContext(Object obj) {
        this.f613d = obj;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("DefaultProgressEvent [index=");
        sbM1765j.append(this.f610a);
        sbM1765j.append(", size=");
        sbM1765j.append(this.f611b);
        sbM1765j.append(", total=");
        sbM1765j.append(this.f612c);
        sbM1765j.append("]");
        return sbM1765j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f610a);
        parcel.writeInt(this.f611b);
        parcel.writeInt(this.f612c);
        byte[] bArr = this.f614e;
        parcel.writeInt(bArr != null ? bArr.length : 0);
        parcel.writeByteArray(this.f614e);
    }

    public DefaultProgressEvent(int i, int i2, int i3, byte[] bArr) {
        this.f610a = i;
        this.f611b = i2;
        this.f612c = i3;
        this.f614e = bArr;
    }
}
