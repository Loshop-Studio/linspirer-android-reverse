package anetwork.channel.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import anetwork.channel.aidl.Connection;
import anetwork.channel.aidl.ParcelableFuture;
import anetwork.channel.aidl.ParcelableNetworkListener;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public interface RemoteNetwork extends IInterface {

    /* compiled from: Taobao */
    public static abstract class Stub extends Binder implements RemoteNetwork {
        public static final String DESCRIPTOR = "anetwork.channel.aidl.RemoteNetwork";
        public static final int TRANSACTION_asyncSend = 2;
        public static final int TRANSACTION_getConnection = 3;
        public static final int TRANSACTION_syncSend = 1;

        /* compiled from: Taobao */
        public static class Proxy implements RemoteNetwork {

            /* renamed from: a */
            public IBinder f630a;

            public Proxy(IBinder iBinder) {
                this.f630a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f630a;
            }

            @Override // anetwork.channel.aidl.RemoteNetwork
            public ParcelableFuture asyncSend(ParcelableRequest parcelableRequest, ParcelableNetworkListener parcelableNetworkListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelableRequest != null) {
                        parcelObtain.writeInt(1);
                        parcelableRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(parcelableNetworkListener != null ? parcelableNetworkListener.asBinder() : null);
                    this.f630a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ParcelableFuture.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.RemoteNetwork
            public Connection getConnection(ParcelableRequest parcelableRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelableRequest != null) {
                        parcelObtain.writeInt(1);
                        parcelableRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f630a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return Connection.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.RemoteNetwork
            public NetworkResponse syncSend(ParcelableRequest parcelableRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelableRequest != null) {
                        parcelObtain.writeInt(1);
                        parcelableRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f630a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static RemoteNetwork asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof RemoteNetwork)) ? new Proxy(iBinder) : (RemoteNetwork) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                NetworkResponse networkResponseSyncSend = syncSend(parcel.readInt() != 0 ? ParcelableRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (networkResponseSyncSend != null) {
                    parcel2.writeInt(1);
                    networkResponseSyncSend.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                ParcelableFuture parcelableFutureAsyncSend = asyncSend(parcel.readInt() != 0 ? ParcelableRequest.CREATOR.createFromParcel(parcel) : null, ParcelableNetworkListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeStrongBinder(parcelableFutureAsyncSend != null ? parcelableFutureAsyncSend.asBinder() : null);
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            Connection connection = getConnection(parcel.readInt() != 0 ? ParcelableRequest.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeStrongBinder(connection != null ? connection.asBinder() : null);
            return true;
        }
    }

    ParcelableFuture asyncSend(ParcelableRequest parcelableRequest, ParcelableNetworkListener parcelableNetworkListener);

    Connection getConnection(ParcelableRequest parcelableRequest);

    NetworkResponse syncSend(ParcelableRequest parcelableRequest);
}
