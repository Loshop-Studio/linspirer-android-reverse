package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: com.huawei.hem.f0 */
/* loaded from: classes.dex */
public abstract class SamsungCustomInterfaceBinder extends Binder implements SamsungCustomInterface {
    /* renamed from: J */
    public static SamsungCustomInterface m1697J(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.customee.ICustomif");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SamsungCustomInterface)) ? new SamsungCustomInterfaceProxy(iBinder) : (SamsungCustomInterface) iInterfaceQueryLocalInterface;
    }
}
