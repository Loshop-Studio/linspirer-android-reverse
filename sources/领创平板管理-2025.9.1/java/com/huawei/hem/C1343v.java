package com.huawei.hem;

import android.content.Context;
import android.cube.AllDevicePolicy;
import android.cube.sql.bean.StopApplication;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AllDevicePolicyManager.java */
/* renamed from: com.huawei.hem.v */
/* loaded from: classes.dex */
public class C1343v {

    /* renamed from: a */
    public AllDevicePolicy f3909a;

    public C1343v(Context context) {
        this.f3909a = new AllDevicePolicy(context);
    }

    /* renamed from: A */
    public void m2825A() {
        try {
            this.f3909a.setpowerOff();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: a */
    public ArrayList<StopApplication> m2826a() {
        try {
            return this.f3909a.readAppwhitelist();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
            return null;
        }
    }

    /* renamed from: b */
    public void m2827b(List<String> list) {
        String str = "";
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i = 0; i < list.size(); i++) {
                        str = str + list.get(i) + ",";
                    }
                }
            } catch (Exception e) {
                Log.d("AllDevicePolicyManager", e.toString());
                return;
            }
        }
        this.f3909a.setAppwhitelist(str);
    }

    /* renamed from: c */
    public void m2828c(String str, String str2) {
        try {
            if (str.equals("")) {
                Log.d("AllDevicePolicyManager", "install apk path is null");
            } else {
                this.f3909a.setInstallsilent(str, (String) null);
            }
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: d */
    public void m2829d(String str) {
        try {
            if (str.equals("")) {
                Log.d("AllDevicePolicyManager", "Command is" + str);
            } else {
                this.f3909a.setNetAddressList(str);
                Log.d("AllDevicePolicyManager", "write Command:" + str + "complete!");
            }
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Command:");
            sbM1765j.append(e.toString());
            Log.d("AllDevicePolicyManager", sbM1765j.toString());
        }
    }

    /* renamed from: e */
    public void m2830e() {
        try {
            this.f3909a.setOffBACKKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: f */
    public void m2831f() {
        try {
            this.f3909a.setOffHOMEKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: g */
    public void m2832g() {
        try {
            this.f3909a.setOffPOWERKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: h */
    public void m2833h() {
        try {
            this.f3909a.setOffRECENTKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: i */
    public void m2834i() {
        try {
            this.f3909a.setOffVOLUMEKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: j */
    public void m2835j() {
        try {
            this.f3909a.setOnBACKKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: k */
    public void m2836k() {
        try {
            this.f3909a.setOnHOMEKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: l */
    public void m2837l() {
        try {
            this.f3909a.setOnPOWERKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: m */
    public void m2838m() {
        try {
            this.f3909a.setOnRECENTKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: n */
    public void m2839n() {
        try {
            this.f3909a.setOnVOLUMEKey();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: o */
    public void m2840o() {
        try {
            this.f3909a.setSdcardoff();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: p */
    public void m2841p() {
        try {
            this.f3909a.setSdcardon();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: q */
    public void m2842q() {
        try {
            this.f3909a.setStartCamera();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: r */
    public void m2843r(String str) {
        try {
            if (str.equals("")) {
                Log.d("AllDevicePolicyManager", "setStartapp packageName  is null");
            } else {
                this.f3909a.setStartapp(str);
            }
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: s */
    public void m2844s() {
        try {
            this.f3909a.setStartbluetooth();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: t */
    public void m2845t() {
        try {
            this.f3909a.setStopbluetooth();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: u */
    public void m2846u() {
        try {
            this.f3909a.setStoptCamera();
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: v */
    public void m2847v(String str) {
        try {
            if (str.equals("")) {
                Log.d("AllDevicePolicyManager", "setStoptapp packageName  is null");
            } else {
                this.f3909a.setStoptapp(str);
            }
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: w */
    public void m2848w(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        try {
            this.f3909a.setTime(i, i2, i3, i4, i5, i6, i7);
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: x */
    public void m2849x(String str) {
        try {
            if (str.equals("")) {
                Log.d("AllDevicePolicyManager", "Uninstall packageName  is null");
            } else {
                this.f3909a.setUninstallsilent(str);
            }
        } catch (Exception e) {
            Log.d("AllDevicePolicyManager", e.toString());
        }
    }

    /* renamed from: y */
    public void m2850y() {
        try {
            this.f3909a.setUsboff();
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("set usb off faild!");
            sbM1765j.append(e.toString());
            Log.d("AllDevicePolicyManager", sbM1765j.toString());
        }
    }

    /* renamed from: z */
    public void m2851z() {
        try {
            this.f3909a.setUsbon();
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("set usb on faild!");
            sbM1765j.append(e.toString());
            Log.d("AllDevicePolicyManager", sbM1765j.toString());
        }
    }
}
