package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import anet.channel.util.ALog;
import anet.channel.util.ErrorConstant;
import anetwork.channel.Response;
import anetwork.channel.statist.StatisticData;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkResponse implements Parcelable, Response {
    public static final Parcelable.Creator<NetworkResponse> CREATOR = new C0439c();

    /* renamed from: a */
    public int f616a;

    /* renamed from: b */
    public byte[] f617b;

    /* renamed from: c */
    public String f618c;

    /* renamed from: d */
    public Map<String, List<String>> f619d;

    /* renamed from: e */
    public Throwable f620e;

    /* renamed from: f */
    public StatisticData f621f;

    public NetworkResponse() {
    }

    public static NetworkResponse readFromParcel(Parcel parcel) {
        NetworkResponse networkResponse = new NetworkResponse();
        try {
            networkResponse.f616a = parcel.readInt();
            networkResponse.f618c = parcel.readString();
            int i = parcel.readInt();
            if (i > 0) {
                byte[] bArr = new byte[i];
                networkResponse.f617b = bArr;
                parcel.readByteArray(bArr);
            }
            networkResponse.f619d = parcel.readHashMap(NetworkResponse.class.getClassLoader());
            try {
                networkResponse.f621f = (StatisticData) parcel.readSerializable();
            } catch (Throwable unused) {
                ALog.m340i("anet.NetworkResponse", "[readFromParcel] source.readSerializable() error", null, new Object[0]);
            }
        } catch (Exception e) {
            ALog.m341w("anet.NetworkResponse", "[readFromParcel]", null, e, new Object[0]);
        }
        return networkResponse;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // anetwork.channel.Response
    public byte[] getBytedata() {
        return this.f617b;
    }

    @Override // anetwork.channel.Response
    public Map<String, List<String>> getConnHeadFields() {
        return this.f619d;
    }

    @Override // anetwork.channel.Response
    public String getDesc() {
        return this.f618c;
    }

    @Override // anetwork.channel.Response
    public Throwable getError() {
        return this.f620e;
    }

    @Override // anetwork.channel.Response
    public StatisticData getStatisticData() {
        return this.f621f;
    }

    @Override // anetwork.channel.Response
    public int getStatusCode() {
        return this.f616a;
    }

    public void setBytedata(byte[] bArr) {
        this.f617b = bArr;
    }

    public void setConnHeadFields(Map<String, List<String>> map) {
        this.f619d = map;
    }

    public void setDesc(String str) {
        this.f618c = str;
    }

    public void setError(Throwable th) {
        this.f620e = th;
    }

    public void setStatisticData(StatisticData statisticData) {
        this.f621f = statisticData;
    }

    public void setStatusCode(int i) {
        this.f616a = i;
        this.f618c = ErrorConstant.getErrMsg(i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkResponse [");
        sb.append("statusCode=");
        sb.append(this.f616a);
        sb.append(", desc=");
        sb.append(this.f618c);
        sb.append(", connHeadFields=");
        sb.append(this.f619d);
        sb.append(", bytedata=");
        sb.append(this.f617b != null ? new String(this.f617b) : "");
        sb.append(", error=");
        sb.append(this.f620e);
        sb.append(", statisticData=");
        sb.append(this.f621f);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f616a);
        parcel.writeString(this.f618c);
        byte[] bArr = this.f617b;
        int length = bArr != null ? bArr.length : 0;
        parcel.writeInt(length);
        if (length > 0) {
            parcel.writeByteArray(this.f617b);
        }
        parcel.writeMap(this.f619d);
        StatisticData statisticData = this.f621f;
        if (statisticData != null) {
            parcel.writeSerializable(statisticData);
        }
    }

    public NetworkResponse(int i) {
        this.f616a = i;
        this.f618c = ErrorConstant.getErrMsg(i);
    }
}
