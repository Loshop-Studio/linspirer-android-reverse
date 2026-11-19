package android.hardware;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public interface IApiManager extends IInterface {

    public static abstract class Stub extends Binder implements IApiManager {
        public static final String DESCRIPTOR = "android.hardware.IApiManager";
        public static final int TRANSACTION_clearAppInstallWhiteList = 17;
        public static final int TRANSACTION_getApiVersion = 1;
        public static final int TRANSACTION_getAppInstallWhiteList = 15;
        public static final int TRANSACTION_getDDRSize = 6;
        public static final int TRANSACTION_getFlashSize = 7;
        public static final int TRANSACTION_getGpsLocation = 12;
        public static final int TRANSACTION_getManufacturer = 4;
        public static final int TRANSACTION_getModel = 5;
        public static final int TRANSACTION_getOsVersion = 2;
        public static final int TRANSACTION_getPhoneImei = 9;
        public static final int TRANSACTION_getSdkVersion = 3;
        public static final int TRANSACTION_getSerialNumber = 8;
        public static final int TRANSACTION_getWifiConnectedSSID = 11;
        public static final int TRANSACTION_getWifiMacAddress = 10;
        public static final int TRANSACTION_isBluetoothEnable = 29;
        public static final int TRANSACTION_setAdbEnable = 13;
        public static final int TRANSACTION_setAppFreeze = 20;
        public static final int TRANSACTION_setAppInstallWhiteList = 16;
        public static final int TRANSACTION_setAppUnFreeze = 21;
        public static final int TRANSACTION_setBackButtonEnable = 23;
        public static final int TRANSACTION_setBluetoothEnable = 28;
        public static final int TRANSACTION_setFactoryRest = 34;
        public static final int TRANSACTION_setHomeButtonEnable = 22;
        public static final int TRANSACTION_setMtpEnable = 14;
        public static final int TRANSACTION_setNetworkAccessRule = 31;
        public static final int TRANSACTION_setPowerKeyEnable = 25;
        public static final int TRANSACTION_setRecentButtonEnable = 24;
        public static final int TRANSACTION_setSdcardStorageEnable = 33;
        public static final int TRANSACTION_setSysTime = 30;
        public static final int TRANSACTION_setUsbStorageEnable = 32;
        public static final int TRANSACTION_setVolumeDownKeyEnable = 27;
        public static final int TRANSACTION_setVolumeUpKeyEnable = 26;
        public static final int TRANSACTION_silentInstall = 18;
        public static final int TRANSACTION_silentUninstall = 19;

        public static class Proxy implements IApiManager {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.hardware.IApiManager
            public int clearAppInstallWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getApiVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public List<String> getAppInstallWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getDDRSize() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getFlashSize() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getGpsLocation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.hardware.IApiManager
            public String getManufacturer() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getModel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getOsVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getPhoneImei(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getSdkVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getSerialNumber() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getWifiConnectedSSID() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public String getWifiMacAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public boolean isBluetoothEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setAdbEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setAppFreeze(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setAppInstallWhiteList(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setAppUnFreeze(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setBackButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setBluetoothEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setFactoryRest() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setHomeButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setMtpEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setNetworkAccessRule(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setPowerKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setRecentButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setSdcardStorageEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setSysTime(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setUsbStorageEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setVolumeDownKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int setVolumeUpKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int silentInstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.hardware.IApiManager
            public int silentUninstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
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

        public static IApiManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IApiManager)) ? new Proxy(iBinder) : (IApiManager) iInterfaceQueryLocalInterface;
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
                    String apiVersion = getApiVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(apiVersion);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String osVersion = getOsVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(osVersion);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sdkVersion = getSdkVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(sdkVersion);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String manufacturer = getManufacturer();
                    parcel2.writeNoException();
                    parcel2.writeString(manufacturer);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String model = getModel();
                    parcel2.writeNoException();
                    parcel2.writeString(model);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String dDRSize = getDDRSize();
                    parcel2.writeNoException();
                    parcel2.writeString(dDRSize);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String flashSize = getFlashSize();
                    parcel2.writeNoException();
                    parcel2.writeString(flashSize);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String serialNumber = getSerialNumber();
                    parcel2.writeNoException();
                    parcel2.writeString(serialNumber);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String phoneImei = getPhoneImei(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(phoneImei);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String wifiMacAddress = getWifiMacAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(wifiMacAddress);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    String wifiConnectedSSID = getWifiConnectedSSID();
                    parcel2.writeNoException();
                    parcel2.writeString(wifiConnectedSSID);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String gpsLocation = getGpsLocation();
                    parcel2.writeNoException();
                    parcel2.writeString(gpsLocation);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int adbEnable = setAdbEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(adbEnable);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int mtpEnable = setMtpEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(mtpEnable);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> appInstallWhiteList = getAppInstallWhiteList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(appInstallWhiteList);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appInstallWhiteList2 = setAppInstallWhiteList(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(appInstallWhiteList2);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iClearAppInstallWhiteList = clearAppInstallWhiteList();
                    parcel2.writeNoException();
                    parcel2.writeInt(iClearAppInstallWhiteList);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSilentInstall = silentInstall(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSilentInstall);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSilentUninstall = silentUninstall(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSilentUninstall);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appFreeze = setAppFreeze(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(appFreeze);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int appUnFreeze = setAppUnFreeze(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(appUnFreeze);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int homeButtonEnable = setHomeButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(homeButtonEnable);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int backButtonEnable = setBackButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(backButtonEnable);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int recentButtonEnable = setRecentButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(recentButtonEnable);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int powerKeyEnable = setPowerKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(powerKeyEnable);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volumeUpKeyEnable = setVolumeUpKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(volumeUpKeyEnable);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int volumeDownKeyEnable = setVolumeDownKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(volumeDownKeyEnable);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int bluetoothEnable = setBluetoothEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(bluetoothEnable);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBluetoothEnable = isBluetoothEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBluetoothEnable ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int sysTime = setSysTime(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(sysTime);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int networkAccessRule = setNetworkAccessRule(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(networkAccessRule);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int usbStorageEnable = setUsbStorageEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(usbStorageEnable);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int sdcardStorageEnable = setSdcardStorageEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(sdcardStorageEnable);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    int factoryRest = setFactoryRest();
                    parcel2.writeNoException();
                    parcel2.writeInt(factoryRest);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int clearAppInstallWhiteList();

    String getApiVersion();

    List<String> getAppInstallWhiteList();

    String getDDRSize();

    String getFlashSize();

    String getGpsLocation();

    String getManufacturer();

    String getModel();

    String getOsVersion();

    String getPhoneImei(int i);

    String getSdkVersion();

    String getSerialNumber();

    String getWifiConnectedSSID();

    String getWifiMacAddress();

    boolean isBluetoothEnable();

    int setAdbEnable(boolean z);

    int setAppFreeze(String str);

    int setAppInstallWhiteList(List<String> list);

    int setAppUnFreeze(String str);

    int setBackButtonEnable(boolean z);

    int setBluetoothEnable(boolean z);

    int setFactoryRest();

    int setHomeButtonEnable(boolean z);

    int setMtpEnable(boolean z);

    int setNetworkAccessRule(String str);

    int setPowerKeyEnable(boolean z);

    int setRecentButtonEnable(boolean z);

    int setSdcardStorageEnable(boolean z);

    int setSysTime(long j);

    int setUsbStorageEnable(boolean z);

    int setVolumeDownKeyEnable(boolean z);

    int setVolumeUpKeyEnable(boolean z);

    int silentInstall(String str, boolean z);

    int silentUninstall(String str, boolean z);
}
