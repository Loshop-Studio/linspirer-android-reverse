package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: ICallback.java */
/* renamed from: com.huawei.hem.s1 */
/* loaded from: classes.dex */
public interface InterfaceC1270s1 extends IInterface {

    /* compiled from: ICallback.java */
    /* renamed from: com.huawei.hem.s1$a */
    public static abstract class a extends Binder implements InterfaceC1270s1 {

        /* compiled from: ICallback.java */
        /* renamed from: com.huawei.hem.s1$a$a, reason: collision with other inner class name */
        public static class C2079a implements InterfaceC1270s1 {

            /* renamed from: a */
            public IBinder f3654a;

            public C2079a(IBinder iBinder) {
                this.f3654a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3654a;
            }
        }

        /* renamed from: J */
        public static InterfaceC1270s1 m2676J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.hccontrol.ICallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC1270s1)) ? new C2079a(iBinder) : (InterfaceC1270s1) iInterfaceQueryLocalInterface;
        }
    }
}
