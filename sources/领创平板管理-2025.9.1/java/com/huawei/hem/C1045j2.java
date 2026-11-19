package com.huawei.hem;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.network.IllegalHelper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CheckGrantedPermission.java */
/* renamed from: com.huawei.hem.j2 */
/* loaded from: classes.dex */
public class C1045j2 {

    /* renamed from: a */
    public String[] f2930a = {"android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: b */
    public List<String> f2931b = new ArrayList();

    public C1045j2(Activity activity, boolean z) {
        C0850bc.m1403m("权限检查");
        if (Build.VERSION.SDK_INT >= 29) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                String[] strArr = this.f2930a;
                if (i >= strArr.length) {
                    break;
                }
                if (ContextCompat.checkSelfPermission(activity, strArr[i]) != 0) {
                    StringBuilder sbM1765j = C0948f6.m1765j("权限未授权: ");
                    sbM1765j.append(this.f2930a[i]);
                    C0850bc.m1403m(sbM1765j.toString());
                    arrayList.add(this.f2930a[i]);
                    this.f2931b.add(this.f2930a[i]);
                }
                i++;
            }
            String[] strArrM2275P = AbstractC1102l9.m2275P(arrayList);
            if (z && !AbstractC1102l9.m2274O(strArrM2275P)) {
                m2116b(activity, strArrM2275P);
            }
            if (AbstractC1102l9.m2273N(this.f2931b)) {
                return;
            }
            DeviceLogHelper.getInstance().recordPermissionEvent(this.f2931b.toString());
            IllegalHelper.getInstance().recordNoPermission(this.f2931b.toString());
        }
    }

    /* renamed from: a */
    public void m2115a(Activity activity) {
        if (!(AbstractC1102l9.m2273N(this.f2931b) || !(this.f2931b.contains("android.permission.ACCESS_COARSE_LOCATION") || this.f2931b.contains("android.permission.ACCESS_FINE_LOCATION"))) || ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_BACKGROUND_LOCATION") == 0) {
            return;
        }
        m2116b(activity, new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"});
    }

    /* renamed from: b */
    public final void m2116b(Activity activity, String[] strArr) {
        StringBuilder sbM1765j = C0948f6.m1765j("请求权限");
        sbM1765j.append(strArr.toString());
        C0850bc.m1403m(sbM1765j.toString());
        ActivityCompat.requestPermissions(activity, strArr, 1);
    }

    public C1045j2(Context context) {
        int i = 0;
        while (true) {
            String[] strArr = this.f2930a;
            if (i >= strArr.length - 1) {
                break;
            }
            if (ContextCompat.checkSelfPermission(context, strArr[i]) != 0) {
                this.f2931b.add(this.f2930a[i]);
            }
            i++;
        }
        if (AbstractC1102l9.m2273N(this.f2931b)) {
            return;
        }
        DeviceLogHelper.getInstance().recordPermissionEvent(this.f2931b.toString());
        IllegalHelper.getInstance().recordNoPermission(this.f2931b.toString());
    }
}
