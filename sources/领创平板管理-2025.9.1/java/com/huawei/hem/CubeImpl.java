package com.huawei.hem;

import android.content.Intent;
import android.provider.Settings;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: CubeImpl.java */
/* renamed from: com.huawei.hem.nc */
/* loaded from: classes.dex */
public class CubeImpl extends AndroidImpl {

    /* renamed from: b */
    public static CubeImpl f3300b = new CubeImpl();

    /* renamed from: c */
    public static RocoDeviceManager f3301c;

    /* compiled from: CubeImpl.java */
    /* renamed from: com.huawei.hem.nc$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3302a;

        public a(CubeImpl c1156nc, List list) {
            this.f3302a = list;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            try {
                Thread.sleep(5000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            RocoDeviceManager c1110lh = CubeImpl.f3301c;
            List list = this.f3302a;
            if (c1110lh == null) {
                throw null;
            }
            for (int i = 0; i < list.size(); i++) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size > i) {
                        if (((String) list.get(size)).equals(list.get(i))) {
                            list.remove(size);
                        }
                    }
                }
            }
            Iterator it = list.iterator();
            StringBuffer stringBuffer = new StringBuffer();
            while (it.hasNext()) {
                stringBuffer.append(((String) it.next()) + ",");
            }
            if (stringBuffer.length() > 0) {
                Settings.System.putString(c1110lh.f3188b, "roco_custom_app_white_url_list_string", stringBuffer.substring(0, stringBuffer.length() - 1));
                Intent intent = new Intent();
                intent.setAction("com.roco.apk.white.url.list");
                c1110lh.f3187a.sendBroadcast(intent);
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            f3301c.m2320e(str);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        ArrayList arrayList = new ArrayList();
        try {
            if (!MobileSdkPlatformUtilities.m2273N(f3301c.m2318c())) {
                arrayList.addAll(f3301c.m2318c());
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,getNetworkAccessAppWhiteList-error:"));
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            new Thread(new a(this, list)).start();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,setNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        ArrayList arrayList = new ArrayList();
        try {
            if (!MobileSdkPlatformUtilities.m2273N(f3301c.m2316a())) {
                arrayList.addAll(f3301c.m2316a());
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,getAppWhiteList-error:"));
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            f3301c.m2319d(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,setSystemTime-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            f3301c.m2321f(str);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,actionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            return f3301c.m2323h(list);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,setUrlWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            Settings.System.putInt(f3301c.f3188b, "roco_custom_wifi_show", 0);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,showWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.backkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.disable.bluetooth");
            c1110lh.f3187a.sendBroadcast(intent);
            new Thread(new RocoDisableBluetoothTask(c1110lh)).start();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.camera.close");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("ro.roco.custombroadcast");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableFireWall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.gps.close");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.homekey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.longpower");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.mobile.data.disable");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableMobileData-error:"));
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
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.recentkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.shortpower");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.disable.Speech");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            Settings.System.putInt(c1110lh.f3188b, "roco_custom_usb_controller", 0);
            Intent intent = new Intent();
            intent.setAction("roco.usb.disable");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.downupkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            intent.setAction("roco.disable.apkname");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.backkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.bluetooth");
            c1110lh.f3187a.sendBroadcast(intent);
            new Thread(new RocoEnableBluetoothTask(c1110lh)).start();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.camera.open");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.url.start.iprule");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableFireWall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.gps.open");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.homekey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.longpower");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.mobile.data.enable");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableMobileData-error:"));
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
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.recentkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.shortpower");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.Speech");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            Settings.System.putInt(c1110lh.f3188b, "roco_custom_usb_controller", 1);
            Intent intent = new Intent();
            intent.setAction("roco.usb.enable");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.downupkey");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            Settings.System.putInt(f3301c.f3188b, "roco_custom_wifi_show", 1);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,hideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            return f3301c.m2317b(list);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.reset.factory");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,actionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        ArrayList arrayList = new ArrayList();
        try {
            if (!MobileSdkPlatformUtilities.m2273N(f3301c.m2322g())) {
                arrayList.addAll(f3301c.m2322g());
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,getUrlWhiteList-error:"));
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            RocoDeviceManager c1110lh = f3301c;
            if (c1110lh == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            intent.setAction("roco.enalbe.apkname");
            c1110lh.f3187a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("CubeImpl,actionEnableApp-error:"));
        }
    }
}
