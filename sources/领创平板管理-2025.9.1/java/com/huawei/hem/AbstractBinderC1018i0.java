package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: com.huawei.hem.i0 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1018i0 extends Binder implements InterfaceC0993h0 {
    /* renamed from: J */
    public static InterfaceC0993h0 m2019J(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0993h0)) ? new C1043j0(iBinder) : (InterfaceC0993h0) iInterfaceQueryLocalInterface;
    }
}
