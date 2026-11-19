package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: ZXKImpl.java */
/* renamed from: com.huawei.hem.ld */
/* loaded from: classes.dex */
public class ZXKImpl extends AndroidImpl {

    /* renamed from: b */
    public static ZXKImpl f3170b = new ZXKImpl();

    /* renamed from: c */
    public static Context f3171c;

    /* renamed from: d */
    public static ZxkSDK f3172d;

    /* renamed from: e */
    public static boolean f3173e;

    /* compiled from: ZXKImpl.java */
    /* renamed from: com.huawei.hem.ld$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3174a;

        public a(ZXKImpl c1106ld, List list) {
            this.f3174a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strReplace;
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -t filter -N  user_ip");
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -F user");
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -F user_ip");
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -D OUTPUT -j user_ip");
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -I OUTPUT  4  -j user_ip");
            ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, "iptables -w -A user -j REJECT");
            for (int i = 0; i < this.f3174a.size(); i++) {
                String str = (String) this.f3174a.get(i);
                String string = "";
                if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                    strReplace = "iptables -w -A user_ip -d # -j ACCEPT".replace("#", str);
                } else {
                    if (str.contains(".")) {
                        String[] strArrSplit = str.split("\\.");
                        int i2 = 0;
                        while (i2 < strArrSplit.length) {
                            int i3 = i2 + 1;
                            if (i3 == strArrSplit.length) {
                                StringBuilder sbM1765j = CompilerOutline.m1765j(string);
                                sbM1765j.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                                string = sbM1765j.toString();
                            } else {
                                String hexString = Integer.toHexString(strArrSplit[i3].length());
                                if (hexString.length() < 2) {
                                    hexString = CompilerOutline.m1760e(MessageService.MSG_DB_READY_REPORT, hexString);
                                }
                                StringBuilder sbM1765j2 = CompilerOutline.m1765j(string);
                                sbM1765j2.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                                sbM1765j2.append(hexString);
                                string = sbM1765j2.toString();
                            }
                            i2 = i3;
                        }
                    }
                    strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT".replace("#", string);
                }
                if (!TextUtils.isEmpty(strReplace)) {
                    ZXKImpl.f3172d.m3089b(ZXKImpl.f3171c, strReplace);
                }
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 == null) {
                throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
            }
            interfaceC1220q1.mo2533z0(list);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            ZxkSDK c1437yi = f3172d;
            Context context = f3171c;
            if (c1437yi.f4223a == null) {
                throw null;
            }
            Intent intent = new Intent("com.android.zxkmanager.executor");
            intent.putExtra("task", "silentInstallApplication");
            intent.putExtra("parameter", str);
            context.sendOrderedBroadcast(intent, null);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 != null) {
                return interfaceC1220q1.mo2532Q2();
            }
            throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ZXKImplgetAppWhiteList-error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        String[] strArrSplit;
        try {
            String str = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(j));
            if (!TextUtils.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length == 6) {
                f3172d.m3103p(f3171c, strArrSplit[0], strArrSplit[1], strArrSplit[2], strArrSplit[3], strArrSplit[4], strArrSplit[5]);
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplsetSystemTime-error:"));
        }
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3101n(f3171c, false);
            f3172d.m3100m(f3171c, false);
            m2308V0();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplsystemInit-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            ZxkSDK c1437yi = f3172d;
            Context context = f3171c;
            if (c1437yi.f4223a == null) {
                throw null;
            }
            Intent intent = new Intent("com.android.zxkmanager.executor");
            intent.putExtra("task", "silentUnInstallApplication");
            intent.putExtra("parameter", str);
            context.sendOrderedBroadcast(intent, null);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            new Thread(new a(this, list)).start();
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplsetUrlWhiteList-error:"));
            return false;
        }
    }

    /* renamed from: V0 */
    public void m2308V0() {
        try {
            f3172d.m3098k(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisable factory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3106s(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplshowWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3099l(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3172d.m3090c(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3091d(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3092e(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3093f(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3172d.m3094g(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            f3172d.m3095h(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableLongPressPower();
        disableVolume();
        disableShortPressPower();
        if (f3173e) {
            return;
        }
        try {
            f3172d.m3102o(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableNotification-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            f3172d.m3097j(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f3172d.m3096i(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3104q(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f3172d.m3105r(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            arrayList.add(str);
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 == null) {
                throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
            }
            interfaceC1220q1.mo2531G(arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3172d.m3090c(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3091d(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3092e(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3093f(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3172d.m3094g(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            f3172d.m3095h(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableLongPressPower();
        enableVolume();
        enableShortPressPower();
        if (f3173e) {
            return;
        }
        try {
            f3172d.m3102o(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableNotification-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            f3172d.m3097j(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f3172d.m3096i(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3104q(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f3172d.m3105r(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        try {
            f3172d.m3098k(f3171c, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplenable factory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 == null) {
                throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
            }
            interfaceC1220q1.mo2531G(list);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3106s(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplhideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return true;
            }
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 == null) {
                throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
            }
            interfaceC1220q1.addAppInstallWhiteList(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplsetAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            f3172d.m3098k(f3171c, true);
            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f3171c.getSystemService("device_policy");
            if (z) {
                try {
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
                    devicePolicyManager.wipeData(1);
                } catch (SecurityException e) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e);
                    e.printStackTrace();
                }
            } else {
                try {
                    devicePolicyManager.wipeData(0);
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                } catch (SecurityException e2) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e2);
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            arrayList.add(str);
            ZxkExecutorInterface interfaceC1220q1 = f3172d.f4225c;
            if (interfaceC1220q1 == null) {
                throw new NullPointerException("zxkExecutorService is not started, please execute the ZxkSDK.init() method !");
            }
            interfaceC1220q1.mo2533z0(arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImplactionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            if (f3173e) {
                return;
            }
            f3172d.m3099l(f3171c, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("ZXKImpldisableSdCard-error:"));
        }
    }
}
