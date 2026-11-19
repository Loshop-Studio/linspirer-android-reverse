package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: ISupiSafeCtrl.java */
/* renamed from: com.huawei.hem.ui */
/* loaded from: classes.dex */
public interface InterfaceC1337ui extends IInterface {

    /* compiled from: ISupiSafeCtrl.java */
    /* renamed from: com.huawei.hem.ui$a */
    public static abstract class a extends Binder implements InterfaceC1337ui {

        /* compiled from: ISupiSafeCtrl.java */
        /* renamed from: com.huawei.hem.ui$a$a, reason: collision with other inner class name */
        public static class C2081a implements InterfaceC1337ui {

            /* renamed from: a */
            public IBinder f3873a;

            public C2081a(IBinder iBinder) {
                this.f3873a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: B */
            public void mo2797B() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    this.f3873a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: B1 */
            public void mo2798B1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: D */
            public void mo2799D(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: F */
            public void mo2800F(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: N1 */
            public void mo2801N1(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeLong(j);
                    this.f3873a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: W */
            public void mo2802W(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeStringList(list);
                    this.f3873a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: W2 */
            public void mo2803W2(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(i);
                    this.f3873a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3873a;
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: b3 */
            public void mo2804b3(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: h3 */
            public void mo2805h3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: i2 */
            public List<String> mo2806i2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    this.f3873a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: l1 */
            public void mo2807l1(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeString(str);
                    this.f3873a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: m0 */
            public void mo2808m0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: q1 */
            public void mo2809q1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: t1 */
            public String mo2810t1(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeString(str);
                    this.f3873a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: v */
            public void mo2811v(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeString(str);
                    this.f3873a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: v0 */
            public void mo2812v0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1337ui
            /* renamed from: x1 */
            public void mo2813x1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.supi.mdm.ISupiSafeCtrl");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3873a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static InterfaceC1337ui m2814J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.supi.mdm.ISupiSafeCtrl");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1337ui)) ? new C2081a(iBinder) : (InterfaceC1337ui) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: B */
    void mo2797B();

    /* renamed from: B1 */
    void mo2798B1(boolean z);

    /* renamed from: D */
    void mo2799D(boolean z);

    /* renamed from: F */
    void mo2800F(boolean z);

    /* renamed from: N1 */
    void mo2801N1(long j);

    /* renamed from: W */
    void mo2802W(List<String> list);

    /* renamed from: W2 */
    void mo2803W2(int i);

    /* renamed from: b3 */
    void mo2804b3(String str, boolean z);

    /* renamed from: h3 */
    void mo2805h3(boolean z);

    /* renamed from: i2 */
    List<String> mo2806i2();

    /* renamed from: l1 */
    void mo2807l1(String str);

    /* renamed from: m0 */
    void mo2808m0(boolean z);

    /* renamed from: q1 */
    void mo2809q1(boolean z);

    /* renamed from: t1 */
    String mo2810t1(String str);

    /* renamed from: v */
    void mo2811v(String str);

    /* renamed from: v0 */
    void mo2812v0(boolean z);

    /* renamed from: x1 */
    void mo2813x1(boolean z);
}
