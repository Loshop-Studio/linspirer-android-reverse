package com.huawei.hem;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

/* renamed from: com.huawei.hem.j0 */
/* loaded from: classes.dex */
public final class C1043j0 implements InterfaceC0993h0 {

    /* renamed from: a */
    public IBinder f2929a;

    public C1043j0(IBinder iBinder) {
        this.f2929a = iBinder;
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: B0 */
    public final void mo1889B0() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: C2 */
    public final void mo1890C2() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(25, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: D1 */
    public final boolean mo1891D1(List list) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeStringList(list);
            this.f2929a.transact(53, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: K */
    public final void mo1892K() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(20, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: L2 */
    public final void mo1893L2() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(34, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: M1 */
    public final void mo1894M1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(22, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: R0 */
    public final void mo1895R0() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(21, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: R1 */
    public final void mo1896R1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(33, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: R2 */
    public final void mo1897R2() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(19, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: U */
    public final void mo1898U() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(16, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: V1 */
    public final void mo1899V1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(18, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: Y2 */
    public final void mo1900Y2(long j) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeLong(j);
            this.f2929a.transact(36, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: a */
    public final void mo1901a() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: a */
    public final void mo1902a(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeString(str);
            this.f2929a.transact(7, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2929a;
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: b */
    public final void mo1903b() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: b */
    public final void mo1904b(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeString(str);
            this.f2929a.transact(8, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: c */
    public final void mo1905c() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: c */
    public final void mo1906c(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeString(str);
            this.f2929a.transact(23, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: c3 */
    public final void mo1907c3() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(15, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: d */
    public final void mo1908d() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: d */
    public final void mo1909d(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeString(str);
            this.f2929a.transact(24, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: d1 */
    public final void mo1910d1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(17, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: e */
    public final void mo1911e() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: e2 */
    public final void mo1912e2() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: f */
    public final void mo1913f() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(57, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: h */
    public final void mo1914h() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(42, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: h0 */
    public final void mo1915h0() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: i0 */
    public final boolean mo1916i0(List list) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeStringList(list);
            this.f2929a.transact(27, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: j */
    public final void mo1917j() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(58, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: m */
    public final List mo1918m() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(51, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.createStringArrayList();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: m1 */
    public final void mo1919m1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(13, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: n3 */
    public final void mo1920n3() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(11, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: p */
    public final void mo1921p() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(54, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: q */
    public final void mo1922q() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(55, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: r2 */
    public final void mo1923r2(List list) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeStringList(list);
            this.f2929a.transact(49, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: r3 */
    public final void mo1924r3() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(41, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: u1 */
    public final boolean mo1925u1(boolean z) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeInt(z ? 1 : 0);
            this.f2929a.transact(47, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: v1 */
    public final List mo1926v1() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(30, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.createStringArrayList();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: x */
    public final void mo1927x() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(26, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: x0 */
    public final boolean mo1928x0(boolean z) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            parcelObtain.writeInt(z ? 1 : 0);
            this.f2929a.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.huawei.hem.InterfaceC0993h0
    /* renamed from: y0 */
    public final List mo1929y0() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
            this.f2929a.transact(28, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.createStringArrayList();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
