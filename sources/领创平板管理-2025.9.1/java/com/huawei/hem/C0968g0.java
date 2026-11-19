package com.huawei.hem;

import android.os.IBinder;
import android.os.Parcel;

/* renamed from: com.huawei.hem.g0 */
/* loaded from: classes.dex */
public final class C0968g0 implements InterfaceC0916e0 {

    /* renamed from: a */
    public IBinder f2718a;

    public C0968g0(IBinder iBinder) {
        this.f2718a = iBinder;
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: Q1 */
    public final void mo1626Q1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(54, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: Z */
    public final void mo1627Z() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(48, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2718a;
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: f */
    public final void mo1628f() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(52, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: g3 */
    public final void mo1629g3() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(47, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: h */
    public final void mo1630h() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(44, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: j */
    public final void mo1631j() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(53, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: m */
    public final void mo1632m() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(49, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: p */
    public final void mo1633p() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(50, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0916e0
    /* renamed from: q */
    public final void mo1634q() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.customee.ICustomif");
            this.f2718a.transact(51, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
