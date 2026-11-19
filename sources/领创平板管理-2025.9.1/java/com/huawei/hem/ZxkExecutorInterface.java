package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: ZxkExecutorInterface.java */
/* renamed from: com.huawei.hem.q1 */
/* loaded from: classes.dex */
public interface ZxkExecutorInterface extends IInterface {

    /* compiled from: ZxkExecutorInterface.java */
    /* renamed from: com.huawei.hem.q1$a */
    public static abstract class a extends Binder implements ZxkExecutorInterface {

        /* compiled from: ZxkExecutorInterface.java */
        /* renamed from: com.huawei.hem.q1$a$a, reason: collision with other inner class name */
        public static class ZxkExecutorBinderProxy implements ZxkExecutorInterface {

            /* renamed from: a */
            public IBinder f3485a;

            public ZxkExecutorBinderProxy(IBinder iBinder) {
                this.f3485a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC1220q1
            /* renamed from: G */
            public void mo2531G(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.aidl.zxkexecutor.ZxkExecutorInterface");
                    parcelObtain.writeStringList(list);
                    this.f3485a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1220q1
            /* renamed from: Q2 */
            public List<String> mo2532Q2() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.aidl.zxkexecutor.ZxkExecutorInterface");
                    this.f3485a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hem.InterfaceC1220q1
            public void addAppInstallWhiteList(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.aidl.zxkexecutor.ZxkExecutorInterface");
                    parcelObtain.writeStringList(list);
                    this.f3485a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3485a;
            }

            @Override // com.huawei.hem.InterfaceC1220q1
            /* renamed from: z0 */
            public void mo2533z0(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.aidl.zxkexecutor.ZxkExecutorInterface");
                    parcelObtain.writeStringList(list);
                    this.f3485a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static ZxkExecutorInterface m2534J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.aidl.zxkexecutor.ZxkExecutorInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ZxkExecutorInterface)) ? new ZxkExecutorBinderProxy(iBinder) : (ZxkExecutorInterface) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: G */
    void mo2531G(List<String> list);

    /* renamed from: Q2 */
    List<String> mo2532Q2();

    void addAppInstallWhiteList(List<String> list);

    /* renamed from: z0 */
    void mo2533z0(List<String> list);
}
