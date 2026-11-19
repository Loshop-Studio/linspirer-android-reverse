package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TianZhiWYImp.java */
/* renamed from: com.huawei.hem.kd */
/* loaded from: classes.dex */
public class TianZhiWYImp extends AndroidImpl {

    /* renamed from: b */
    public static TianZhiWYImp f3077b = new TianZhiWYImp();

    /* renamed from: c */
    public static TianzhiApiManager f3078c;

    /* renamed from: d */
    public static Context f3079d;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1664m3(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        TianzhiApiManager c0896d6;
        List<String> listMo1645H0;
        try {
            c0896d6 = f3078c;
            listMo1645H0 = null;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,getNetworkAccessAppWhiteList-error:"));
        }
        if (c0896d6 == null) {
            throw null;
        }
        try {
            listMo1645H0 = c0896d6.f2386a.mo1645H0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (!MobileSdkPlatformUtilities.m2273N(listMo1645H0)) {
            return listMo1645H0;
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1653T0(true, list);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,setNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        TianzhiApiManager c0896d6;
        List<String> listMo1666u3;
        try {
            c0896d6 = f3078c;
            listMo1666u3 = null;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,getAppWhiteList-error:"));
        }
        if (c0896d6 == null) {
            throw null;
        }
        try {
            listMo1666u3 = c0896d6.f2386a.mo1666u3();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (!MobileSdkPlatformUtilities.m2273N(listMo1666u3)) {
            return listMo1666u3;
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1667z(j);
                return true;
            } catch (RemoteException e) {
                e.printStackTrace();
                return true;
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,setSystemTime-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1646I2(false, arrayList);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,systemInit-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1654U1(str, true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,actionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1659h2(true, list);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,setUrlWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1650N0(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,showWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1662j0(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1665u(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1660i(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1657e(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1661i3(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1643D2(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1647K0(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1656Y(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        enableVolume();
        disableLongPressPower();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1644G0(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1649M2(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1648L1(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1663k(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1658g1(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1652R(str, false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1665u(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1660i(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1657e(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1661i3(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1643D2(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1647K0(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1656Y(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableLongPressPower();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1644G0(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1649M2(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1648L1(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1663k(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1658g1(true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1653T0(true, null);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,cleanNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1650N0(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,hideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1655X0(true, list);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f3079d.getSystemService("device_policy");
        try {
            if (z) {
                try {
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
                    devicePolicyManager.wipeData(1);
                } catch (SecurityException e) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e);
                    e.printStackTrace();
                }
                return;
            }
            try {
                try {
                    devicePolicyManager.wipeData(0);
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                } catch (SecurityException e2) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e2);
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,actionResetFactory-error:"));
            }
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("TianZhiWYImp ,actionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        TianzhiApiManager c0896d6;
        List<String> listMo1651P1;
        try {
            c0896d6 = f3078c;
            listMo1651P1 = null;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,getUrlWhiteList-error:"));
        }
        if (c0896d6 == null) {
            throw null;
        }
        try {
            listMo1651P1 = c0896d6.f2386a.mo1651P1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (!MobileSdkPlatformUtilities.m2273N(listMo1651P1)) {
            return listMo1651P1;
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1652R(str, true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,actionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            TianzhiApiManager c0896d6 = f3078c;
            if (c0896d6 == null) {
                throw null;
            }
            try {
                c0896d6.f2386a.mo1662j0(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TianZhiWYImp ,disableSdCard-error:"));
        }
    }
}
