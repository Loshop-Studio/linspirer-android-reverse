package com.huawei.hem;

import android.os.Parcel;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;

/* compiled from: VersionedParcelParcel.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.huawei.hem.y */
/* loaded from: classes.dex */
public class VersionedParcelParcel extends VersionedParcel {

    /* renamed from: b */
    public final Parcel f4097b;

    /* renamed from: c */
    public final int f4098c;

    /* renamed from: d */
    public final int f4099d;

    /* renamed from: e */
    public final String f4100e;

    /* renamed from: g */
    public int f4102g;

    /* renamed from: a */
    public final SparseIntArray f4096a = new SparseIntArray();

    /* renamed from: f */
    public int f4101f = -1;

    public VersionedParcelParcel(Parcel parcel, int i, int i2, String str) {
        this.f4102g = 0;
        this.f4097b = parcel;
        this.f4098c = i;
        this.f4099d = i2;
        this.f4102g = i;
        this.f4100e = str;
    }

    @Override // com.huawei.hem.AbstractC1393x
    /* renamed from: a */
    public void mo2921a() {
        int i = this.f4101f;
        if (i >= 0) {
            int i2 = this.f4096a.get(i);
            int iDataPosition = this.f4097b.dataPosition();
            this.f4097b.setDataPosition(i2);
            this.f4097b.writeInt(iDataPosition - i2);
            this.f4097b.setDataPosition(iDataPosition);
        }
    }

    @Override // com.huawei.hem.AbstractC1393x
    /* renamed from: c */
    public boolean mo2922c(int i) {
        int iDataPosition;
        while (true) {
            int i2 = this.f4102g;
            if (i2 >= this.f4099d) {
                iDataPosition = -1;
                break;
            }
            this.f4097b.setDataPosition(i2);
            int i3 = this.f4097b.readInt();
            int i4 = this.f4097b.readInt();
            this.f4102g += i3;
            if (i4 == i) {
                iDataPosition = this.f4097b.dataPosition();
                break;
            }
        }
        if (iDataPosition == -1) {
            return false;
        }
        this.f4097b.setDataPosition(iDataPosition);
        return true;
    }

    @Override // com.huawei.hem.AbstractC1393x
    /* renamed from: f */
    public void mo2925f(int i) {
        mo2921a();
        this.f4101f = i;
        this.f4096a.put(i, this.f4097b.dataPosition());
        this.f4097b.writeInt(0);
        this.f4097b.writeInt(i);
    }
}
