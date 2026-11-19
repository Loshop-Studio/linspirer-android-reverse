package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* compiled from: IMyAidlInterface.java */
/* renamed from: com.huawei.hem.j6 */
/* loaded from: classes.dex */
public interface InterfaceC1049j6 extends IInterface {

    /* compiled from: IMyAidlInterface.java */
    /* renamed from: com.huawei.hem.j6$a */
    public static abstract class a extends Binder implements InterfaceC1049j6 {

        /* compiled from: IMyAidlInterface.java */
        /* renamed from: com.huawei.hem.j6$a$a, reason: collision with other inner class name */
        public static class C2075a implements InterfaceC1049j6 {

            /* renamed from: a */
            public IBinder f2937a;

            public C2075a(IBinder iBinder) {
                this.f2937a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2937a;
            }

            @Override // com.huawei.hem.InterfaceC1049j6
            /* renamed from: o1 */
            public List<String> mo2117o1() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.fnf.executor.IMyAidlInterface");
                    this.f2937a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: J */
        public static InterfaceC1049j6 m2118J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.fnf.executor.IMyAidlInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1049j6)) ? new C2075a(iBinder) : (InterfaceC1049j6) iInterfaceQueryLocalInterface;
        }
    }

    /* renamed from: o1 */
    List<String> mo2117o1();
}
