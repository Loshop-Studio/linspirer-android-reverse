package com.huawei.hem;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: com.huawei.hem.i0 */
/* loaded from: classes.dex */
public abstract class SamsungKnoxInterfaceBinder extends Binder implements SamsungKnoxRemoteInterface {
    /* renamed from: J */
    public static SamsungKnoxRemoteInterface m2019J(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.knoxinterfaceagent.IRemoteKnoxInterface");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SamsungKnoxRemoteInterface)) ? new SamsungKnoxInterfaceProxy(iBinder) : (SamsungKnoxRemoteInterface) iInterfaceQueryLocalInterface;
    }
}
