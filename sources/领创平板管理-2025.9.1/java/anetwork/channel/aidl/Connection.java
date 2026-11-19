package anetwork.channel.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import anetwork.channel.aidl.ParcelableInputStream;
import anetwork.channel.statist.StatisticData;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public interface Connection extends IInterface {

    /* compiled from: Taobao */
    public static abstract class Stub extends Binder implements Connection {
        public static final String DESCRIPTOR = "anetwork.channel.aidl.Connection";
        public static final int TRANSACTION_cancel = 6;
        public static final int TRANSACTION_getConnHeadFields = 4;
        public static final int TRANSACTION_getDesc = 3;
        public static final int TRANSACTION_getInputStream = 1;
        public static final int TRANSACTION_getStatisticData = 5;
        public static final int TRANSACTION_getStatusCode = 2;

        /* compiled from: Taobao */
        public static class Proxy implements Connection {

            /* renamed from: a */
            public IBinder f604a;

            public Proxy(IBinder iBinder) {
                this.f604a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f604a;
            }

            @Override // anetwork.channel.aidl.Connection
            public void cancel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.Connection
            public Map getConnHeadFields() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.Connection
            public String getDesc() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.Connection
            public ParcelableInputStream getInputStream() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ParcelableInputStream.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.Connection
            public StatisticData getStatisticData() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() == 1 ? (StatisticData) parcelObtain2.readSerializable() : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // anetwork.channel.aidl.Connection
            public int getStatusCode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f604a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static Connection asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof Connection)) ? new Proxy(iBinder) : (Connection) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParcelableInputStream inputStream = getInputStream();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(inputStream != null ? inputStream.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int statusCode = getStatusCode();
                    parcel2.writeNoException();
                    parcel2.writeInt(statusCode);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String desc = getDesc();
                    parcel2.writeNoException();
                    parcel2.writeString(desc);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map connHeadFields = getConnHeadFields();
                    parcel2.writeNoException();
                    parcel2.writeMap(connHeadFields);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    StatisticData statisticData = getStatisticData();
                    parcel2.writeNoException();
                    if (statisticData != null) {
                        parcel2.writeInt(1);
                        parcel2.writeSerializable(statisticData);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancel();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void cancel();

    Map getConnHeadFields();

    String getDesc();

    ParcelableInputStream getInputStream();

    StatisticData getStatisticData();

    int getStatusCode();
}
