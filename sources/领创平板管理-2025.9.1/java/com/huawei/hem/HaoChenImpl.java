package com.huawei.hem;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HaoChenImpl.java */
/* renamed from: com.huawei.hem.tc */
/* loaded from: classes.dex */
public class HaoChenImpl extends AndroidImpl {

    /* renamed from: b */
    public static HaoChenImpl f3781b = new HaoChenImpl();

    /* renamed from: c */
    public static HCHelper f3782c;

    /* renamed from: d */
    public static Class f3783d;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----addDisallowedUninstallPackages");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1114N(list);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----addDisallowedUninstallPackages error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1152s2(list, false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionEnableApp error---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        LTKDateUtil.m1403m("HaoChenImpl ---updatePersistentApp");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1153t0(list);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---updatePersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---actionSilentInstall");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1154t3(str, null, false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionSilentInstall error ---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        LTKDateUtil.m1403m("HaoChenImpl ---getDeviceSn");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    return interfaceC1320u1.mo1157z1();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---getDeviceSn error=="));
            return "unknown";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    return interfaceC1320u1.mo1125X2();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("HaoChenImpl ---setNetworkAccessAppWhiteList error==");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("HaoChenImpl ---setNetworkAccessAppWhiteList");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1133d0();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            IHCAPI interfaceC1320u12 = f3782c.f3744a;
            if (interfaceC1320u12 != null) {
                try {
                    interfaceC1320u12.mo1116O1(list);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setNetworkAccessAppWhiteList error=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
        if (i == 0) {
            try {
                LTKDateUtil.m1403m("HaoChenImpl ---openAutoProximity 打开距离护眼：" + z);
                IHCAPI interfaceC1320u1 = f3782c.f3744a;
                if (interfaceC1320u1 != null) {
                    try {
                        interfaceC1320u1.mo1117O2(z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---openAutoProximity 打开距离护眼 error："));
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        try {
            LTKDateUtil.m1403m("HaoChenImpl  -- actionScreenShot");
            if (TextUtils.isEmpty(str)) {
                str = "/mnt/sdcard/Screenshots/";
            }
            String str2 = "Screenshot_" + LTKDateUtil.m1400j() + ".png";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str3 = str + str2;
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.silentScreenShot(str3);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return str3;
        } catch (Exception e2) {
            e2.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("HaoChenImpl  -- actionScreenShot error : ");
            CompilerOutline.m1776u(e2, sb);
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----getDisallowedUninstallPackageList");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    return interfaceC1320u1.mo1121U2();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("HaoChenImpl ----getDisallowedUninstallPackageList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b A[RETURN] */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo1311M0() {
        /*
            r2 = this;
            java.lang.String r0 = "HaoChenImpl ---getAppWhiteList"
            com.huawei.hem.C0850bc.m1403m(r0)
            com.huawei.hem.t1 r0 = com.huawei.hem.C1306tc.f3782c     // Catch: java.lang.Throwable -> L1c
            com.huawei.hem.u1 r0 = r0.f3744a     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L14
            java.util.List r0 = r0.mo1110I1()     // Catch: android.os.RemoteException -> L10 java.lang.Throwable -> L1c
            goto L15
        L10:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1c
        L14:
            r0 = 0
        L15:
            boolean r1 = com.huawei.hem.AbstractC1102l9.m2273N(r0)     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L26
            return r0
        L1c:
            r0 = move-exception
            java.lang.String r1 = "HaoChenImpl ---getAppWhiteList error--"
            java.lang.StringBuilder r1 = com.huawei.hem.C0948f6.m1765j(r1)
            com.huawei.hem.C0948f6.m1745C(r0, r1)
        L26:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1306tc.mo1311M0():java.util.List");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("HaoChenImpl ---setSystemTime");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setSysTime(j);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setSystemTime error ---"));
            return true;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x005d -> B:70:0x0066). Please report as a decompilation issue!!! */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HaoChenImpl ---systemInit start");
        LTKDateUtil.m1403m("HaoChenImpl ---actionActiveDeviceAdmin");
        try {
            HCHelper c1295t1 = f3782c;
            String name = f3783d.getName();
            IHCAPI interfaceC1320u1 = c1295t1.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1119S1(str, name);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionActiveDeviceAdmin error---"));
        }
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---setDefaultLauncher");
            IHCAPI interfaceC1320u12 = f3782c.f3744a;
            if (interfaceC1320u12 != null) {
                try {
                    interfaceC1320u12.mo1129a(str, str2);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("HaoChenImpl ---setDefaultLauncher error"));
        }
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---allowAppModifySystemSettingsPermission");
            IHCAPI interfaceC1320u13 = f3782c.f3744a;
            if (interfaceC1320u13 != null) {
                try {
                    interfaceC1320u13.mo1156x2(str, true);
                } catch (RemoteException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Throwable th3) {
            CompilerOutline.m1745C(th3, CompilerOutline.m1765j("HaoChenImpl ---allowAppModifySystemSettingsPermission error"));
        }
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---allowAppDisplayOverOtherAppsPermission");
            IHCAPI interfaceC1320u14 = f3782c.f3744a;
            if (interfaceC1320u14 != null) {
                try {
                    interfaceC1320u14.mo1112J1(str, true);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Throwable th4) {
            CompilerOutline.m1745C(th4, CompilerOutline.m1765j("HaoChenImpl ---allowAppDisplayOverOtherAppsPermission error--"));
        }
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---allowAccessUsageDetails");
            IHCAPI interfaceC1320u15 = f3782c.f3744a;
            if (interfaceC1320u15 != null) {
                try {
                    interfaceC1320u15.mo1123W0(str, true);
                } catch (RemoteException e5) {
                    e5.printStackTrace();
                }
            }
        } catch (Throwable th5) {
            CompilerOutline.m1745C(th5, CompilerOutline.m1765j("HaoChenImpl ---allowAccessUsageDetails error---"));
        }
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---allowAppInstallPermission");
            IHCAPI interfaceC1320u16 = f3782c.f3744a;
            if (interfaceC1320u16 != null) {
                try {
                    interfaceC1320u16.mo1120T2(str, true);
                } catch (RemoteException e6) {
                    e6.printStackTrace();
                }
            }
        } catch (Throwable th6) {
            CompilerOutline.m1745C(th6, CompilerOutline.m1765j("HaoChenImpl ---allowAppInstallPermission error---"));
        }
        LTKDateUtil.m1403m("HaoChenImpl ---systemInit end");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        LTKDateUtil.m1403m("HaoChenImpl ---actionSilentUnInstall");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1124X(str, null);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionSilentUnInstall error---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----removeDisallowedUninstallPackages");
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1139h1(list);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----removeDisallowedUninstallPackages error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        LTKDateUtil.m1403m("HaoChenImpl ---setUrlWhiteList");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1148o2();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            IHCAPI interfaceC1320u12 = f3782c.f3744a;
            if (interfaceC1320u12 == null) {
                return false;
            }
            try {
                interfaceC1320u12.mo1106E0(list);
                return false;
            } catch (RemoteException e2) {
                e2.printStackTrace();
                return false;
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setUrlWhiteList error=="));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("HaoChenImpl ---get wifi mac address");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    return interfaceC1320u1.mo1126Y1();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        } catch (Throwable unused) {
            LTKDateUtil.m1403m("HaoChenImpl ---getWifiMacAddress error:");
            return "null";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("HaoChenImpl ---enableSdCard");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1104B2(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableSdCard eroor=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        IHCAPI interfaceC1320u1;
        LTKDateUtil.m1403m("HaoChenImpl ---setSuperWhiteListForSys");
        try {
            if (!AbstractC1102l9.m2272M(arrayList) && (interfaceC1320u1 = f3782c.f3744a) != null) {
                try {
                    interfaceC1320u1.mo1135e0(arrayList, true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setSuperWhiteListForSys error---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("HaoChenImpl --disableBack");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1147o0(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableBack error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableBluetooth");
        try {
            f3782c.m2714c(false);
            f3782c.m2713b(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableBluetooth error ---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableCamera");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1134d2(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableCamera error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---disableFireWall");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setNetFirwall(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableFireWall error=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("HaoChenImpl --disableHome");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setHomeButtonEnabled(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableHome error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableOTG");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1144l0(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----disableOTG error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("HaoChenImpl --disableRecent");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1136f0(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl --disableRecent error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableShortPressPower");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1130a1(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableShortPressPower error --"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableUsb");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1102A1(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableUsb error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("HaoChenImpl ---disableVolume");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1109H(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableVolume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        CompilerOutline.m1779x("HaoChenImpl ---actionDisableApp packagName==", str);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1152s2(arrayList, true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionDisableApp error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("HaoChenImpl --enableBack");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1147o0(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableBack error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableBluetooth");
        try {
            f3782c.m2714c(true);
            f3782c.m2713b(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableBluetooth error ---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableCamera");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1134d2(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableCamera error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ---enableFireWall");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setNetFirwall(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableFireWall error=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("HaoChenImpl --enableHome");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setHomeButtonEnabled(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableHome error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableOTG");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1144l0(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableOTG error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("HaoChenImpl --enableRecent");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1136f0(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl --enableRecent error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableShortPressPower");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1130a1(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableShortPressPower error --"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableUSB");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1102A1(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableUsb error--"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("HaoChenImpl ---enableVolume");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1109H(true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---enableVolume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----actionRebootDevice");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1143l();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----actionRebootDevice error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        LTKDateUtil.m1403m("HaoChenImpl ---cleanNetworkAccessAppWhiteList");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1133d0();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---cleanNetworkAccessAppWhiteList error=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----actionShutdown");
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.setDeviceShutDown();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----actionShutdown error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1152s2(list, true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionEnableApp error---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: l */
    public boolean mo1350l(List<String> list) {
        LTKDateUtil.m1403m("HaoChenImpl ---setAppWhiteWithHash");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return false;
            }
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 == null) {
                return true;
            }
            try {
                interfaceC1320u1.mo1151s1(list);
                return true;
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setAppWhiteWithHash error--"));
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b A[RETURN] */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo1352o() {
        /*
            r2 = this;
            java.lang.String r0 = "HaoChenImpl ---getPersistentApp"
            com.huawei.hem.C0850bc.m1403m(r0)
            com.huawei.hem.t1 r0 = com.huawei.hem.C1306tc.f3782c     // Catch: java.lang.Throwable -> L1c
            com.huawei.hem.u1 r0 = r0.f3744a     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L14
            java.util.List r0 = r0.mo1149o3()     // Catch: android.os.RemoteException -> L10 java.lang.Throwable -> L1c
            goto L15
        L10:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1c
        L14:
            r0 = 0
        L15:
            boolean r1 = com.huawei.hem.AbstractC1102l9.m2273N(r0)     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L26
            return r0
        L1c:
            r0 = move-exception
            java.lang.String r1 = "HaoChenImpl ---getPersistentApp error:"
            java.lang.StringBuilder r1 = com.huawei.hem.C0948f6.m1765j(r1)
            com.huawei.hem.C0948f6.m1745C(r0, r1)
        L26:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1306tc.mo1352o():java.util.List");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: q0 */
    public void mo2074q0(boolean z) {
        try {
            LTKDateUtil.m1403m("HaoChenImpl ----controlEyeProtectMode 打开护眼模式:" + z);
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1137f2(z);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ----controlEyeProtectMode error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("HaoChenImpl ---setAppWhiteList");
        try {
            if (!AbstractC1102l9.m2273N(list)) {
                IHCAPI interfaceC1320u1 = f3782c.f3744a;
                if (interfaceC1320u1 != null) {
                    try {
                        interfaceC1320u1.mo1131b2(list);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                List<String> listMo1311M0 = mo1311M0();
                for (int i = 0; i < listMo1311M0.size(); i++) {
                    LTKDateUtil.m1403m("HaoChenImpl ---设置后的应用白名单:" + listMo1311M0.get(i));
                }
                return true;
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---setAppWhiteList error--"));
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.resetFactory();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionResetFactory error "));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b A[RETURN] */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo1330t0() {
        /*
            r2 = this;
            java.lang.String r0 = "HaoChenImpl ---getUrlWhiteList"
            com.huawei.hem.C0850bc.m1403m(r0)
            com.huawei.hem.t1 r0 = com.huawei.hem.C1306tc.f3782c     // Catch: java.lang.Throwable -> L1c
            com.huawei.hem.u1 r0 = r0.f3744a     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L14
            java.util.List r0 = r0.mo1122V2()     // Catch: android.os.RemoteException -> L10 java.lang.Throwable -> L1c
            goto L15
        L10:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1c
        L14:
            r0 = 0
        L15:
            boolean r1 = com.huawei.hem.AbstractC1102l9.m2273N(r0)     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L26
            return r0
        L1c:
            r0 = move-exception
            java.lang.String r1 = "HaoChenImpl ---getUrlWhiteList error ==="
            java.lang.StringBuilder r1 = com.huawei.hem.C0948f6.m1765j(r1)
            com.huawei.hem.C0948f6.m1745C(r0, r1)
        L26:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1306tc.mo1330t0():java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b A[RETURN] */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo1507u() {
        /*
            r2 = this;
            java.lang.String r0 = "HaoChenImpl ---getSuperWhiteListForSys"
            com.huawei.hem.C0850bc.m1403m(r0)
            com.huawei.hem.t1 r0 = com.huawei.hem.C1306tc.f3782c     // Catch: java.lang.Throwable -> L1c
            com.huawei.hem.u1 r0 = r0.f3744a     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L14
            java.util.List r0 = r0.mo1138f3()     // Catch: android.os.RemoteException -> L10 java.lang.Throwable -> L1c
            goto L15
        L10:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L1c
        L14:
            r0 = 0
        L15:
            boolean r1 = com.huawei.hem.AbstractC1102l9.m2273N(r0)     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L26
            return r0
        L1c:
            r0 = move-exception
            java.lang.String r1 = "HaoChenImpl ---getSuperWhiteListForSys error:"
            java.lang.StringBuilder r1 = com.huawei.hem.C0948f6.m1765j(r1)
            com.huawei.hem.C0948f6.m1745C(r0, r1)
        L26:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1306tc.mo1507u():java.util.List");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        CompilerOutline.m1779x("HaoChenImpl ---actionEnableApp packName==", str);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1152s2(arrayList, false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---actionEnableApp error---"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("HaoChenImpl ---disableSdCard");
        try {
            IHCAPI interfaceC1320u1 = f3782c.f3744a;
            if (interfaceC1320u1 != null) {
                try {
                    interfaceC1320u1.mo1104B2(false);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HaoChenImpl ---disableSdCard eroor=="));
        }
    }
}
