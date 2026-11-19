package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IAIDLInvoke.java */
/* renamed from: com.huawei.hms.core.aidl.d */
/* loaded from: classes.dex */
public interface InterfaceC1543d extends IInterface {
    /* renamed from: a */
    void mo3393a(C1541b c1541b, InterfaceC1542c interfaceC1542c);

    /* compiled from: IAIDLInvoke.java */
    /* renamed from: com.huawei.hms.core.aidl.d$a */
    public static abstract class a extends Binder implements InterfaceC1543d {

        /* compiled from: IAIDLInvoke.java */
        /* renamed from: com.huawei.hms.core.aidl.d$a$a, reason: collision with other inner class name */
        public static class C2085a implements InterfaceC1543d {

            /* renamed from: b */
            public static InterfaceC1543d f4532b;

            /* renamed from: a */
            public IBinder f4533a;

            public C2085a(IBinder iBinder) {
                this.f4533a = iBinder;
            }

            @Override // com.huawei.hms.core.aidl.InterfaceC1543d
            /* renamed from: a */
            public void mo3393a(C1541b c1541b, InterfaceC1542c interfaceC1542c) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.hms.core.aidl.IAIDLInvoke");
                    if (c1541b != null) {
                        parcelObtain.writeInt(1);
                        c1541b.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(interfaceC1542c != null ? interfaceC1542c.asBinder() : null);
                    if (this.f4533a.transact(2, parcelObtain, null, 1) || a.m3394a() == null) {
                        return;
                    }
                    a.m3394a().mo3393a(c1541b, interfaceC1542c);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4533a;
            }
        }

        /* renamed from: a */
        public static InterfaceC1543d m3395a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.core.aidl.IAIDLInvoke");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1543d)) ? new C2085a(iBinder) : (InterfaceC1543d) iInterfaceQueryLocalInterface;
        }

        /* renamed from: a */
        public static InterfaceC1543d m3394a() {
            return C2085a.f4532b;
        }
    }
}
