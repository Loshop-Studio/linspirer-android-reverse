package com.loc;

import android.content.Context;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C1094l1;

/* compiled from: AdiuManager.java */
/* renamed from: com.loc.j */
/* loaded from: classes.dex */
public class AdiuManager {

    /* renamed from: a */
    public static AdiuManager f5881a;

    /* renamed from: b */
    public final Context f5882b;

    /* renamed from: c */
    public final String f5883c = SecurityUtil.m5283a(C1094l1.m2251t("RYW1hcF9kZXZpY2VfYWRpdQ"));

    public AdiuManager(Context context) {
        this.f5882b = context.getApplicationContext();
    }

    /* renamed from: a */
    public static AdiuManager m5252a(Context context) {
        if (f5881a == null) {
            synchronized (AdiuManager.class) {
                if (f5881a == null) {
                    f5881a = new AdiuManager(context);
                }
            }
        }
        return f5881a;
    }

    /* renamed from: a */
    public final synchronized void m5253a() {
        try {
            if (DeviceInfo.f1608e == null) {
                DeviceInfo.InterfaceC0623c interfaceC0623cM5270a = NetReuestParam.m5270a();
                if (DeviceInfo.f1608e == null) {
                    DeviceInfo.f1608e = interfaceC0623cM5270a;
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public final void m5254a(String str) {
        AdiuStorageModel.m5256a(this.f5882b).m5260a(this.f5883c);
        AdiuStorageModel.m5256a(this.f5882b).m5261b(str);
    }
}
