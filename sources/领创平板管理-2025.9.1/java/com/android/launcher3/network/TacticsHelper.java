package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.DeviceSetting;
import com.android.launcher3.model.DeviceUse;
import com.android.launcher3.model.LTKTactics;
import com.android.launcher3.model.LauncherApp;
import com.android.launcher3.model.OtgSet;
import com.android.launcher3.model.ProtectEye;
import com.android.launcher3.model.PvList;
import com.android.launcher3.model.TacticDevice;
import com.android.launcher3.model.TacticsIllegal;
import com.android.launcher3.model.WorkTimeTactics;
import com.android.launcher3.network.params.TacticsParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.p027db.model.Illegal;
import com.android.launcher3.p027db.model.IllegalDao;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ItemAppDao;
import com.android.launcher3.p027db.model.ManageDevice;
import com.android.launcher3.p027db.model.ManageDeviceDao;
import com.android.launcher3.p027db.model.WeekTacticsDao;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0904de;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1174o5;
import com.huawei.hem.C1219q0;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1273s4;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1348v4;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hem.C1448z4;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class TacticsHelper {
    public static final String TAG = "TacticsHelper ";
    public static long sendTime;
    public GesturePasswordDao gesturePwdDao;
    public Context mContext;
    public C1255rb mHttpCore;
    public List<ItemApp> mustInstallApps;
    public C1424y5 userInfoUtil;

    public static class TacticsHolder {
        public static final TacticsHelper instance = new TacticsHelper();
    }

    private void checkAppMustUpdate(List<ItemApp> list) {
        for (ItemApp itemApp : list) {
            Context context = this.mContext;
            String packagename = itemApp.getPackagename();
            boolean z = false;
            try {
                if (context.getPackageManager().getPackageInfo(packagename, 8192).versionCode >= itemApp.getVersioncode()) {
                    z = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (!z) {
                C0850bc.m1403m("TacticsHelper have must installed app need notify appstore");
                C1174o5.m2428a(this.mContext);
                return;
            }
        }
    }

    private void checkHemActive() {
        if (C0850bc.f2294f.mo2066k()) {
            return;
        }
        HemLicenseManager hemLicenseManager = HemLicenseManager.getInstance(this.mContext);
        hemLicenseManager.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.d5
            @Override // com.huawei.hem.license.HemLicenseStatusListener
            public final void onStatus(int i, String str) {
                C0850bc.m1403m("TacticsHelper  -- hem msg = " + str + " -- msgCode = " + i);
            }
        });
        hemLicenseManager.activeLicense();
    }

    public static TacticsHelper getInstance() {
        return TacticsHolder.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handelTactics(LTKTactics lTKTactics) {
        handleWorkspace(lTKTactics.getWorkspace_tactics(), lTKTactics.isWorkspace_status());
        lTKTactics.setTotalApps(handleAppTactics(lTKTactics.isApp_status(), lTKTactics.getApp_tactics(), lTKTactics.getInterest_applist()));
        handleDeviceTactics(lTKTactics.isDevice_status(), lTKTactics.getDevice_tactics(), lTKTactics.getName());
        handleDeviceSetting(lTKTactics.getDevice_setting(), lTKTactics.getRelease_control());
        saveTactics(lTKTactics);
        C1423y4.m2959F(this.mContext);
        Context context = this.mContext;
        C0850bc.m1403m("send  refresh appstore broadcast");
        C1423y4.m2971R(context, "com.drupe.swd.launcher.action.whiteappupdate");
        checkAppMustUpdate(this.mustInstallApps);
        handleWifiTactics(lTKTactics.getWifi_tactics(), lTKTactics.isWifi_status());
    }

    private void handleAppIconStatus(DeviceSetting deviceSetting, int i) {
        int gallery_status = deviceSetting.getGallery_status();
        int camera_status = deviceSetting.getCamera_status();
        int logout_status = deviceSetting.getLogout_status();
        int alarm_clock_status = deviceSetting.getAlarm_clock_status();
        int calendar_status = deviceSetting.getCalendar_status();
        int hide_cleanup_status = deviceSetting.getHide_cleanup_status();
        int allow_change_password_status = deviceSetting.getAllow_change_password_status();
        int rotate_setting_status = deviceSetting.getRotate_setting_status();
        C1424y5 c1424y5 = this.userInfoUtil;
        if (c1424y5.f4152Z != hide_cleanup_status) {
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("cleanup_status", hide_cleanup_status);
            c0824ac.f2200b.commit();
            c1424y5.f4152Z = hide_cleanup_status;
        }
        C1424y5 c1424y52 = this.userInfoUtil;
        if (c1424y52.f4149W != gallery_status) {
            C0824ac c0824ac2 = c1424y52.f4130D;
            c0824ac2.f2200b.putInt("gallery_status", gallery_status);
            c0824ac2.f2200b.commit();
            c1424y52.f4149W = gallery_status;
        }
        C1424y5 c1424y53 = this.userInfoUtil;
        if (c1424y53.f4148V != camera_status) {
            C0824ac c0824ac3 = c1424y53.f4130D;
            c0824ac3.f2200b.putInt("camera_status", camera_status);
            c0824ac3.f2200b.commit();
            c1424y53.f4148V = camera_status;
        }
        C1424y5 c1424y54 = this.userInfoUtil;
        if (c1424y54.f4150X != alarm_clock_status) {
            C0824ac c0824ac4 = c1424y54.f4130D;
            c0824ac4.f2200b.putInt("alarm_clock_status", alarm_clock_status);
            c0824ac4.f2200b.commit();
            c1424y54.f4150X = alarm_clock_status;
        }
        C1424y5 c1424y55 = this.userInfoUtil;
        if (c1424y55.f4151Y != calendar_status) {
            C0824ac c0824ac5 = c1424y55.f4130D;
            c0824ac5.f2200b.putInt("calendar_status", calendar_status);
            c0824ac5.f2200b.commit();
            c1424y55.f4151Y = calendar_status;
        }
        C1424y5 c1424y56 = this.userInfoUtil;
        if (c1424y56.f4169i != logout_status) {
            c1424y56.f4169i = logout_status;
            C0824ac c0824ac6 = c1424y56.f4130D;
            c0824ac6.f2200b.putInt("logout_status", logout_status);
            c0824ac6.f2200b.commit();
        }
        C1424y5 c1424y57 = this.userInfoUtil;
        if (c1424y57.f4160d0 != allow_change_password_status) {
            c1424y57.f4160d0 = allow_change_password_status;
            C0824ac c0824ac7 = c1424y57.f4130D;
            c0824ac7.f2200b.putInt("allow_change_pwd_status", allow_change_password_status);
            c0824ac7.f2200b.commit();
        }
        C1424y5 c1424y58 = this.userInfoUtil;
        if (c1424y58.f4154a0 != rotate_setting_status) {
            c1424y58.f4154a0 = rotate_setting_status;
            C0824ac c0824ac8 = c1424y58.f4130D;
            c0824ac8.f2200b.putInt("rotate_setting_status", rotate_setting_status);
            c0824ac8.f2200b.commit();
        }
        C0850bc.m1403m("TacticsHelper gallery_status = " + gallery_status + " , camera_status = " + camera_status + " , logout_status = " + logout_status + " , alarm_clock_status = " + alarm_clock_status + " , calendar_status = " + calendar_status + " rotate_setting_status =" + rotate_setting_status);
        Context context = this.mContext;
        HashMap map = new HashMap();
        map.put("logout_status", Integer.valueOf(logout_status));
        Iterator it = ((ArrayList) C1219q0.m2529y()).iterator();
        while (it.hasNext()) {
            map.put((String) it.next(), Integer.valueOf(gallery_status));
        }
        Iterator it2 = ((ArrayList) C1219q0.m2528x()).iterator();
        while (it2.hasNext()) {
            map.put((String) it2.next(), Integer.valueOf(alarm_clock_status));
        }
        Iterator it3 = ((ArrayList) C1219q0.m2527w()).iterator();
        while (it3.hasNext()) {
            map.put((String) it3.next(), Integer.valueOf(camera_status));
        }
        Iterator it4 = ((ArrayList) C1219q0.m2526v()).iterator();
        while (it4.hasNext()) {
            map.put((String) it4.next(), Integer.valueOf(calendar_status));
        }
        map.put("com.android.launcher3.activity.gestrue.SettingPwdGestureActivity", Integer.valueOf(i));
        map.put("com.android.launcher3.activity.DataCleanActivity", Integer.valueOf(hide_cleanup_status));
        map.put("com.android.launcher3.activity.DeviceRotatingActivity", Integer.valueOf(rotate_setting_status));
        Intent intent = new Intent("com.android.launcher3.mdm.control_default_apps");
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        intent.putExtra("apps_status_list", arrayList);
        context.sendBroadcast(intent);
        C0850bc.m1403m(" send broadcast to isv notify system app icon hide");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.android.launcher3.p027db.model.ItemApp> handleAppTactics(boolean r21, com.android.launcher3.model.TacticApp r22, java.util.List<com.android.launcher3.p027db.model.ItemApp> r23) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.network.TacticsHelper.handleAppTactics(boolean, com.android.launcher3.model.TacticApp, java.util.List):java.util.List"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/network/TacticsHelper.smali:883
    }

    private void handleDataFlow(int i) {
        if (i == 1) {
            C0850bc.m1390A("TacticsHelper  -- enable data_flow_status...");
            C0850bc.f2294f.enableMobileData();
        } else {
            C0850bc.m1390A("TacticsHelper  -- disable data_flow_status...");
            C0850bc.f2294f.disableMobileData();
        }
        C1424y5 c1424y5 = this.userInfoUtil;
        if (c1424y5.f4188r0 != i) {
            c1424y5.f4188r0 = i;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("mobiledata_state", i);
            c0824ac.f2200b.commit();
        }
    }

    private void handleDeviceSetting(DeviceSetting deviceSetting, int i) {
        if (deviceSetting == null) {
            return;
        }
        if (i == 1) {
            ReciverPushHelper.getInstance().reportServer("command_release_control", 1, this.mContext);
        }
        handleSD(deviceSetting.getSdcard_and_otg());
        handleOTG(deviceSetting.getOtg_set());
        handlePhoneMMS(deviceSetting.getSimcard());
        handleDataFlow(deviceSetting.getData_flow_status());
        handleGesture(deviceSetting.getEnable_gesture_pwd_status());
        handleAppIconStatus(deviceSetting, deviceSetting.getEnable_gesture_pwd_status());
        C1424y5 c1424y5 = this.userInfoUtil;
        int school_class_display_status = deviceSetting.getSchool_class_display_status();
        if (c1424y5.f4143Q != school_class_display_status) {
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("school_class_info_status", school_class_display_status);
            c0824ac.f2200b.commit();
            c1424y5.f4143Q = school_class_display_status;
        }
        handleWifiAdvanced(deviceSetting.getEnable_wifi_advanced_status());
        handleGPS(deviceSetting.getEnable_gps_status());
        installSource(deviceSetting.getOnly_install_store_app_status());
        C1448z4.m3136b(deviceSetting.getKeep_alive_package());
        handleLauncherApp(deviceSetting.getLaunch_app());
        handleDuration(deviceSetting.getRemind_duration());
        handleEyeProtect(deviceSetting.getProtected_eyes_status());
        handleScreenShot(deviceSetting.getEnable_screenshots_status());
        C1424y5 c1424y52 = this.userInfoUtil;
        int enable_client_admin_status = deviceSetting.getEnable_client_admin_status();
        if (c1424y52.f4133G != enable_client_admin_status) {
            c1424y52.f4133G = enable_client_admin_status;
            C0824ac c0824ac2 = c1424y52.f4130D;
            c0824ac2.f2200b.putInt("enable_client_admin_status", enable_client_admin_status);
            c0824ac2.f2200b.commit();
        }
        C1424y5 c1424y53 = this.userInfoUtil;
        int logout_status = deviceSetting.getLogout_status();
        if (c1424y53.f4169i != logout_status) {
            c1424y53.f4169i = logout_status;
            C0824ac c0824ac3 = c1424y53.f4130D;
            c0824ac3.f2200b.putInt("logout_status", logout_status);
            c0824ac3.f2200b.commit();
        }
        if (deviceSetting.getDisable_reinstall_system_status() == 1) {
            C0850bc.f2294f.mo2046E();
        } else {
            C0850bc.f2294f.mo2084z();
        }
        if (deviceSetting.getEnable_system_upgrade_status() == 1) {
            C0850bc.f2294f.enableOTA();
        } else {
            C0850bc.f2294f.disableOTA();
        }
        C1424y5 c1424y54 = this.userInfoUtil;
        int show_privacy_statement_status = deviceSetting.getShow_privacy_statement_status();
        if (c1424y54.f4142P == show_privacy_statement_status) {
            return;
        }
        C0824ac c0824ac4 = c1424y54.f4130D;
        c0824ac4.f2200b.putInt("privacy_status", show_privacy_statement_status);
        c0824ac4.f2200b.commit();
        c1424y54.f4142P = show_privacy_statement_status;
    }

    private void handleDeviceTactics(boolean z, TacticDevice tacticDevice, String str) {
        if (!z) {
            C0850bc.m1403m("TacticsHelper  device manage disable");
            C1424y5 c1424y5 = this.userInfoUtil;
            if (c1424y5.f4127A != 0) {
                c1424y5.f4127A = 0;
                C0824ac c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putInt("bluetooth", 0);
                c0824ac.f2200b.commit();
            }
            C1219q0.m2521q(this.mContext, "command_bluetooth", 0);
            C1219q0.m2521q(this.mContext, "command_connect_usb", 0);
            C1219q0.m2521q(this.mContext, "command_wifi_switch", 1);
            C1219q0.m2521q(this.mContext, "command_recording", 1);
            C1219q0.m2521q(this.mContext, "command_camera", 1);
            return;
        }
        ManageDevice deviceManage = tacticDevice.getDeviceManage();
        C1424y5 c1424y52 = this.userInfoUtil;
        boolean zIsCommand_bluetooth = deviceManage.isCommand_bluetooth();
        if (c1424y52.f4127A != zIsCommand_bluetooth) {
            c1424y52.f4127A = zIsCommand_bluetooth ? 1 : 0;
            C0824ac c0824ac2 = c1424y52.f4130D;
            c0824ac2.f2200b.putInt("bluetooth", zIsCommand_bluetooth ? 1 : 0);
            c0824ac2.f2200b.commit();
        }
        C1219q0.m2521q(this.mContext, "command_bluetooth", deviceManage.isCommand_bluetooth() ? 1 : 0);
        C1219q0.m2521q(this.mContext, "command_connect_usb", deviceManage.isCommand_connect_usb() ? 1 : 0);
        C1219q0.m2521q(this.mContext, "command_wifi_switch", deviceManage.isCommand_wifi_switch() ? 1 : 0);
        C1219q0.m2521q(this.mContext, "command_recording", deviceManage.isCommand_recording() ? 1 : 0);
        C1219q0.m2521q(this.mContext, "command_camera", deviceManage.isCommand_camera() ? 1 : 0);
    }

    private void handleDuration(DeviceUse deviceUse) {
        if (deviceUse.getRemind_status() != 1) {
            this.userInfoUtil.m3057m0(0);
            C1273s4.m2677a().f3657a = 0;
            C0850bc.m1403m("EyeProtectedHelper update 0");
            return;
        }
        this.userInfoUtil.m3057m0(deviceUse.getDuration());
        C1273s4 c1273s4M2677a = C1273s4.m2677a();
        int duration = deviceUse.getDuration();
        c1273s4M2677a.f3657a = duration;
        C0850bc.m1403m("EyeProtectedHelper update " + duration);
    }

    private void handleEyeProtect(ProtectEye protectEye) {
        int distance_status = protectEye.getDistance_status();
        int sitting_position_status = protectEye.getSitting_position_status();
        int sensitive_status = protectEye.getSensitive_status();
        C0850bc.f2294f.mo2050J0(0, distance_status == 1);
        C0850bc.f2294f.mo2050J0(1, sitting_position_status == 1);
        C0850bc.f2294f.mo2050J0(2, sensitive_status == 1);
    }

    private void handleGPS(int i) {
        if (i == 1) {
            C0850bc.f2294f.enableGPS();
        } else {
            C0850bc.f2294f.disableGPS();
        }
        C1424y5 c1424y5 = this.userInfoUtil;
        if (c1424y5.f4201z != i) {
            c1424y5.f4201z = i;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("gps", i);
            c0824ac.f2200b.commit();
        }
    }

    private void handleGesture(int i) {
        this.userInfoUtil.m3035b0(i);
        if (i == 0) {
            GesturePassword gesturePasswordUnique = this.gesturePwdDao.queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(this.userInfoUtil.m3052k()), new WhereCondition[0]).unique();
            if (gesturePasswordUnique != null) {
                this.gesturePwdDao.deleteByKey(gesturePasswordUnique.getId());
            } else {
                C0850bc.m1390A("TacticsHelper  --  gesture password is closed unsuccessfully , the user may not have set a gesture password .");
            }
        }
    }

    private void handleLauncherApp(LauncherApp launcherApp) {
        C1424y5 c1424y5 = this.userInfoUtil;
        int launch_mode = launcherApp.getLaunch_mode();
        if (c1424y5.f4197w != launch_mode) {
            c1424y5.f4197w = launch_mode;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("launcher_start_mode", launch_mode);
            c0824ac.f2200b.commit();
        }
        if ("com.android.launcher3".equals(launcherApp.getLaunch_package())) {
            return;
        }
        C1424y5 c1424y52 = this.userInfoUtil;
        String launch_package = launcherApp.getLaunch_package();
        if (c1424y52.f4199x != launch_package) {
            c1424y52.f4199x = launch_package;
            C0824ac c0824ac2 = c1424y52.f4130D;
            c0824ac2.f2200b.putString("launcher_start_package", launch_package);
            c0824ac2.f2200b.commit();
        }
    }

    private void handleOTG(OtgSet otgSet) {
        List<PvList> pv_list = otgSet.getPv_list();
        if (otgSet.getStatus() == 1) {
            C0850bc.m1403m("TacticsHelper  ==== only enable otg ...");
            C0850bc.f2294f.enableOTG();
            C1424y5 c1424y5 = this.userInfoUtil;
            if (c1424y5.f4145S != 1) {
                c1424y5.f4145S = 1;
                C0824ac c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putInt("spf_key_otg_enable", 1);
                c0824ac.f2200b.commit();
            }
        } else {
            C0850bc.m1403m("TacticsHelper  -- only disable otg...");
            C0850bc.f2294f.disableOTG();
            C1424y5 c1424y52 = this.userInfoUtil;
            if (c1424y52.f4145S != 0) {
                c1424y52.f4145S = 0;
                C0824ac c0824ac2 = c1424y52.f4130D;
                c0824ac2.f2200b.putInt("spf_key_otg_enable", 0);
                c0824ac2.f2200b.commit();
            }
        }
        C1424y5 c1424y53 = this.userInfoUtil;
        String jSONString = JSON.toJSONString(pv_list);
        if (TextUtils.isEmpty(c1424y53.f4158c0) && TextUtils.isEmpty(jSONString)) {
            return;
        }
        if (TextUtils.isEmpty(c1424y53.f4158c0) || TextUtils.isEmpty(jSONString) || !c1424y53.f4158c0.equals(jSONString)) {
            c1424y53.f4158c0 = c1424y53.f4130D.f2199a.getString("pid_vid", jSONString);
        }
    }

    private void handlePhoneMMS(int i) {
        int iM3079z = this.userInfoUtil.m3079z();
        int iM3011F = this.userInfoUtil.m3011F();
        C0850bc.m1403m("TacticsHelper read isv phone status:" + iM3079z + " sms status:" + iM3011F);
        if (iM3079z == -1) {
            C1424y5 c1424y5 = this.userInfoUtil;
            if (c1424y5.f4171j != i) {
                c1424y5.f4171j = i;
                C0824ac c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putInt("speech_switch", i);
                c0824ac.f2200b.commit();
            }
            if (this.userInfoUtil.m3077x() == -1) {
                if (!C1219q0.m2524t()) {
                    List<String> listM2500B = C1219q0.m2500B();
                    if (i == 1) {
                        C0850bc.f2294f.mo1304B0(listM2500B);
                    } else {
                        C0850bc.f2294f.mo1326k0(listM2500B);
                    }
                } else if (i == 1) {
                    C0850bc.f2294f.enableSpeech();
                } else {
                    C0850bc.f2294f.disableSpeech();
                }
            }
        }
        if (iM3011F == -1 && this.userInfoUtil.m3010E() == -1) {
            if (C1219q0.m2525u()) {
                if (i == 1) {
                    C0850bc.f2294f.mo1322g0();
                    return;
                } else {
                    C0850bc.f2294f.mo1315S();
                    return;
                }
            }
            List<String> listM2499A = C1219q0.m2499A();
            if (i == 1) {
                C0850bc.f2294f.mo1304B0(listM2499A);
            } else {
                C0850bc.f2294f.mo1326k0(listM2499A);
            }
        }
    }

    private void handleSD(int i) {
        if (i == 1) {
            C0850bc.m1403m("TacticsHelper  -- only enable sdcard ...");
            C0850bc.f2294f.mo1319c(true);
        } else {
            C0850bc.m1403m("TacticsHelper  -- only disable sdcard ...");
            C0850bc.f2294f.mo1332z0(true);
        }
        C1424y5 c1424y5 = this.userInfoUtil;
        if (c1424y5.f4144R != i) {
            c1424y5.f4144R = i;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("sdcard_switch", i);
            c0824ac.f2200b.commit();
        }
    }

    private void handleScreenShot(int i) {
        if (this.userInfoUtil.m3054l() == -1) {
            if (i == 1) {
                C0850bc.f2294f.enableScreenShot();
            } else {
                C0850bc.f2294f.disableScreenShot();
            }
        }
    }

    private void handleWifiAdvanced(int i) {
        C1423y4.m2972S(i == 1);
        C1424y5 c1424y5 = this.userInfoUtil;
        if (c1424y5.f4200y != i) {
            c1424y5.f4200y = i;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("wifi_advance", i);
            c0824ac.f2200b.commit();
        }
    }

    private void handleWifiTactics(ArrayList<String> arrayList, boolean z) {
        if (!C0878ce.m1521n() && !C0878ce.m1519l()) {
            if (!z) {
                this.userInfoUtil.m3075v0("-1");
                return;
            } else {
                this.userInfoUtil.m3075v0(arrayList.toString());
                C1423y4.m2961H(this.mContext, arrayList);
                return;
            }
        }
        ArrayList<String> arrayListMo1347a0 = C0850bc.f2294f.mo1347a0();
        StringBuilder sbM1765j = C0948f6.m1765j("TacticsHelper last wifi ssids:");
        sbM1765j.append(AbstractC1102l9.m2272M(arrayListMo1347a0) ? "null" : arrayListMo1347a0);
        C0850bc.m1403m(sbM1765j.toString());
        C0850bc.f2294f.mo1349j0(arrayListMo1347a0);
        if (z) {
            C0850bc.f2294f.mo1354x(arrayList);
        }
    }

    private void handleWorkspace(WorkTimeTactics workTimeTactics, boolean z) {
        C1348v4 c1348v4 = C1348v4.b.f3925a;
        if (!z) {
            C0850bc.m1403m("TacticsHelper not set workspace time");
            c1348v4.f3921b = null;
            c1348v4.m2856c();
        } else if (workTimeTactics == null) {
            C0850bc.m1403m("TacticsHelper  set workspace time exception ");
            c1348v4.f3921b = null;
            c1348v4.m2856c();
        } else {
            C0850bc.m1403m("TacticsHelper  set workspace time");
            c1348v4.f3921b = workTimeTactics.getWorktime();
            c1348v4.m2856c();
            c1348v4.m2854a();
        }
    }

    private void installSource(int i) {
        if (i != 1) {
            C0850bc.f2294f.mo2045D0();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        if (!AbstractC1102l9.m2273N(null)) {
            arrayList.addAll(null);
        }
        C0850bc.f2294f.mo2076s0(arrayList);
    }

    private void saveTactics(LTKTactics lTKTactics) {
        TacticsIllegal illegal_tactics;
        WorkTimeTactics workspace_tactics;
        if (lTKTactics == null) {
            return;
        }
        C0850bc.m1403m("TacticsHelper save tactics");
        C1297t3 c1297t3M2715a = C1297t3.m2715a();
        WeekTacticsDao weekTacticsDao = c1297t3M2715a.f3751c.getWeekTacticsDao();
        weekTacticsDao.deleteAll();
        if (lTKTactics.isWorkspace_status() && (workspace_tactics = lTKTactics.getWorkspace_tactics()) != null) {
            weekTacticsDao.insert(workspace_tactics.getWorktime());
        }
        ItemAppDao itemAppDao = c1297t3M2715a.f3751c.getItemAppDao();
        itemAppDao.deleteAll();
        if (lTKTactics.isApp_status()) {
            List<ItemApp> totalApps = lTKTactics.getTotalApps();
            if (!AbstractC1102l9.m2273N(totalApps)) {
                itemAppDao.insertInTx(totalApps);
            }
        }
        ManageDeviceDao manageDeviceDao = c1297t3M2715a.f3751c.getManageDeviceDao();
        manageDeviceDao.deleteAll();
        if (lTKTactics.isDevice_status()) {
            manageDeviceDao.insert(lTKTactics.getDevice_tactics().getDeviceManage());
        }
        IllegalDao illegalDao = c1297t3M2715a.f3751c.getIllegalDao();
        illegalDao.deleteAll();
        ArrayList arrayList = new ArrayList();
        if (lTKTactics.isIllegal_status() && (illegal_tactics = lTKTactics.getIllegal_tactics()) != null) {
            Illegal already_root = illegal_tactics.getAlready_root();
            already_root.setName(TacticsIllegal.ROOT);
            Illegal change_simcard = illegal_tactics.getChange_simcard();
            change_simcard.setName("change_simcard");
            Illegal prohibited_app = illegal_tactics.getProhibited_app();
            prohibited_app.setName("prohibited_app");
            Illegal usb_to_pc = illegal_tactics.getUsb_to_pc();
            usb_to_pc.setName(TacticsIllegal.USB_TO_PC);
            illegalDao.insertInTx(already_root, change_simcard, prohibited_app, usb_to_pc);
            arrayList.add(already_root);
            arrayList.add(change_simcard);
            arrayList.add(prohibited_app);
            arrayList.add(usb_to_pc);
        }
        IllegalHelper.getInstance().updateData(arrayList);
    }

    public void request() {
        if (!C1423y4.m3004y()) {
            C0850bc.m1403m("TacticsHelper  no need request tactics");
            return;
        }
        checkHemActive();
        try {
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.TACTICS_METHOD);
            TacticsParams tacticsParams = new TacticsParams(this.mContext);
            tacticsParams.setEmail(this.userInfoUtil.m3052k());
            tacticsParams.setAndroid_id(C0904de.m1586c(this.mContext));
            v2Params.setParams(JSON.toJSONString(tacticsParams));
            C1255rb c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<LTKTactics>(LTKTactics.class) { // from class: com.android.launcher3.network.TacticsHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1393c("TacticsHelper pull tractics failed");
                    ExceptionHandler.handleException(TacticsHelper.this.mContext, response, true, true);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1393c("TacticsHelper pull tractics failed by net");
                }

                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(LTKTactics lTKTactics) {
                    C0850bc.m1403m("TacticsHelper pull tractics sucess");
                    TacticsHelper.this.handelTactics(lTKTactics);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void requestFromISV() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - sendTime > 60000) {
            C0850bc.m1403m("TacticsHelper refresh tactics by isv");
            sendTime = jCurrentTimeMillis;
            request();
        }
    }

    public TacticsHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        this.userInfoUtil = C1424y5.b.f4202a;
        this.mHttpCore = new C1255rb();
        this.gesturePwdDao = C1297t3.m2715a().m2719e();
        this.mustInstallApps = new ArrayList();
    }
}
