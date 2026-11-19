package anetwork.channel.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ErrorConstant;
import anetwork.channel.NetworkEvent;
import anetwork.channel.statist.StatisticData;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class DefaultFinishEvent implements Parcelable, NetworkEvent.FinishEvent {
    public static final Parcelable.Creator<DefaultFinishEvent> CREATOR = new C0431a();

    /* renamed from: a */
    public Object f605a;

    /* renamed from: b */
    public int f606b;

    /* renamed from: c */
    public String f607c;

    /* renamed from: d */
    public StatisticData f608d;
    public final Request request;

    /* renamed from: rs */
    public final RequestStatistic f609rs;

    public DefaultFinishEvent(int i) {
        this(i, null, null, null);
    }

    /* renamed from: a */
    public static DefaultFinishEvent m365a(Parcel parcel) {
        DefaultFinishEvent defaultFinishEvent = new DefaultFinishEvent(0);
        try {
            defaultFinishEvent.f606b = parcel.readInt();
            defaultFinishEvent.f607c = parcel.readString();
            defaultFinishEvent.f608d = (StatisticData) parcel.readSerializable();
        } catch (Throwable unused) {
        }
        return defaultFinishEvent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object getContext() {
        return this.f605a;
    }

    @Override // anetwork.channel.NetworkEvent.FinishEvent
    public String getDesc() {
        return this.f607c;
    }

    @Override // anetwork.channel.NetworkEvent.FinishEvent
    public int getHttpCode() {
        return this.f606b;
    }

    @Override // anetwork.channel.NetworkEvent.FinishEvent
    public StatisticData getStatisticData() {
        return this.f608d;
    }

    public void setContext(Object obj) {
        this.f605a = obj;
    }

    public String toString() {
        return "DefaultFinishEvent [code=" + this.f606b + ", desc=" + this.f607c + ", context=" + this.f605a + ", statisticData=" + this.f608d + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f606b);
        parcel.writeString(this.f607c);
        StatisticData statisticData = this.f608d;
        if (statisticData != null) {
            parcel.writeSerializable(statisticData);
        }
    }

    public DefaultFinishEvent(int i, String str, RequestStatistic requestStatistic) {
        this(i, str, null, requestStatistic);
    }

    public DefaultFinishEvent(int i, String str, Request request) {
        this(i, str, request, request != null ? request.f328a : null);
    }

    public DefaultFinishEvent(int i, String str, Request request, RequestStatistic requestStatistic) {
        this.f608d = new StatisticData();
        this.f606b = i;
        this.f607c = str == null ? ErrorConstant.getErrMsg(i) : str;
        this.request = request;
        this.f609rs = requestStatistic;
    }
}
