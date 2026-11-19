package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IControlBinder.java */
/* renamed from: com.huawei.hem.mh */
/* loaded from: classes.dex */
public interface InterfaceC1136mh extends IInterface {

    /* compiled from: IControlBinder.java */
    /* renamed from: com.huawei.hem.mh$a */
    public static abstract class a extends Binder implements InterfaceC1136mh {

        /* compiled from: IControlBinder.java */
        /* renamed from: com.huawei.hem.mh$a$a, reason: collision with other inner class name */
        public static class C2076a implements InterfaceC1136mh {

            /* renamed from: a */
            public IBinder f3267a;

            public C2076a(IBinder iBinder) {
                this.f3267a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: F2 */
            public void mo2374F2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: H2 */
            public void mo2375H2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: M0 */
            public void mo2376M0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    this.f3267a.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: O0 */
            public void mo2377O0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public void activeDeviceAdmin(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    this.f3267a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public String appWhiteListRead() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    this.f3267a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3267a;
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: c */
            public void mo2378c(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: e */
            public void mo2379e(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: e3 */
            public void mo2380e3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public String getWifiMacAddress() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    this.f3267a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: i */
            public void mo2381i(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: k */
            public void mo2382k(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: k1 */
            public void mo2383k1(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    this.f3267a.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: l2 */
            public void mo2384l2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public void modifySystemTime(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeLong(j);
                    this.f3267a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: n2 */
            public void mo2385n2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: r */
            public void mo2386r(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public void resetFactory() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    this.f3267a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: s */
            public void mo2387s(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: s0 */
            public void mo2388s0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3267a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public void silentInstall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    this.f3267a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            public void silentUnInstall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    this.f3267a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1136mh
            /* renamed from: w */
            public boolean mo2389w(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.seewo.aidlinterface.IControlBinder");
                    parcelObtain.writeString(str);
                    this.f3267a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static InterfaceC1136mh m2390J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.seewo.aidlinterface.IControlBinder");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1136mh)) ? new C2076a(iBinder) : (InterfaceC1136mh) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: F2 */
    void mo2374F2(boolean z);

    /* renamed from: H2 */
    void mo2375H2(boolean z);

    /* renamed from: M0 */
    void mo2376M0();

    /* renamed from: O0 */
    void mo2377O0(boolean z);

    void activeDeviceAdmin(String str);

    String appWhiteListRead();

    /* renamed from: c */
    void mo2378c(boolean z);

    /* renamed from: e */
    void mo2379e(boolean z);

    /* renamed from: e3 */
    void mo2380e3(boolean z);

    String getWifiMacAddress();

    /* renamed from: i */
    void mo2381i(boolean z);

    /* renamed from: k */
    void mo2382k(boolean z);

    /* renamed from: k1 */
    void mo2383k1(String str);

    /* renamed from: l2 */
    void mo2384l2(boolean z);

    void modifySystemTime(long j);

    /* renamed from: n2 */
    void mo2385n2(boolean z);

    /* renamed from: r */
    void mo2386r(String str, boolean z);

    void resetFactory();

    /* renamed from: s */
    void mo2387s(boolean z);

    /* renamed from: s0 */
    void mo2388s0(boolean z);

    void silentInstall(String str);

    void silentUnInstall(String str);

    /* renamed from: w */
    boolean mo2389w(String str);
}
