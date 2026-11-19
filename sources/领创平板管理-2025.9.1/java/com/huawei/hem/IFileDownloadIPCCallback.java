package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;

/* compiled from: IFileDownloadIPCCallback.java */
/* renamed from: com.huawei.hem.fg */
/* loaded from: classes.dex */
public interface IFileDownloadIPCCallback extends IInterface {

    /* compiled from: IFileDownloadIPCCallback.java */
    /* renamed from: com.huawei.hem.fg$a */
    public static abstract class a extends Binder implements IFileDownloadIPCCallback {

        /* compiled from: IFileDownloadIPCCallback.java */
        /* renamed from: com.huawei.hem.fg$a$a, reason: collision with other inner class name */
        public static class C2072a implements IFileDownloadIPCCallback {

            /* renamed from: a */
            public IBinder f2659a;

            public C2072a(IBinder iBinder) {
                this.f2659a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2659a;
            }

            @Override // com.huawei.hem.InterfaceC0958fg
            /* renamed from: u0 */
            public void mo1815u0(MessageSnapshot messageSnapshot) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    if (messageSnapshot != null) {
                        parcelObtain.writeInt(1);
                        messageSnapshot.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f2659a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
        }

        /* renamed from: J */
        public static IFileDownloadIPCCallback m1816J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFileDownloadIPCCallback)) ? new C2072a(iBinder) : (IFileDownloadIPCCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                mo1815u0(parcel.readInt() != 0 ? MessageSnapshot.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
            return true;
        }
    }

    /* renamed from: u0 */
    void mo1815u0(MessageSnapshot messageSnapshot);
}
