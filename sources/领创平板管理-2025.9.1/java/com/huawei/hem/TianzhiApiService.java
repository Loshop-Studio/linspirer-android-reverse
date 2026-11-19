package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: IApiManager.java */
/* renamed from: com.huawei.hem.e6 */
/* loaded from: classes.dex */
public interface TianzhiApiService extends IInterface {

    /* compiled from: IApiManager.java */
    /* renamed from: com.huawei.hem.e6$a */
    public static abstract class a extends Binder implements TianzhiApiService {

        /* compiled from: IApiManager.java */
        /* renamed from: com.huawei.hem.e6$a$a, reason: collision with other inner class name */
        public static class TianzhiServiceBinderProxy implements TianzhiApiService {

            /* renamed from: a */
            public IBinder f2514a;

            public TianzhiServiceBinderProxy(IBinder iBinder) {
                this.f2514a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: D2 */
            public void mo1643D2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: G0 */
            public void mo1644G0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: H0 */
            public List<String> mo1645H0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    this.f2514a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: I2 */
            public void mo1646I2(boolean z, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStringList(list);
                    this.f2514a.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: K0 */
            public void mo1647K0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: L1 */
            public void mo1648L1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: M2 */
            public void mo1649M2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: N0 */
            public void mo1650N0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: P1 */
            public List<String> mo1651P1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    this.f2514a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: R */
            public void mo1652R(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: T0 */
            public void mo1653T0(boolean z, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStringList(list);
                    this.f2514a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: U1 */
            public void mo1654U1(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: X0 */
            public void mo1655X0(boolean z, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStringList(list);
                    this.f2514a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: Y */
            public void mo1656Y(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2514a;
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: e */
            public void mo1657e(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: g1 */
            public void mo1658g1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: h2 */
            public void mo1659h2(boolean z, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStringList(list);
                    this.f2514a.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: i */
            public void mo1660i(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: i3 */
            public void mo1661i3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: j0 */
            public void mo1662j0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: k */
            public void mo1663k(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: m3 */
            public void mo1664m3(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeString(str);
                    this.f2514a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: u */
            public void mo1665u(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2514a.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: u3 */
            public List<String> mo1666u3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    this.f2514a.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0922e6
            /* renamed from: z */
            public void mo1667z(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.server.IApiManager");
                    parcelObtain.writeLong(j);
                    this.f2514a.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static TianzhiApiService m1668J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.server.IApiManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof TianzhiApiService)) ? new TianzhiServiceBinderProxy(iBinder) : (TianzhiApiService) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: D2 */
    void mo1643D2(boolean z);

    /* renamed from: G0 */
    void mo1644G0(boolean z);

    /* renamed from: H0 */
    List<String> mo1645H0();

    /* renamed from: I2 */
    void mo1646I2(boolean z, List<String> list);

    /* renamed from: K0 */
    void mo1647K0(boolean z);

    /* renamed from: L1 */
    void mo1648L1(boolean z);

    /* renamed from: M2 */
    void mo1649M2(boolean z);

    /* renamed from: N0 */
    void mo1650N0(boolean z);

    /* renamed from: P1 */
    List<String> mo1651P1();

    /* renamed from: R */
    void mo1652R(String str, boolean z);

    /* renamed from: T0 */
    void mo1653T0(boolean z, List<String> list);

    /* renamed from: U1 */
    void mo1654U1(String str, boolean z);

    /* renamed from: X0 */
    void mo1655X0(boolean z, List<String> list);

    /* renamed from: Y */
    void mo1656Y(boolean z);

    /* renamed from: e */
    void mo1657e(boolean z);

    /* renamed from: g1 */
    void mo1658g1(boolean z);

    /* renamed from: h2 */
    void mo1659h2(boolean z, List<String> list);

    /* renamed from: i */
    void mo1660i(boolean z);

    /* renamed from: i3 */
    void mo1661i3(boolean z);

    /* renamed from: j0 */
    void mo1662j0(boolean z);

    /* renamed from: k */
    void mo1663k(boolean z);

    /* renamed from: m3 */
    void mo1664m3(String str);

    /* renamed from: u */
    void mo1665u(boolean z);

    /* renamed from: u3 */
    List<String> mo1666u3();

    /* renamed from: z */
    void mo1667z(long j);
}
