package anetwork.channel.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import anetwork.channel.aidl.RemoteNetwork;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public interface IRemoteNetworkGetter extends IInterface {

    /* compiled from: Taobao */
    public static abstract class Stub extends Binder implements IRemoteNetworkGetter {
        public static final String DESCRIPTOR = "anetwork.channel.aidl.IRemoteNetworkGetter";
        public static final int TRANSACTION_get = 1;

        /* compiled from: Taobao */
        public static class Proxy implements IRemoteNetworkGetter {

            /* renamed from: a */
            public IBinder f615a;

            public Proxy(IBinder iBinder) {
                this.f615a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f615a;
            }

            @Override // anetwork.channel.aidl.IRemoteNetworkGetter
            public RemoteNetwork get(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.f615a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return RemoteNetwork.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteNetworkGetter asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteNetworkGetter)) ? new Proxy(iBinder) : (IRemoteNetworkGetter) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            RemoteNetwork remoteNetwork = get(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(remoteNetwork != null ? remoteNetwork.asBinder() : null);
            return true;
        }
    }

    RemoteNetwork get(int i);
}
