package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IUrlCtrlTools.java */
/* renamed from: com.huawei.hem.g6 */
/* loaded from: classes.dex */
public interface IUrlCtrlTools extends IInterface {

    /* compiled from: IUrlCtrlTools.java */
    /* renamed from: com.huawei.hem.g6$a */
    public static abstract class a extends Binder implements IUrlCtrlTools {

        /* compiled from: IUrlCtrlTools.java */
        /* renamed from: com.huawei.hem.g6$a$a, reason: collision with other inner class name */
        public static class C2073a implements IUrlCtrlTools {

            /* renamed from: a */
            public IBinder f2746a;

            public C2073a(IBinder iBinder) {
                this.f2746a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: J2 */
            public void mo1845J2(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeStringArray(strArr);
                    this.f2746a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: T1 */
            public void mo1846T1(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2746a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: Y0 */
            public void mo1847Y0(boolean z, String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    int i = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    if (!z2) {
                        i = 0;
                    }
                    parcelObtain.writeInt(i);
                    this.f2746a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: Z0 */
            public void mo1848Z0(int i, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2746a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2746a;
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: g2 */
            public void mo1849g2(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeStringArray(strArr);
                    this.f2746a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: k2 */
            public void mo1850k2(int i, boolean z, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeInt(i);
                    int i2 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.f2746a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: p1 */
            public void mo1851p1(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeLong(j);
                    this.f2746a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: r */
            public void mo1852r(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2746a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0974g6
            /* renamed from: y */
            public String[] mo1853y(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.url_control_tool.IUrlCtrlTools");
                    parcelObtain.writeInt(i);
                    this.f2746a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static IUrlCtrlTools m1854J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.url_control_tool.IUrlCtrlTools");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUrlCtrlTools)) ? new C2073a(iBinder) : (IUrlCtrlTools) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: J2 */
    void mo1845J2(String[] strArr);

    /* renamed from: T1 */
    void mo1846T1(String str, boolean z);

    /* renamed from: Y0 */
    void mo1847Y0(boolean z, String str, boolean z2);

    /* renamed from: Z0 */
    void mo1848Z0(int i, boolean z);

    /* renamed from: g2 */
    void mo1849g2(String[] strArr);

    /* renamed from: k2 */
    void mo1850k2(int i, boolean z, boolean z2);

    /* renamed from: p1 */
    void mo1851p1(long j);

    /* renamed from: r */
    void mo1852r(String str, boolean z);

    /* renamed from: y */
    String[] mo1853y(int i);
}
