package com.huawei.updatesdk.p034a.p035a.p040d.p041h;

import android.car.Car;
import android.car.CarInfoManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.C1581a;

/* renamed from: com.huawei.updatesdk.a.a.d.h.a */
/* loaded from: classes.dex */
public class C1592a {

    /* renamed from: a */
    public static Car f4627a = null;

    /* renamed from: b */
    public static String f4628b = null;

    /* renamed from: c */
    public static String f4629c = null;

    /* renamed from: d */
    public static boolean f4630d = false;

    /* renamed from: com.huawei.updatesdk.a.a.d.h.a$a */
    public static class a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                CarInfoManager carInfoManager = (CarInfoManager) C1592a.f4627a.getCarManager("info");
                String unused = C1592a.f4629c = carInfoManager.getManufacturer();
                String unused2 = C1592a.f4628b = carInfoManager.getModel();
                C1581a.m3501b("CarInfoUtil", "car getManufacturer = " + C1592a.f4629c + "  getModel = " + C1592a.f4628b);
            } catch (Throwable th) {
                StringBuilder sbM1765j = C0948f6.m1765j("Car not connected in onServiceConnected");
                sbM1765j.append(th.toString());
                C1581a.m3500a("CarInfoUtil", sbM1765j.toString());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1581a.m3501b("CarInfoUtil", "onServiceDisconnected");
        }
    }

    /* renamed from: a */
    public static void m3544a(Context context) {
        if (context == null || f4630d) {
            return;
        }
        try {
            f4630d = true;
            Car carCreateCar = Car.createCar(context.getApplicationContext(), new a());
            f4627a = carCreateCar;
            if (carCreateCar != null) {
                carCreateCar.connect();
            }
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("Car Service Connect Error");
            sbM1765j.append(th.toString());
            C1581a.m3500a("CarInfoUtil", sbM1765j.toString());
        }
    }

    /* renamed from: b */
    public static void m3547b(Context context) {
        m3544a(context);
    }

    /* renamed from: d */
    public static String m3549d() {
        return f4629c;
    }

    /* renamed from: e */
    public static String m3550e() {
        return f4628b;
    }
}
