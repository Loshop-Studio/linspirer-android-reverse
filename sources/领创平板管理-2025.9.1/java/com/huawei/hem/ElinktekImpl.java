package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ElinktekImpl.java */
/* renamed from: com.huawei.hem.qc */
/* loaded from: classes.dex */
public class ElinktekImpl extends AndroidImpl {

    /* renamed from: b */
    public static ElinktekImpl f3517b = new ElinktekImpl();

    /* renamed from: c */
    public static DevicePolicyManager f3518c;

    /* renamed from: d */
    public static ComponentName f3519d;

    /* renamed from: e */
    public static C0831aj f3520e;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("install.application");
            c0831aj.f2214c = intent;
            intent.putExtra("path_name", str);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  actionSilentInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f3520e.m1357b();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ElinktekImpl  getAppWhiteList ");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("modify.system.time");
            c0831aj.f2214c = intent;
            intent.putExtra("millisecond", j);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  setSystemTime "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            C0831aj c0831aj = f3520e;
            String str3 = str + GrsManager.SEPARATOR + f3519d.getClassName();
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("active.device.admin");
            c0831aj.f2214c = intent;
            intent.putExtra("component_name", str3);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  actionActiveDeviceAdmin "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("install.application");
            c0831aj.f2214c = intent;
            intent.putExtra("path_name", str);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  silentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            f3520e.m1361f(list);
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  setUrlWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            return f3520e.m1359d();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  getWifiMacAddress "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("show.wifi.advanced");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  showWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("update.tf.enable");
            c0831aj.f2214c = intent;
            intent.putExtra("enable", 1);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableSdCard "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3520e.m1362g("back", true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.bt");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f3518c.setCameraDisabled(f3519d, true);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            f3520e.m1356a();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableFireWall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.gps");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3520e.m1362g("home", true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.power.long.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableLongPressPower "));
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
    public void disableRecent() {
        try {
            f3520e.m1362g("recent", true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.power.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.usb.data.transfer");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.volume.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("disable.application");
            c0831aj.f2214c = intent;
            intent.putExtra("pkg_name", str);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3520e.m1362g("back", false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.bt");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f3518c.setCameraDisabled(f3519d, false);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.fireWall");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableFireWall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.gps");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3520e.m1362g("home", false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.power.long.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableLongPressPower "));
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
    public void enableRecent() {
        try {
            f3520e.m1362g("recent", false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.power.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.usb.data.transfer");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.volume.press");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("hide.wifi.advanced");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  hideWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            f3520e.m1360e(list);
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  setAppWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("reset.factory");
            c0831aj.f2214c = intent;
            c0831aj.f2213b.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  resetFactory "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            return f3520e.m1358c();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ElinktekImpl  getUrlWhiteList ");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("enable.application");
            c0831aj.f2214c = intent;
            intent.putExtra("pkg_name", str);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  enableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            C0831aj c0831aj = f3520e;
            if (c0831aj == null) {
                throw null;
            }
            Intent intent = new Intent("update.tf.enable");
            c0831aj.f2214c = intent;
            intent.putExtra("enable", 0);
            c0831aj.f2213b.sendBroadcast(c0831aj.f2214c);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ElinktekImpl  disableSdCard "));
        }
    }
}
