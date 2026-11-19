package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: ITools.java */
/* renamed from: com.huawei.hem.qb */
/* loaded from: classes.dex */
public interface ITools extends IInterface {

    /* compiled from: ITools.java */
    /* renamed from: com.huawei.hem.qb$a */
    public static abstract class a extends Binder implements ITools {

        /* compiled from: ITools.java */
        /* renamed from: com.huawei.hem.qb$a$a, reason: collision with other inner class name */
        public static class ToolsServiceBinderProxy implements ITools {

            /* renamed from: a */
            public IBinder f3516a;

            public ToolsServiceBinderProxy(IBinder iBinder) {
                this.f3516a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: C */
            public void mo2585C() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: C0 */
            public void mo2586C0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: D0 */
            public void mo2587D0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(125, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: E2 */
            public void mo2588E2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: I */
            public void mo2589I() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: K2 */
            public boolean mo2590K2(String str, int i, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: L0 */
            public boolean mo2591L0(String str, int i, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: O */
            public void mo2592O(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: P0 */
            public void mo2593P0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: Q */
            public void mo2594Q(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(139, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: Q0 */
            public void mo2595Q0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(123, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: S0 */
            public void mo2596S0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: S2 */
            public void mo2597S2(int i, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: T */
            public void mo2598T(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(105, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: U0 */
            public void mo2599U0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: W1 */
            public void mo2600W1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: X1 */
            public void mo2601X1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: a3 */
            public void mo2602a3(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    this.f3516a.transact(130, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void addAppInstallWhiteList(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeStringList(list);
                    this.f3516a.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3516a;
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: b0 */
            public List<String> mo2603b0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(92, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: c1 */
            public void mo2604c1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void clearAppInstallWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: d3 */
            public void mo2605d3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: e1 */
            public void mo2606e1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(133, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public List<String> getAppInstallWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: l */
            public void mo2607l() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(100, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: o */
            public List<String> mo2608o() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: p2 */
            public String mo2609p2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(95, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: q3 */
            public List<String> mo2610q3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: r1 */
            public void mo2611r1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(109, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setAppDisable(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeStringList(list);
                    this.f3516a.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setAppEnable(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeStringList(list);
                    this.f3516a.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setBluetoothEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setCameraDisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setCameraEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setDeviceShutDown() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setPowerKeyDisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setPowerKeyEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setSDOTGDisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setSDOTGEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setVoiceIncomingDisabled(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(126, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setVolAddDisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setVolAddEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setVolSubDisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void setVolSubEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void silentInstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            public void silentUninstall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeString(str);
                    this.f3516a.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: t2 */
            public void mo2612t2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    this.f3516a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: w1 */
            public void mo2613w1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3516a.transact(124, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1230qb
            /* renamed from: y1 */
            public void mo2614y1(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.kte.interfacesettings.aidl.ITools");
                    parcelObtain.writeLong(j);
                    this.f3516a.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static ITools m2615J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.kte.interfacesettings.aidl.ITools");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITools)) ? new ToolsServiceBinderProxy(iBinder) : (ITools) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: C */
    void mo2585C();

    /* renamed from: C0 */
    void mo2586C0();

    /* renamed from: D0 */
    void mo2587D0(boolean z);

    /* renamed from: E2 */
    void mo2588E2();

    /* renamed from: I */
    void mo2589I();

    /* renamed from: K2 */
    boolean mo2590K2(String str, int i, boolean z);

    /* renamed from: L0 */
    boolean mo2591L0(String str, int i, boolean z);

    /* renamed from: O */
    void mo2592O(String str, boolean z);

    /* renamed from: P0 */
    void mo2593P0();

    /* renamed from: Q */
    void mo2594Q(boolean z);

    /* renamed from: Q0 */
    void mo2595Q0(boolean z);

    /* renamed from: S0 */
    void mo2596S0();

    /* renamed from: S2 */
    void mo2597S2(int i, boolean z);

    /* renamed from: T */
    void mo2598T(boolean z);

    /* renamed from: U0 */
    void mo2599U0();

    /* renamed from: W1 */
    void mo2600W1();

    /* renamed from: X1 */
    void mo2601X1(boolean z);

    /* renamed from: a3 */
    void mo2602a3(String str);

    void addAppInstallWhiteList(List<String> list);

    /* renamed from: b0 */
    List<String> mo2603b0();

    /* renamed from: c1 */
    void mo2604c1();

    void clearAppInstallWhiteList();

    /* renamed from: d3 */
    void mo2605d3();

    /* renamed from: e1 */
    void mo2606e1(boolean z);

    List<String> getAppInstallWhiteList();

    /* renamed from: l */
    void mo2607l();

    /* renamed from: o */
    List<String> mo2608o();

    /* renamed from: p2 */
    String mo2609p2();

    /* renamed from: q3 */
    List<String> mo2610q3();

    /* renamed from: r1 */
    void mo2611r1();

    void setAppDisable(List<String> list);

    void setAppEnable(List<String> list);

    void setBluetoothEnable();

    void setCameraDisable();

    void setCameraEnable();

    void setDeviceShutDown();

    void setPowerKeyDisable();

    void setPowerKeyEnable();

    void setSDOTGDisable();

    void setSDOTGEnable();

    void setVoiceIncomingDisabled(boolean z);

    void setVolAddDisable();

    void setVolAddEnable();

    void setVolSubDisable();

    void setVolSubEnable();

    void silentInstall(String str, boolean z);

    void silentUninstall(String str);

    /* renamed from: t2 */
    void mo2612t2();

    /* renamed from: w1 */
    void mo2613w1(boolean z);

    /* renamed from: y1 */
    void mo2614y1(long j);
}
