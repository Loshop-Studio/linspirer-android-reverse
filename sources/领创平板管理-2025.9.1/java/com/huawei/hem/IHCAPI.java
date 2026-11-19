package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.hem.HemBinderCallback;
import java.util.List;

/* compiled from: IHCAPI.java */
/* renamed from: com.huawei.hem.u1 */
/* loaded from: classes.dex */
public interface IHCAPI extends IInterface {

    /* compiled from: IHCAPI.java */
    /* renamed from: com.huawei.hem.u1$a */
    public static abstract class a extends Binder implements IHCAPI {

        /* compiled from: IHCAPI.java */
        /* renamed from: com.huawei.hem.u1$a$a, reason: collision with other inner class name */
        public static class HcApiBinderProxy implements IHCAPI {

            /* renamed from: a */
            public IBinder f3837a;

            public HcApiBinderProxy(IBinder iBinder) {
                this.f3837a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: A */
            public boolean mo1100A() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: A0 */
            public void mo1101A0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: A1 */
            public void mo1102A1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: A2 */
            public void mo1103A2(boolean z, int i, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    this.f3837a.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: B2 */
            public void mo1104B2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: E */
            public void mo1105E() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: E0 */
            public void mo1106E0(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: F0 */
            public void mo1107F0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: G1 */
            public boolean mo1108G1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: H */
            public void mo1109H(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: I1 */
            public List<String> mo1110I1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: J0 */
            public List<String> mo1111J0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: J1 */
            public void mo1112J1(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: L */
            public void mo1113L(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: N */
            public void mo1114N(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: N2 */
            public void mo1115N2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: O1 */
            public void mo1116O1(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: O2 */
            public void mo1117O2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: S */
            public void mo1118S(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: S1 */
            public void mo1119S1(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f3837a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: T2 */
            public void mo1120T2(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: U2 */
            public List<String> mo1121U2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: V2 */
            public List<String> mo1122V2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: W0 */
            public void mo1123W0(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: X */
            public void mo1124X(String str, HemBinderCallback interfaceC1270s1) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(interfaceC1270s1 != null ? interfaceC1270s1.asBinder() : null);
                    this.f3837a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: X2 */
            public List<String> mo1125X2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: Y1 */
            public String mo1126Y1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: Z1 */
            public void mo1127Z1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: Z2 */
            public int mo1128Z2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: a */
            public void mo1129a(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f3837a.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: a1 */
            public void mo1130a1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3837a;
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: b2 */
            public void mo1131b2(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: c0 */
            public List<String> mo1132c0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: d0 */
            public void mo1133d0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: d2 */
            public void mo1134d2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: e0 */
            public void mo1135e0(List<String> list, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: f0 */
            public void mo1136f0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: f2 */
            public void mo1137f2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: f3 */
            public List<String> mo1138f3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: h1 */
            public void mo1139h1(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: i1 */
            public boolean mo1140i1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: j3 */
            public void mo1141j3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: k0 */
            public void mo1142k0(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: l */
            public void mo1143l() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: l0 */
            public void mo1144l0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: m2 */
            public boolean mo1145m2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: n0 */
            public List<String> mo1146n0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: o0 */
            public void mo1147o0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: o2 */
            public void mo1148o2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: o3 */
            public List<String> mo1149o3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: p0 */
            public void mo1150p0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void resetFactory() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: s1 */
            public void mo1151s1(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: s2 */
            public void mo1152s2(List<String> list, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void setDeviceShutDown() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void setHomeButtonEnabled(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void setNetFirwall(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void setSysTime(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeLong(j);
                    this.f3837a.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            public void silentScreenShot(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    this.f3837a.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: t0 */
            public void mo1153t0(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeStringList(list);
                    this.f3837a.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: t3 */
            public void mo1154t3(String str, HemBinderCallback interfaceC1270s1, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(interfaceC1270s1 != null ? interfaceC1270s1.asBinder() : null);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: v2 */
            public void mo1155v2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: x2 */
            public void mo1156x2(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3837a.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: z1 */
            public String mo1157z1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    this.f3837a.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1320u1
            /* renamed from: z2 */
            public void mo1158z2(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.hccontrol.custom.lingc.IHCAPI");
                    parcelObtain.writeString(str);
                    this.f3837a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.android.hccontrol.custom.lingc.IHCAPI");
        }

        /* renamed from: J */
        public static IHCAPI m2778J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.hccontrol.custom.lingc.IHCAPI");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHCAPI)) ? new HcApiBinderProxy(iBinder) : (IHCAPI) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.android.hccontrol.custom.lingc.IHCAPI");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1102A1(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    boolean zMo1108G1 = mo1108G1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1108G1 ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1131b2(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1110I1 = mo1110I1();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1110I1);
                    return true;
                case 5:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1154t3(parcel.readString(), HemBinderCallback.a.m2676J(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1124X(parcel.readString(), HemBinderCallback.a.m2676J(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1152s2(parcel.createStringArrayList(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1146n0 = mo1146n0();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1146n0);
                    return true;
                case 9:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1134d2(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    boolean zMo1145m2 = mo1145m2();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1145m2 ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    setHomeButtonEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1147o0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1136f0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1130a1(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1109H(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1118S(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    boolean zMo1140i1 = mo1140i1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1140i1 ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1107F0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    setSysTime(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1127Z1(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    boolean zMo1100A = mo1100A();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo1100A ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1119S1(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1158z2(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1129a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1105E();
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1135e0(parcel.createStringArrayList(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1138f3 = mo1138f3();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1138f3);
                    return true;
                case 28:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1120T2(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1156x2(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1112J1(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1123W0(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    setNetFirwall(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1106E0(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1122V2 = mo1122V2();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1122V2);
                    return true;
                case 35:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1148o2();
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1116O1(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1125X2 = mo1125X2();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1125X2);
                    return true;
                case 38:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1133d0();
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1142k0(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1111J0 = mo1111J0();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1111J0);
                    return true;
                case 41:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    resetFactory();
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1155v2(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    String strMo1157z1 = mo1157z1();
                    parcel2.writeNoException();
                    parcel2.writeString(strMo1157z1);
                    return true;
                case 44:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1101A0();
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1117O2(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    int iMo1128Z2 = mo1128Z2();
                    parcel2.writeNoException();
                    parcel2.writeInt(iMo1128Z2);
                    return true;
                case 47:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1150p0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1103A2(parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1137f2(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1141j3(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1113L(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    setDeviceShutDown();
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1143l();
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1114N(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1139h1(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1115N2();
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1121U2 = mo1121U2();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1121U2);
                    return true;
                case 58:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1104B2(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    silentScreenShot(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1144l0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1153t0(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1149o3 = mo1149o3();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1149o3);
                    return true;
                case 63:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    String strMo1126Y1 = mo1126Y1();
                    parcel2.writeNoException();
                    parcel2.writeString(strMo1126Y1);
                    return true;
                case 64:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    mo1151s1(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface("com.android.hccontrol.custom.lingc.IHCAPI");
                    List<String> listMo1132c0 = mo1132c0();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listMo1132c0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: A */
    boolean mo1100A();

    /* renamed from: A0 */
    void mo1101A0();

    /* renamed from: A1 */
    void mo1102A1(boolean z);

    /* renamed from: A2 */
    void mo1103A2(boolean z, int i, int i2);

    /* renamed from: B2 */
    void mo1104B2(boolean z);

    /* renamed from: E */
    void mo1105E();

    /* renamed from: E0 */
    void mo1106E0(List<String> list);

    /* renamed from: F0 */
    void mo1107F0(boolean z);

    /* renamed from: G1 */
    boolean mo1108G1();

    /* renamed from: H */
    void mo1109H(boolean z);

    /* renamed from: I1 */
    List<String> mo1110I1();

    /* renamed from: J0 */
    List<String> mo1111J0();

    /* renamed from: J1 */
    void mo1112J1(String str, boolean z);

    /* renamed from: L */
    void mo1113L(boolean z);

    /* renamed from: N */
    void mo1114N(List<String> list);

    /* renamed from: N2 */
    void mo1115N2();

    /* renamed from: O1 */
    void mo1116O1(List<String> list);

    /* renamed from: O2 */
    void mo1117O2(boolean z);

    /* renamed from: S */
    void mo1118S(boolean z);

    /* renamed from: S1 */
    void mo1119S1(String str, String str2);

    /* renamed from: T2 */
    void mo1120T2(String str, boolean z);

    /* renamed from: U2 */
    List<String> mo1121U2();

    /* renamed from: V2 */
    List<String> mo1122V2();

    /* renamed from: W0 */
    void mo1123W0(String str, boolean z);

    /* renamed from: X */
    void mo1124X(String str, HemBinderCallback interfaceC1270s1);

    /* renamed from: X2 */
    List<String> mo1125X2();

    /* renamed from: Y1 */
    String mo1126Y1();

    /* renamed from: Z1 */
    void mo1127Z1(boolean z);

    /* renamed from: Z2 */
    int mo1128Z2();

    /* renamed from: a */
    void mo1129a(String str, String str2);

    /* renamed from: a1 */
    void mo1130a1(boolean z);

    /* renamed from: b2 */
    void mo1131b2(List<String> list);

    /* renamed from: c0 */
    List<String> mo1132c0();

    /* renamed from: d0 */
    void mo1133d0();

    /* renamed from: d2 */
    void mo1134d2(boolean z);

    /* renamed from: e0 */
    void mo1135e0(List<String> list, boolean z);

    /* renamed from: f0 */
    void mo1136f0(boolean z);

    /* renamed from: f2 */
    void mo1137f2(boolean z);

    /* renamed from: f3 */
    List<String> mo1138f3();

    /* renamed from: h1 */
    void mo1139h1(List<String> list);

    /* renamed from: i1 */
    boolean mo1140i1();

    /* renamed from: j3 */
    void mo1141j3(boolean z);

    /* renamed from: k0 */
    void mo1142k0(List<String> list);

    /* renamed from: l */
    void mo1143l();

    /* renamed from: l0 */
    void mo1144l0(boolean z);

    /* renamed from: m2 */
    boolean mo1145m2();

    /* renamed from: n0 */
    List<String> mo1146n0();

    /* renamed from: o0 */
    void mo1147o0(boolean z);

    /* renamed from: o2 */
    void mo1148o2();

    /* renamed from: o3 */
    List<String> mo1149o3();

    /* renamed from: p0 */
    void mo1150p0(boolean z);

    void resetFactory();

    /* renamed from: s1 */
    void mo1151s1(List<String> list);

    /* renamed from: s2 */
    void mo1152s2(List<String> list, boolean z);

    void setDeviceShutDown();

    void setHomeButtonEnabled(boolean z);

    void setNetFirwall(boolean z);

    void setSysTime(long j);

    void silentScreenShot(String str);

    /* renamed from: t0 */
    void mo1153t0(List<String> list);

    /* renamed from: t3 */
    void mo1154t3(String str, HemBinderCallback interfaceC1270s1, boolean z);

    /* renamed from: v2 */
    void mo1155v2(boolean z);

    /* renamed from: x2 */
    void mo1156x2(String str, boolean z);

    /* renamed from: z1 */
    String mo1157z1();

    /* renamed from: z2 */
    void mo1158z2(String str);
}
