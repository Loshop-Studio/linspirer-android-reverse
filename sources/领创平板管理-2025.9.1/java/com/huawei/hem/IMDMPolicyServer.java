package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: IMDMPolicyServer.java */
/* renamed from: com.huawei.hem.w */
/* loaded from: classes.dex */
public interface IMDMPolicyServer extends IInterface {

    /* compiled from: IMDMPolicyServer.java */
    /* renamed from: com.huawei.hem.w$a */
    public static abstract class a extends Binder implements IMDMPolicyServer {

        /* compiled from: IMDMPolicyServer.java */
        /* renamed from: com.huawei.hem.w$a$a, reason: collision with other inner class name */
        public static class MdmPolicyBinderProxy implements IMDMPolicyServer {

            /* renamed from: a */
            public IBinder f3979a;

            public MdmPolicyBinderProxy(IBinder iBinder) {
                this.f3979a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: F1 */
            public void mo2883F1(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeStringList(list);
                    this.f3979a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: M */
            public void mo2884M(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: V */
            public List<String> mo2885V() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    this.f3979a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: a2 */
            public void mo2886a2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3979a;
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: f1 */
            public void mo2887f1(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: j1 */
            public void mo2888j1(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeLong(j);
                    this.f3979a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: k3 */
            public void mo2889k3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: r0 */
            public void mo2890r0(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: s3 */
            public void mo2891s3(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            public void setBluetoothEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            public void setPowerKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            public void silentInstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            public void silentUninstall(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeString(str);
                    this.f3979a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: u2 */
            public void mo2892u2(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: w0 */
            public void mo2893w0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f3979a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1368w
            /* renamed from: w2 */
            public void mo2894w2(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.jlink.IMDMPolicyServer");
                    parcelObtain.writeString(str);
                    this.f3979a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static IMDMPolicyServer m2895J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.jlink.IMDMPolicyServer");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMDMPolicyServer)) ? new MdmPolicyBinderProxy(iBinder) : (IMDMPolicyServer) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: F1 */
    void mo2883F1(List<String> list);

    /* renamed from: M */
    void mo2884M(boolean z);

    /* renamed from: V */
    List<String> mo2885V();

    /* renamed from: a2 */
    void mo2886a2(boolean z);

    /* renamed from: f1 */
    void mo2887f1(boolean z);

    /* renamed from: j1 */
    void mo2888j1(long j);

    /* renamed from: k3 */
    void mo2889k3(boolean z);

    /* renamed from: r0 */
    void mo2890r0(String str, boolean z);

    /* renamed from: s3 */
    void mo2891s3(boolean z);

    void setBluetoothEnable(boolean z);

    void setPowerKeyEnable(boolean z);

    void silentInstall(String str, boolean z);

    void silentUninstall(String str);

    /* renamed from: u2 */
    void mo2892u2(boolean z);

    /* renamed from: w0 */
    void mo2893w0(boolean z);

    /* renamed from: w2 */
    void mo2894w2(String str);
}
