package com.huawei.hem;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hem.IFileDownloadIPCCallback;
import com.liulishuo.filedownloader.model.FileDownloadHeader;

/* compiled from: IFileDownloadIPCService.java */
/* renamed from: com.huawei.hem.gg */
/* loaded from: classes.dex */
public interface IFileDownloadIPCService extends IInterface {

    /* compiled from: IFileDownloadIPCService.java */
    /* renamed from: com.huawei.hem.gg$a */
    public static abstract class a extends Binder implements IFileDownloadIPCService {

        /* compiled from: IFileDownloadIPCService.java */
        /* renamed from: com.huawei.hem.gg$a$a, reason: collision with other inner class name */
        public static class C2074a implements IFileDownloadIPCService {

            /* renamed from: a */
            public IBinder f2774a;

            public C2074a(IBinder iBinder) {
                this.f2774a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: C1 */
            public long mo1858C1(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: K1 */
            public void mo1859K1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    this.f2774a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: P2 */
            public void mo1860P2(int i, Notification notification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f2774a.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: V0 */
            public void mo1861V0(IFileDownloadIPCCallback interfaceC0958fg) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeStrongBinder(interfaceC0958fg != null ? interfaceC0958fg.asBinder() : null);
                    this.f2774a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: a0 */
            public long mo1862a0(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2774a;
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: b */
            public byte mo1863b(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readByte();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: b1 */
            public boolean mo1864b1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    this.f2774a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: c2 */
            public boolean mo1865c2(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f2774a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: d */
            public void mo1866d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    int i4 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (fileDownloadHeader != null) {
                        parcelObtain.writeInt(1);
                        fileDownloadHeader.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z3) {
                        i4 = 0;
                    }
                    parcelObtain.writeInt(i4);
                    this.f2774a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: g */
            public void mo1867g(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2774a.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: l3 */
            public void mo1868l3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    this.f2774a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: n */
            public boolean mo1869n(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: q0 */
            public void mo1870q0(IFileDownloadIPCCallback interfaceC0958fg) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeStrongBinder(interfaceC0958fg != null ? interfaceC0958fg.asBinder() : null);
                    this.f2774a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: q2 */
            public boolean mo1871q2(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0984gg
            /* renamed from: t */
            public boolean mo1872t(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    parcelObtain.writeInt(i);
                    this.f2774a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCService");
        }

        /* renamed from: v3 */
        public static IFileDownloadIPCService m1873v3(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFileDownloadIPCService)) ? new C2074a(iBinder) : (IFileDownloadIPCService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1870q0(IFileDownloadIPCCallback.a.m1816J(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1861V0(IFileDownloadIPCCallback.a.m1816J(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean zMo1865c2 = mo1865c2(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1865c2 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1866d(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0 ? FileDownloadHeader.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean zMo1869n = mo1869n(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1869n ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1868l3();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean zMo1871q2 = mo1871q2(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1871q2 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long jMo1858C1 = mo1858C1(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jMo1858C1);
                    return true;
                case 9:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long jMo1862a0 = mo1862a0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jMo1862a0);
                    return true;
                case 10:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    byte bMo1863b = mo1863b(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByte(bMo1863b);
                    return true;
                case 11:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean zMo1864b1 = mo1864b1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1864b1 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1860P2(parcel.readInt(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 13:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1867g(parcel.readInt() != 0);
                    return true;
                case 14:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean zMo1872t = mo1872t(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1872t ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo1859K1();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: C1 */
    long mo1858C1(int i);

    /* renamed from: K1 */
    void mo1859K1();

    /* renamed from: P2 */
    void mo1860P2(int i, Notification notification);

    /* renamed from: V0 */
    void mo1861V0(IFileDownloadIPCCallback interfaceC0958fg);

    /* renamed from: a0 */
    long mo1862a0(int i);

    /* renamed from: b */
    byte mo1863b(int i);

    /* renamed from: b1 */
    boolean mo1864b1();

    /* renamed from: c2 */
    boolean mo1865c2(String str, String str2);

    /* renamed from: d */
    void mo1866d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3);

    /* renamed from: g */
    void mo1867g(boolean z);

    /* renamed from: l3 */
    void mo1868l3();

    /* renamed from: n */
    boolean mo1869n(int i);

    /* renamed from: q0 */
    void mo1870q0(IFileDownloadIPCCallback interfaceC0958fg);

    /* renamed from: q2 */
    boolean mo1871q2(int i);

    /* renamed from: t */
    boolean mo1872t(int i);
}
