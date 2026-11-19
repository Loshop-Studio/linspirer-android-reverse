package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: ICallback.java */
/* renamed from: com.huawei.hem.s1 */
/* loaded from: classes.dex */
public interface HemBinderCallback extends IInterface {

    /* compiled from: ICallback.java */
    /* renamed from: com.huawei.hem.s1$a */
    public static abstract class a extends Binder implements HemBinderCallback {

        /* compiled from: ICallback.java */
        /* renamed from: com.huawei.hem.s1$a$a, reason: collision with other inner class name */
        public static class C2079a implements HemBinderCallback {

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
        public static HemBinderCallback m2676J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.hccontrol.ICallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof HemBinderCallback)) ? new C2079a(iBinder) : (HemBinderCallback) iInterfaceQueryLocalInterface;
        }
    }
}
