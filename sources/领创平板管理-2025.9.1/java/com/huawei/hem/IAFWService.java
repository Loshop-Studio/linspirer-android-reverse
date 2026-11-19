package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.com.microtrust.firewall.aidl.AFWRes;

/* compiled from: IAFWService.java */
/* renamed from: com.huawei.hem.c0 */
/* loaded from: classes.dex */
public interface IAFWService extends IInterface {

    /* compiled from: IAFWService.java */
    /* renamed from: com.huawei.hem.c0$a */
    public static abstract class a extends Binder implements IAFWService {

        /* compiled from: IAFWService.java */
        /* renamed from: com.huawei.hem.c0$a$a, reason: collision with other inner class name */
        public static class C2068a implements IAFWService {

            /* renamed from: a */
            public IBinder f2316a;

            public C2068a(IBinder iBinder) {
                this.f2316a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: G2 */
            public AFWRes mo1433G2(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    parcelObtain.writeString(str);
                    this.f2316a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: H1 */
            public AFWRes mo1434H1(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    parcelObtain.writeString(str);
                    this.f2316a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: I0 */
            public AFWRes mo1435I0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    this.f2316a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: P */
            public AFWRes mo1436P() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    this.f2316a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2316a;
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: j2 */
            public AFWRes mo1437j2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f2316a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: n1 */
            public AFWRes mo1438n1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    this.f2316a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: p3 */
            public AFWRes mo1439p3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    this.f2316a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC0864c0
            /* renamed from: y2 */
            public AFWRes mo1440y2(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.com.microtrust.firewall.aidl.IAFWService");
                    parcelObtain.writeString(str);
                    this.f2316a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AFWRes.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static IAFWService m1441J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.com.microtrust.firewall.aidl.IAFWService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAFWService)) ? new C2068a(iBinder) : (IAFWService) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: G2 */
    AFWRes mo1433G2(String str);

    /* renamed from: H1 */
    AFWRes mo1434H1(String str);

    /* renamed from: I0 */
    AFWRes mo1435I0();

    /* renamed from: P */
    AFWRes mo1436P();

    /* renamed from: j2 */
    AFWRes mo1437j2(boolean z);

    /* renamed from: n1 */
    AFWRes mo1438n1();

    /* renamed from: p3 */
    AFWRes mo1439p3();

    /* renamed from: y2 */
    AFWRes mo1440y2(String str);
}
