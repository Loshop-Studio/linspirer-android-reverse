package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IAIDLCallback.java */
/* renamed from: com.huawei.hms.core.aidl.c */
/* loaded from: classes.dex */
public interface IAIDLCallback extends IInterface {

    /* compiled from: IAIDLCallback.java */
    /* renamed from: com.huawei.hms.core.aidl.c$a */
    public static abstract class a extends Binder implements IAIDLCallback {

        /* compiled from: IAIDLCallback.java */
        /* renamed from: com.huawei.hms.core.aidl.c$a$a, reason: collision with other inner class name */
        public static class C2084a implements IAIDLCallback {

            /* renamed from: b */
            public static IAIDLCallback f4530b;

            /* renamed from: a */
            public IBinder f4531a;

            public C2084a(IBinder iBinder) {
                this.f4531a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4531a;
            }
        }

        public a() {
            attachInterface(this, "com.huawei.hms.core.aidl.IAIDLCallback");
        }

        public static IAIDLCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.core.aidl.IAIDLCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAIDLCallback)) ? new C2084a(iBinder) : (IAIDLCallback) iInterfaceQueryLocalInterface;
        }

        public static IAIDLCallback getDefaultImpl() {
            return C2084a.f4530b;
        }

        public static boolean setDefaultImpl(IAIDLCallback interfaceC1542c) {
            if (C2084a.f4530b != null || interfaceC1542c == null) {
                return false;
            }
            C2084a.f4530b = interfaceC1542c;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.huawei.hms.core.aidl.IAIDLCallback");
                call(parcel.readInt() != 0 ? C1541b.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.huawei.hms.core.aidl.IAIDLCallback");
            return true;
        }
    }

    void call(C1541b c1541b);
}
