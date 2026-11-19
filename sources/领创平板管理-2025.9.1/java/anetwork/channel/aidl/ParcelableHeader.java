package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import anet.channel.util.ALog;
import com.huawei.hem.CompilerOutline;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ParcelableHeader implements Parcelable {
    public static Parcelable.Creator<ParcelableHeader> CREATOR = new NetworkHeaderParcelCreator();
    public Map<String, List<String>> header;
    public int responseCode;

    public ParcelableHeader(int i, Map<String, List<String>> map) {
        this.header = map;
        this.responseCode = i;
    }

    /* renamed from: a */
    public static ParcelableHeader m368a(Parcel parcel) {
        ParcelableHeader parcelableHeader = new ParcelableHeader();
        try {
            if (parcel.readInt() == 1) {
                parcelableHeader.header = parcel.readHashMap(ParcelableHeader.class.getClassLoader());
            }
            parcelableHeader.responseCode = parcel.readInt();
        } catch (Throwable th) {
            ALog.m338e("anet.ParcelableHeader", "[readFromParcel]", null, th, new Object[0]);
        }
        return parcelableHeader;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map<String, List<String>> getHeader() {
        return this.header;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("ParcelableResponseHeader [responseCode=");
        sbM1765j.append(this.responseCode);
        sbM1765j.append(", header=");
        sbM1765j.append(this.header);
        sbM1765j.append("]");
        return sbM1765j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.header != null) {
            parcel.writeInt(1);
            parcel.writeMap(this.header);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.responseCode);
    }

    public ParcelableHeader() {
    }
}
