package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.incar.mdm.MdmPolicyManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: ChuangQiImpl.java */
/* renamed from: com.huawei.hem.mc */
/* loaded from: classes.dex */
public class ChuangQiImpl extends AndroidImpl {

    /* renamed from: c */
    public static ChuangQiImpl f3256c;

    /* renamed from: b */
    public MdmPolicyManager f3257b;

    public ChuangQiImpl(Context context) {
        this.f3257b = new MdmPolicyManager(context);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---silentInstall");
            this.f3257b.silentInstall(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---silentInstall"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("ChuangQiImplgetAppWhiteList");
        try {
            return this.f3257b.getAppInstallWhiteList();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("ChuangQiImplgetAppWhiteList"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            LTKDateUtil.m1403m("ChuangQiImplsetSystemTime ");
            this.f3257b.setSysTime(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImplsetSystemTime "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---silentUninstall");
            this.f3257b.silentUninstall(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---silentUninstall"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        LTKDateUtil.m1403m("ChuangQiImpl---setUrlWhiteList");
        ArrayList arrayList = new ArrayList();
        arrayList.add("iptables -w -t filter -N  user_ip");
        arrayList.add("iptables -w -F user");
        arrayList.add("iptables -w -F user_ip");
        arrayList.add("iptables -w -D OUTPUT -j user_ip");
        arrayList.add("iptables -w -I OUTPUT  4  -j user_ip");
        arrayList.add("iptables -w -A user -j REJECT");
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
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
                LTKDateUtil.m1403m("ChuangQiImpl+originUrl+ " + str + " set white url  " + strReplace);
            }
            if (!TextUtils.isEmpty(strReplace)) {
                arrayList.add(strReplace);
            }
        }
        StringBuilder sbM1765j3 = CompilerOutline.m1765j(" ==> ");
        sbM1765j3.append(arrayList.toString());
        LTKDateUtil.m1403m(sbM1765j3.toString());
        try {
        } catch (Throwable th) {
            CompilerOutline.m1747E(th, CompilerOutline.m1765j("ChuangQiImpl set white url error "));
        }
        if (this.f3257b == null) {
            LTKDateUtil.m1403m("ChuangQiImpl set white url failed by object is empty");
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f3257b.setNetworkAccessRule((String) it.next());
        }
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            LTKDateUtil.m1403m("ChuangQiImplenableSdCard");
            this.f3257b.setSdcardStorageEnable(true);
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("enableSdCard");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("ChuangQiImpl", string);
            LTKDateUtil.m1411u("ChuangQiImpl", string);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---disableBack");
            this.f3257b.setBackButtonEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---disableBack"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpldisableBluetooth " + this.f3257b.setBluetoothEnable(false) + " " + this.f3257b.isBluetoothEnable());
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpldisableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---disableHome");
            this.f3257b.setHomeButtonEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---disableHome"));
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
        try {
            LTKDateUtil.m1403m("ChuangQiImplsetdisUsbStorageEnable");
            this.f3257b.setUsbStorageEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImplsetdisUsbStorageEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---disableRecent");
            this.f3257b.setRecentButtonEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---disableRecent"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setdisablePowerKeyEnable");
            this.f3257b.setPowerKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setdisablePowerKeyEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpldisAdbEnable disMtpEnable" + this.f3257b.setAdbEnable(false) + " " + this.f3257b.setMtpEnable(false));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpldisAdbEnable disMtpEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("ChuangQiImpl---disableVolume");
        try {
            this.f3257b.setVolumeDownKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---disableVolume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setAppFreeze");
            this.f3257b.setAppFreeze(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setAppFreeze"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---enableBack");
            this.f3257b.setBackButtonEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---enableBack"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpldisAdbEnable disMtpEnable" + this.f3257b.setBluetoothEnable(true) + " " + this.f3257b.isBluetoothEnable());
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpldisAdbEnable disMtpEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setHomeButtonEnable");
            this.f3257b.setHomeButtonEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setHomeButtonEnable"));
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
        try {
            LTKDateUtil.m1403m("ChuangQiImplsetUsbStorageEnable ");
            this.f3257b.setUsbStorageEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImplsetUsbStorageEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setRecentButtonEnable");
            this.f3257b.setRecentButtonEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setRecentButtonEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setPowerKeyEnable");
            this.f3257b.setPowerKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setPowerKeyEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            LTKDateUtil.m1403m("ChuangQiImplsetAdbEnable setMtpEnable" + this.f3257b.setAdbEnable(true) + " " + this.f3257b.setMtpEnable(true));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImplsetAdbEnable setMtpEnable"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("ChuangQiImpl---enableVolume");
        try {
            this.f3257b.setVolumeDownKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---enableVolume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("ChuangQiImplsetAppWhiteList");
        try {
            this.f3257b.setAppInstallWhiteList(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImplsetAppWhiteList"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("ChuangQiImpl---actionResetFactory");
        try {
            this.f3257b.setFactoryRest();
        } catch (Throwable th) {
            String string = th.toString();
            Log.e("ChuangQiImpl", string);
            LTKDateUtil.m1411u("ChuangQiImpl", string);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            LTKDateUtil.m1403m("ChuangQiImpl---setAppUnFreeze");
            this.f3257b.setAppUnFreeze(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("ChuangQiImpl---setAppUnFreeze"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            LTKDateUtil.m1403m("ChuangQiImpldisableSdCard");
            this.f3257b.setSdcardStorageEnable(false);
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("disableSdCard");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("ChuangQiImpl", string);
            LTKDateUtil.m1411u("ChuangQiImpl", string);
        }
    }
}
