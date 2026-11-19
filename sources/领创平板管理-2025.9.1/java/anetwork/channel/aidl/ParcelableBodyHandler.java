package anetwork.channel.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public interface ParcelableBodyHandler extends IInterface {

    /* compiled from: Taobao */
    public static abstract class Stub extends Binder implements ParcelableBodyHandler {
        public static final String DESCRIPTOR = "anetwork.channel.aidl.ParcelableBodyHandler";
        public static final int TRANSACTION_isCompleted = 2;
        public static final int TRANSACTION_read = 1;

        /* compiled from: Taobao */
        public static class Proxy implements ParcelableBodyHandler {

            /* renamed from: a */
            public IBinder f626a;

            public Proxy(IBinder iBinder) {
                this.f626a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f626a;
            }

            @Override // anetwork.channel.aidl.ParcelableBodyHandler
            public boolean isCompleted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f626a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.ParcelableBodyHandler
            public int read(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.f626a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i = parcelObtain2.readInt();
                    parcelObtain2.readByteArray(bArr);
                    return i;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ParcelableBodyHandler asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ParcelableBodyHandler)) ? new Proxy(iBinder) : (ParcelableBodyHandler) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                byte[] bArrCreateByteArray = parcel.createByteArray();
                int i3 = read(bArrCreateByteArray);
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                parcel2.writeByteArray(bArrCreateByteArray);
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zIsCompleted = isCompleted();
            parcel2.writeNoException();
            parcel2.writeInt(zIsCompleted ? 1 : 0);
            return true;
        }
    }

    boolean isCompleted();

    int read(byte[] bArr);
}
