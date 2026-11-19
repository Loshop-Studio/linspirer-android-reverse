package cn.com.microtrust.firewall.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AFWRes implements Parcelable {
    public static final Parcelable.Creator<AFWRes> CREATOR = new C0475a();

    /* renamed from: a */
    public boolean f809a;

    /* renamed from: b */
    public List<String> f810b;

    /* renamed from: cn.com.microtrust.firewall.aidl.AFWRes$a */
    public static class C0475a implements Parcelable.Creator<AFWRes> {
        @Override // android.os.Parcelable.Creator
        public AFWRes createFromParcel(Parcel parcel) {
            return new AFWRes(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public AFWRes[] newArray(int i) {
            return new AFWRes[i];
        }
    }

    public AFWRes() {
        this.f810b = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f810b);
        if (this.f809a) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
    }

    public AFWRes(Parcel parcel, C0475a c0475a) {
        ArrayList arrayList = new ArrayList();
        this.f810b = arrayList;
        parcel.readStringList(arrayList);
        if (parcel.readInt() == 1) {
            this.f809a = true;
        } else {
            this.f809a = false;
        }
    }
}
