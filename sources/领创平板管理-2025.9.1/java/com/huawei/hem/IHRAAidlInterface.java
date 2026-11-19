package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: IHRAAidlInterface.java */
/* renamed from: com.huawei.hem.d0 */
/* loaded from: classes.dex */
public interface IHRAAidlInterface extends IInterface {

    /* compiled from: IHRAAidlInterface.java */
    /* renamed from: com.huawei.hem.d0$a */
    public static abstract class a extends Binder implements IHRAAidlInterface {

        /* compiled from: IHRAAidlInterface.java */
        /* renamed from: com.huawei.hem.d0$a$a, reason: collision with other inner class name */
        public static class C2069a implements IHRAAidlInterface {

            /* renamed from: a */
            public IBinder f2365a;

            public C2069a(IBinder iBinder) {
                this.f2365a = iBinder;
            }

            @Override // com.huawei.hem.InterfaceC0890d0
            /* renamed from: E1 */
            public List<String> mo1550E1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.huaruian.interfaces.IHRAAidlInterface");
                    this.f2365a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2365a;
            }

            @Override // com.huawei.hem.InterfaceC0890d0
            /* renamed from: g0 */
            public int mo1551g0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.huaruian.interfaces.IHRAAidlInterface");
                    this.f2365a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static IHRAAidlInterface m1552J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.huaruian.interfaces.IHRAAidlInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHRAAidlInterface)) ? new C2069a(iBinder) : (IHRAAidlInterface) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: E1 */
    List<String> mo1550E1();

    /* renamed from: g0 */
    int mo1551g0();
}
