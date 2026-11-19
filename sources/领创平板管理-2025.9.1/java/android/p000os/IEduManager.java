package android.p000os;

import android.graphics.Bitmap;
import java.util.List;

/* loaded from: classes.dex */
public interface IEduManager extends IInterface {

    public static abstract class Stub extends Binder implements IEduManager {
        public static final String DESCRIPTOR = "android.os.IEduManager";
        public static final int TRANSACTION_AccessibilityServiceEnable = 172;
        public static final int TRANSACTION_AirPlaneOptionIsVisible = 249;
        public static final int TRANSACTION_AirPlaneOptionVisible = 248;
        public static final int TRANSACTION_AppAccessEnable = 307;
        public static final int TRANSACTION_AppAccessMobile = 309;
        public static final int TRANSACTION_AppAccessWlan = 308;
        public static final int TRANSACTION_AppAliveListAdd = 157;
        public static final int TRANSACTION_AppAliveListClear = 160;
        public static final int TRANSACTION_AppAliveListDel = 158;
        public static final int TRANSACTION_AppAliveListEnable = 153;
        public static final int TRANSACTION_AppAliveListGet = 155;
        public static final int TRANSACTION_AppAliveListIsEnable = 154;
        public static final int TRANSACTION_AppAliveListRemove = 159;
        public static final int TRANSACTION_AppAliveListSet = 156;
        public static final int TRANSACTION_AppAllRunningGet = 135;
        public static final int TRANSACTION_AppCacheClear = 169;
        public static final int TRANSACTION_AppCapScreenPermissionListAdd = 141;
        public static final int TRANSACTION_AppCapScreenPermissionListClear = 144;
        public static final int TRANSACTION_AppCapScreenPermissionListDel = 142;
        public static final int TRANSACTION_AppCapScreenPermissionListEnable = 137;
        public static final int TRANSACTION_AppCapScreenPermissionListGet = 139;
        public static final int TRANSACTION_AppCapScreenPermissionListIsEnable = 138;
        public static final int TRANSACTION_AppCapScreenPermissionListRemove = 143;
        public static final int TRANSACTION_AppCapScreenPermissionListSet = 140;
        public static final int TRANSACTION_AppDataClear = 170;
        public static final int TRANSACTION_AppDetailOptionIsVisible = 239;
        public static final int TRANSACTION_AppDetailOptionVisible = 238;
        public static final int TRANSACTION_AppDisableSet = 133;
        public static final int TRANSACTION_AppEnableSet = 134;
        public static final int TRANSACTION_AppForceStart = 131;
        public static final int TRANSACTION_AppForceStop = 132;
        public static final int TRANSACTION_AppFreezeListAdd = 119;
        public static final int TRANSACTION_AppFreezeListClear = 122;
        public static final int TRANSACTION_AppFreezeListDel = 120;
        public static final int TRANSACTION_AppFreezeListEnable = 115;
        public static final int TRANSACTION_AppFreezeListGet = 117;
        public static final int TRANSACTION_AppFreezeListIsEnable = 116;
        public static final int TRANSACTION_AppFreezeListRemove = 121;
        public static final int TRANSACTION_AppFreezeListSet = 118;
        public static final int TRANSACTION_AppGrantAllPermission = 173;
        public static final int TRANSACTION_AppGrantUsageStatePermission = 174;
        public static final int TRANSACTION_AppInstallBlackListAdd = 90;
        public static final int TRANSACTION_AppInstallBlackListClear = 93;
        public static final int TRANSACTION_AppInstallBlackListDel = 91;
        public static final int TRANSACTION_AppInstallBlackListEnable = 86;
        public static final int TRANSACTION_AppInstallBlackListGet = 88;
        public static final int TRANSACTION_AppInstallBlackListIsEnable = 87;
        public static final int TRANSACTION_AppInstallBlackListRemove = 92;
        public static final int TRANSACTION_AppInstallBlackListSet = 89;
        public static final int TRANSACTION_AppInstallWhiteListAdd = 82;
        public static final int TRANSACTION_AppInstallWhiteListClear = 85;
        public static final int TRANSACTION_AppInstallWhiteListDel = 83;
        public static final int TRANSACTION_AppInstallWhiteListEnable = 78;
        public static final int TRANSACTION_AppInstallWhiteListGet = 80;
        public static final int TRANSACTION_AppInstallWhiteListIsEnable = 79;
        public static final int TRANSACTION_AppInstallWhiteListRemove = 84;
        public static final int TRANSACTION_AppInstallWhiteListSet = 81;
        public static final int TRANSACTION_AppManualInstallEnable = 113;
        public static final int TRANSACTION_AppManualInstallIsEnable = 114;
        public static final int TRANSACTION_AppNetworkBlackListAdd = 286;
        public static final int TRANSACTION_AppNetworkBlackListClear = 290;
        public static final int TRANSACTION_AppNetworkBlackListDel = 287;
        public static final int TRANSACTION_AppNetworkBlackListEnable = 283;
        public static final int TRANSACTION_AppNetworkBlackListGet = 289;
        public static final int TRANSACTION_AppNetworkBlackListIsEnable = 284;
        public static final int TRANSACTION_AppNetworkBlackListRemove = 288;
        public static final int TRANSACTION_AppNetworkBlackListSet = 285;
        public static final int TRANSACTION_AppNetworkWhiteListAdd = 278;
        public static final int TRANSACTION_AppNetworkWhiteListClear = 282;
        public static final int TRANSACTION_AppNetworkWhiteListDel = 279;
        public static final int TRANSACTION_AppNetworkWhiteListEnable = 275;
        public static final int TRANSACTION_AppNetworkWhiteListGet = 281;
        public static final int TRANSACTION_AppNetworkWhiteListIsEnable = 276;
        public static final int TRANSACTION_AppNetworkWhiteListRemove = 280;
        public static final int TRANSACTION_AppNetworkWhiteListSet = 277;
        public static final int TRANSACTION_AppNotifyWhiteListAdd = 149;
        public static final int TRANSACTION_AppNotifyWhiteListClear = 152;
        public static final int TRANSACTION_AppNotifyWhiteListDel = 150;
        public static final int TRANSACTION_AppNotifyWhiteListEnable = 145;
        public static final int TRANSACTION_AppNotifyWhiteListGet = 147;
        public static final int TRANSACTION_AppNotifyWhiteListIsEnable = 146;
        public static final int TRANSACTION_AppNotifyWhiteListRemove = 151;
        public static final int TRANSACTION_AppNotifyWhiteListSet = 148;
        public static final int TRANSACTION_AppSilentInstall = 110;
        public static final int TRANSACTION_AppSilentInstallPackage = 112;
        public static final int TRANSACTION_AppSilentUninstall = 111;
        public static final int TRANSACTION_AppTopRunningGet = 136;
        public static final int TRANSACTION_AppTrustedListAdd = 165;
        public static final int TRANSACTION_AppTrustedListClear = 168;
        public static final int TRANSACTION_AppTrustedListDel = 166;
        public static final int TRANSACTION_AppTrustedListEnable = 161;
        public static final int TRANSACTION_AppTrustedListGet = 163;
        public static final int TRANSACTION_AppTrustedListIsEnable = 162;
        public static final int TRANSACTION_AppTrustedListRemove = 167;
        public static final int TRANSACTION_AppTrustedListSet = 164;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListAdd = 294;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListClear = 298;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListDel = 295;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListEnable = 291;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListGet = 297;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListIsEnable = 292;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListRemove = 296;
        public static final int TRANSACTION_AppUnBlockNetworkWhiteListSet = 293;
        public static final int TRANSACTION_AppUnFreezeListAdd = 127;
        public static final int TRANSACTION_AppUnFreezeListClear = 130;
        public static final int TRANSACTION_AppUnFreezeListDel = 128;
        public static final int TRANSACTION_AppUnFreezeListEnable = 123;
        public static final int TRANSACTION_AppUnFreezeListGet = 125;
        public static final int TRANSACTION_AppUnFreezeListIsEnable = 124;
        public static final int TRANSACTION_AppUnFreezeListRemove = 129;
        public static final int TRANSACTION_AppUnFreezeListSet = 126;
        public static final int TRANSACTION_AppUninstallBlackListAdd = 106;
        public static final int TRANSACTION_AppUninstallBlackListClear = 109;
        public static final int TRANSACTION_AppUninstallBlackListDel = 107;
        public static final int TRANSACTION_AppUninstallBlackListEnable = 102;
        public static final int TRANSACTION_AppUninstallBlackListIsEnable = 103;
        public static final int TRANSACTION_AppUninstallBlackListRemove = 108;
        public static final int TRANSACTION_AppUninstallBlackListSet = 105;
        public static final int TRANSACTION_AppUninstallWhiteListAdd = 98;
        public static final int TRANSACTION_AppUninstallWhiteListClear = 101;
        public static final int TRANSACTION_AppUninstallWhiteListDel = 99;
        public static final int TRANSACTION_AppUninstallWhiteListEnable = 94;
        public static final int TRANSACTION_AppUninstallWhiteListGet = 96;
        public static final int TRANSACTION_AppUninstallWhiteListIsEnable = 95;
        public static final int TRANSACTION_AppUninstallWhiteListRemove = 100;
        public static final int TRANSACTION_AppUninstallWhiteListSet = 97;
        public static final int TRANSACTION_ApppUninstallBlackListGet = 104;
        public static final int TRANSACTION_AutoBrightnessEnable = 391;
        public static final int TRANSACTION_AutoBrightnessIsEnable = 392;
        public static final int TRANSACTION_BackKeyEnable = 60;
        public static final int TRANSACTION_BackKeyIsEnable = 61;
        public static final int TRANSACTION_BluetoothBlackListAdd = 451;
        public static final int TRANSACTION_BluetoothBlackListClear = 454;
        public static final int TRANSACTION_BluetoothBlackListDel = 452;
        public static final int TRANSACTION_BluetoothBlackListEnable = 447;
        public static final int TRANSACTION_BluetoothBlackListGet = 449;
        public static final int TRANSACTION_BluetoothBlackListIsEnable = 448;
        public static final int TRANSACTION_BluetoothBlackListRemove = 453;
        public static final int TRANSACTION_BluetoothBlackListSet = 450;
        public static final int TRANSACTION_BluetoothEnable = 430;
        public static final int TRANSACTION_BluetoothFirewallEnable = 435;
        public static final int TRANSACTION_BluetoothFirewallIsEnable = 436;
        public static final int TRANSACTION_BluetoothFirewallTypeGet = 438;
        public static final int TRANSACTION_BluetoothFirewallTypeSet = 437;
        public static final int TRANSACTION_BluetoothIsEnable = 431;
        public static final int TRANSACTION_BluetoothOpen = 432;
        public static final int TRANSACTION_BluetoothTransEnable = 433;
        public static final int TRANSACTION_BluetoothTransIsEnable = 434;
        public static final int TRANSACTION_BluetoothWhiteListAdd = 443;
        public static final int TRANSACTION_BluetoothWhiteListClear = 446;
        public static final int TRANSACTION_BluetoothWhiteListDel = 444;
        public static final int TRANSACTION_BluetoothWhiteListEnable = 439;
        public static final int TRANSACTION_BluetoothWhiteListGet = 441;
        public static final int TRANSACTION_BluetoothWhiteListIsEnable = 440;
        public static final int TRANSACTION_BluetoothWhiteListRemove = 445;
        public static final int TRANSACTION_BluetoothWhiteListSet = 442;
        public static final int TRANSACTION_BrowserWhiteListClear = 306;
        public static final int TRANSACTION_BrowserWhiteListDel = 304;
        public static final int TRANSACTION_BrowserWhiteListEnable = 299;
        public static final int TRANSACTION_BrowserWhiteListGet = 301;
        public static final int TRANSACTION_BrowserWhiteListIsEnable = 300;
        public static final int TRANSACTION_BrowserWhiteListRemove = 305;
        public static final int TRANSACTION_BrowserWhiteListSet = 302;
        public static final int TRANSACTION_BrowserWhiteListadd = 303;
        public static final int TRANSACTION_CameraEnable = 17;
        public static final int TRANSACTION_CameraIsEnable = 18;
        public static final int TRANSACTION_CameraPhotoShutterSoundEnable = 19;
        public static final int TRANSACTION_CameraPhotoShutterSoundIsEnable = 20;
        public static final int TRANSACTION_CameraVideoShutterSoundEnable = 21;
        public static final int TRANSACTION_CameraVideoShutterSoundIsEnable = 22;
        public static final int TRANSACTION_DefAirPlaneEnable = 222;
        public static final int TRANSACTION_DefAirPlaneIsEnable = 223;
        public static final int TRANSACTION_DefApnEnable = 198;
        public static final int TRANSACTION_DefApnIsEnable = 199;
        public static final int TRANSACTION_DefAutoTimeEnable = 192;
        public static final int TRANSACTION_DefBatterySaverEnable = 224;
        public static final int TRANSACTION_DefBatterySaverIsEnable = 225;
        public static final int TRANSACTION_DefBrowserClear = 186;
        public static final int TRANSACTION_DefBrowserSet = 185;
        public static final int TRANSACTION_DefClipboardEnable = 212;
        public static final int TRANSACTION_DefClipboardIsEnable = 213;
        public static final int TRANSACTION_DefDeviceAdminActive = 226;
        public static final int TRANSACTION_DefDeviceOwner = 227;
        public static final int TRANSACTION_DefFactoryResetEnable = 177;
        public static final int TRANSACTION_DefFactoryResetIsEnable = 178;
        public static final int TRANSACTION_DefFileShareEnable = 218;
        public static final int TRANSACTION_DefFileShareIsEnable = 219;
        public static final int TRANSACTION_DefGpsLocationEnable = 216;
        public static final int TRANSACTION_DefGpsLocationIsEnable = 217;
        public static final int TRANSACTION_DefHomeLauncherClear = 184;
        public static final int TRANSACTION_DefHomeLauncherSet = 183;
        public static final int TRANSACTION_DefInputMethodClear = 190;
        public static final int TRANSACTION_DefInputMethodSet = 189;
        public static final int TRANSACTION_DefInstallUnknownApkEnable = 175;
        public static final int TRANSACTION_DefInstallUnknownApkIsEnable = 176;
        public static final int TRANSACTION_DefLockScreenEnable = 194;
        public static final int TRANSACTION_DefLockScreenIsEnable = 195;
        public static final int TRANSACTION_DefLockScreenNotifyEnable = 196;
        public static final int TRANSACTION_DefLockScreenNotifyIsEnable = 197;
        public static final int TRANSACTION_DefMultiUserEnable = 181;
        public static final int TRANSACTION_DefMultiUserIsEnable = 182;
        public static final int TRANSACTION_DefNoColorReadEnable = 232;
        public static final int TRANSACTION_DefNoColorReadIsEnable = 233;
        public static final int TRANSACTION_DefNotifySendEnable = 214;
        public static final int TRANSACTION_DefNotifySendIsEnable = 215;
        public static final int TRANSACTION_DefOtaUpdateEnable = 202;
        public static final int TRANSACTION_DefOtaUpdateIsEnable = 203;
        public static final int TRANSACTION_DefPowerOffEnable = 208;
        public static final int TRANSACTION_DefPowerOffIsEnable = 209;
        public static final int TRANSACTION_DefPowerSleepEnable = 206;
        public static final int TRANSACTION_DefPowerSleepIsEnable = 207;
        public static final int TRANSACTION_DefSafeModeEnable = 179;
        public static final int TRANSACTION_DefSafeModeIsEnable = 180;
        public static final int TRANSACTION_DefScreenColorAdjustEnable = 230;
        public static final int TRANSACTION_DefScreenColorAdjustIsEnable = 231;
        public static final int TRANSACTION_DefScreenShotEnable = 200;
        public static final int TRANSACTION_DefScreenShotIsEnable = 201;
        public static final int TRANSACTION_DefShutdownRebootEnable = 204;
        public static final int TRANSACTION_DefShutdownRebootIsEnable = 205;
        public static final int TRANSACTION_DefSystemSettingEnable = 228;
        public static final int TRANSACTION_DefSystemSettingIsEnable = 229;
        public static final int TRANSACTION_DefSystemUpdateEnable = 191;
        public static final int TRANSACTION_DefTimeSetEnable = 193;
        public static final int TRANSACTION_DefUnknowSourceDetailEnable = 220;
        public static final int TRANSACTION_DefUnknowSourceDetailIsEnable = 221;
        public static final int TRANSACTION_DefVideoPlayerClear = 188;
        public static final int TRANSACTION_DefVideoPlayerSet = 187;
        public static final int TRANSACTION_DefVolumeAdjustEnable = 210;
        public static final int TRANSACTION_DefVolumeAdjustIsEnable = 211;
        public static final int TRANSACTION_DevelopmentOptionIsVisible = 243;
        public static final int TRANSACTION_DevelopmentOptionVisible = 242;
        public static final int TRANSACTION_DistanceProtectionEnable = 393;
        public static final int TRANSACTION_DistanceProtectionIsEnable = 394;
        public static final int TRANSACTION_EduVersion = 1;
        public static final int TRANSACTION_ExternalStorageEnable = 13;
        public static final int TRANSACTION_ExternalStorageIsEnable = 14;
        public static final int TRANSACTION_EyeComfortEnable = 23;
        public static final int TRANSACTION_EyeComfortIsEnable = 24;
        public static final int TRANSACTION_FatigueAlertEnable = 395;
        public static final int TRANSACTION_FatigueAlertIsEnable = 396;
        public static final int TRANSACTION_FirmwareVersionGet = 4;
        public static final int TRANSACTION_GlobalNetworkBlackListAdd = 270;
        public static final int TRANSACTION_GlobalNetworkBlackListClear = 274;
        public static final int TRANSACTION_GlobalNetworkBlackListDel = 271;
        public static final int TRANSACTION_GlobalNetworkBlackListEnable = 267;
        public static final int TRANSACTION_GlobalNetworkBlackListGet = 273;
        public static final int TRANSACTION_GlobalNetworkBlackListIsEnable = 268;
        public static final int TRANSACTION_GlobalNetworkBlackListRemove = 272;
        public static final int TRANSACTION_GlobalNetworkBlackListSet = 269;
        public static final int TRANSACTION_GlobalNetworkWhiteListAdd = 263;
        public static final int TRANSACTION_GlobalNetworkWhiteListClear = 266;
        public static final int TRANSACTION_GlobalNetworkWhiteListDel = 264;
        public static final int TRANSACTION_GlobalNetworkWhiteListEnable = 259;
        public static final int TRANSACTION_GlobalNetworkWhiteListGet = 261;
        public static final int TRANSACTION_GlobalNetworkWhiteListIsEnable = 260;
        public static final int TRANSACTION_GlobalNetworkWhiteListRemove = 265;
        public static final int TRANSACTION_GlobalNetworkWhiteListSet = 262;
        public static final int TRANSACTION_GpsLocationIsOn = 30;
        public static final int TRANSACTION_GpsLocationOn = 29;
        public static final int TRANSACTION_HeadsetEnable = 27;
        public static final int TRANSACTION_HeadsetIsEnable = 28;
        public static final int TRANSACTION_HomeKeyEnable = 58;
        public static final int TRANSACTION_HomeKeyIsEnable = 59;
        public static final int TRANSACTION_MMSReceiveEnable = 334;
        public static final int TRANSACTION_MMSReceiveIsEnable = 335;
        public static final int TRANSACTION_MMSSendEnable = 332;
        public static final int TRANSACTION_MMSSendIsEnable = 333;
        public static final int TRANSACTION_MenuKeyEnable = 62;
        public static final int TRANSACTION_MenuKeyIsEnable = 63;
        public static final int TRANSACTION_MicphoneEnable = 25;
        public static final int TRANSACTION_MicphoneIsEnable = 26;
        public static final int TRANSACTION_MobileDataConnectivityEnable = 344;
        public static final int TRANSACTION_MobileDataConnectivityIsEnable = 345;
        public static final int TRANSACTION_MobileDataIsOn = 343;
        public static final int TRANSACTION_MobileDataOn = 342;
        public static final int TRANSACTION_NavBackButtonEnable = 52;
        public static final int TRANSACTION_NavBackButtonIsEnable = 53;
        public static final int TRANSACTION_NavBackButtonVisible = 44;
        public static final int TRANSACTION_NavBarHide = 35;
        public static final int TRANSACTION_NavBarIsShow = 34;
        public static final int TRANSACTION_NavBarShow = 33;
        public static final int TRANSACTION_NavHomeButtonEnable = 50;
        public static final int TRANSACTION_NavHomeButtonIsEnable = 51;
        public static final int TRANSACTION_NavHomeButtonVisible = 43;
        public static final int TRANSACTION_NavMenuButtonVisible = 46;
        public static final int TRANSACTION_NavRecentButtonEnable = 54;
        public static final int TRANSACTION_NavRecentButtonIsEnable = 55;
        public static final int TRANSACTION_NavRecentButtonVisible = 45;
        public static final int TRANSACTION_NavScreenshotButtonVisible = 49;
        public static final int TRANSACTION_NavVolumeDownButtonVisible = 48;
        public static final int TRANSACTION_NavVolumeUpButtonVisible = 47;
        public static final int TRANSACTION_NetworkAccessEnable = 252;
        public static final int TRANSACTION_NetworkFirewallEnable = 257;
        public static final int TRANSACTION_NetworkFirewallIsEnable = 258;
        public static final int TRANSACTION_NetworkFirewallTypeGet = 256;
        public static final int TRANSACTION_NetworkFirewallTypeSet = 255;
        public static final int TRANSACTION_NetworkFirewallWorkTypeGet = 254;
        public static final int TRANSACTION_NetworkFirewallWorkTypeSet = 253;
        public static final int TRANSACTION_NetworkResetOptionIsVisible = 251;
        public static final int TRANSACTION_NetworkResetOptionVisible = 250;
        public static final int TRANSACTION_PhoneCallBlackListAdd = 321;
        public static final int TRANSACTION_PhoneCallBlackListClear = 323;
        public static final int TRANSACTION_PhoneCallBlackListDel = 322;
        public static final int TRANSACTION_PhoneCallBlackListEnable = 317;
        public static final int TRANSACTION_PhoneCallBlackListGet = 319;
        public static final int TRANSACTION_PhoneCallBlackListIsEnable = 318;
        public static final int TRANSACTION_PhoneCallBlackListSet = 320;
        public static final int TRANSACTION_PhoneCallEnable = 324;
        public static final int TRANSACTION_PhoneCallIsEnable = 325;
        public static final int TRANSACTION_PhoneCallWhiteListAdd = 314;
        public static final int TRANSACTION_PhoneCallWhiteListClear = 316;
        public static final int TRANSACTION_PhoneCallWhiteListDel = 315;
        public static final int TRANSACTION_PhoneCallWhiteListEnable = 310;
        public static final int TRANSACTION_PhoneCallWhiteListGet = 312;
        public static final int TRANSACTION_PhoneCallWhiteListIsEnable = 311;
        public static final int TRANSACTION_PhoneCallWhiteListSet = 313;
        public static final int TRANSACTION_PhoneNumerGet = 341;
        public static final int TRANSACTION_PhoneVoiceInEnable = 328;
        public static final int TRANSACTION_PhoneVoiceInIsEnable = 329;
        public static final int TRANSACTION_PhoneVoiceOutEnable = 326;
        public static final int TRANSACTION_PhoneVoiceOutIsEnable = 327;
        public static final int TRANSACTION_PlatformNameGet = 2;
        public static final int TRANSACTION_PowerKeyEnable = 64;
        public static final int TRANSACTION_PowerKeyIsEnable = 65;
        public static final int TRANSACTION_PowerKeyLongPressEnable = 74;
        public static final int TRANSACTION_PowerKeyLongPressIsEnable = 75;
        public static final int TRANSACTION_PowerKeyShortPressEnable = 72;
        public static final int TRANSACTION_PowerKeyShortPressIsEnable = 73;
        public static final int TRANSACTION_ProjectNameGet = 3;
        public static final int TRANSACTION_RecentKeyEnable = 76;
        public static final int TRANSACTION_RecentKeyIsEnable = 77;
        public static final int TRANSACTION_RecentTaskAllClear = 171;
        public static final int TRANSACTION_ReverseAlertEnable = 397;
        public static final int TRANSACTION_ReverseAlertIsEnable = 398;
        public static final int TRANSACTION_SMSEnable = 330;
        public static final int TRANSACTION_SMSIsEnable = 331;
        public static final int TRANSACTION_SdcardStorageEnable = 9;
        public static final int TRANSACTION_SdcardStorageIsEnable = 10;
        public static final int TRANSACTION_SettingAllOptionIsVisible = 237;
        public static final int TRANSACTION_SettingAllOptionVisible = 236;
        public static final int TRANSACTION_SettingOptionIsVisible = 235;
        public static final int TRANSACTION_SettingOptionVisible = 234;
        public static final int TRANSACTION_SettingSearchOptionIsVisible = 245;
        public static final int TRANSACTION_SettingSearchOptionVisible = 244;
        public static final int TRANSACTION_ShakeAlertEnable = 399;
        public static final int TRANSACTION_ShakeAlertIsEnable = 400;
        public static final int TRANSACTION_SimEnable = 336;
        public static final int TRANSACTION_SimImeiGet = 338;
        public static final int TRANSACTION_SimImeiNumGet = 339;
        public static final int TRANSACTION_SimIsEnable = 337;
        public static final int TRANSACTION_SimSlotNumGet = 340;
        public static final int TRANSACTION_StatusBarDropEnable = 39;
        public static final int TRANSACTION_StatusBarDropIsEnable = 40;
        public static final int TRANSACTION_StatusBarExpandPanelEnable = 56;
        public static final int TRANSACTION_StatusBarExpandPanelIsEnable = 57;
        public static final int TRANSACTION_StatusBarHide = 38;
        public static final int TRANSACTION_StatusBarNotifyEnable = 41;
        public static final int TRANSACTION_StatusBarNotifyIsEnable = 42;
        public static final int TRANSACTION_StatusBarShow = 36;
        public static final int TRANSACTION_StatusbarIsShow = 37;
        public static final int TRANSACTION_SysBacklightEnable = 388;
        public static final int TRANSACTION_SysBacklightIsEnable = 389;
        public static final int TRANSACTION_SysBacklightValAdjust = 390;
        public static final int TRANSACTION_SysBootanimationClear = 375;
        public static final int TRANSACTION_SysBootanimationSet = 374;
        public static final int TRANSACTION_SysDateSet = 356;
        public static final int TRANSACTION_SysDateTimeSet = 358;
        public static final int TRANSACTION_SysDisplayDensityGet = 381;
        public static final int TRANSACTION_SysDisplaySizeGet = 380;
        public static final int TRANSACTION_SysDisplaySizeSet = 379;
        public static final int TRANSACTION_SysFaceRecognition = 370;
        public static final int TRANSACTION_SysFactoryRest = 350;
        public static final int TRANSACTION_SysFontSizeGet = 378;
        public static final int TRANSACTION_SysFontSizeSet = 376;
        public static final int TRANSACTION_SysFontSizeValueSet = 377;
        public static final int TRANSACTION_SysGoSleep = 348;
        public static final int TRANSACTION_SysIsRoot = 352;
        public static final int TRANSACTION_SysLockPassword = 373;
        public static final int TRANSACTION_SysMemoryClear = 362;
        public static final int TRANSACTION_SysPowerSaveMode = 371;
        public static final int TRANSACTION_SysReboot = 346;
        public static final int TRANSACTION_SysRoot = 351;
        public static final int TRANSACTION_SysScheduledPowerOff = 385;
        public static final int TRANSACTION_SysScheduledPowerOn = 384;
        public static final int TRANSACTION_SysScheduledTimePowerOff = 387;
        public static final int TRANSACTION_SysScheduledTimePowerOn = 386;
        public static final int TRANSACTION_SysScreenLock = 367;
        public static final int TRANSACTION_SysScreenLockClear = 361;
        public static final int TRANSACTION_SysScreenLockType = 369;
        public static final int TRANSACTION_SysScreenOff = 360;
        public static final int TRANSACTION_SysScreenOn = 359;
        public static final int TRANSACTION_SysScreenRecordStart = 382;
        public static final int TRANSACTION_SysScreenRecordStop = 383;
        public static final int TRANSACTION_SysScreenUnLock = 368;
        public static final int TRANSACTION_SysScreenshot = 353;
        public static final int TRANSACTION_SysScreenshotBmp = 354;
        public static final int TRANSACTION_SysScreenshotPath = 363;
        public static final int TRANSACTION_SysSerialnoGet = 366;
        public static final int TRANSACTION_SysShutdown = 347;
        public static final int TRANSACTION_SysTimeSet = 357;
        public static final int TRANSACTION_SysTimeStampSet = 355;
        public static final int TRANSACTION_SysVolumeMuteEnable = 364;
        public static final int TRANSACTION_SysVolumeMuteIsEnable = 365;
        public static final int TRANSACTION_SysWakeUp = 349;
        public static final int TRANSACTION_SysZenModeOn = 372;
        public static final int TRANSACTION_TouchScreenEnable = 31;
        public static final int TRANSACTION_TouchScreenIsEnable = 32;
        public static final int TRANSACTION_UsbDebugEnable = 5;
        public static final int TRANSACTION_UsbDebugIsEnable = 6;
        public static final int TRANSACTION_UsbMtpEnable = 7;
        public static final int TRANSACTION_UsbMtpIsEnable = 8;
        public static final int TRANSACTION_UsbOtgEnable = 15;
        public static final int TRANSACTION_UsbOtgIsEnable = 16;
        public static final int TRANSACTION_UsbStorageEnable = 11;
        public static final int TRANSACTION_UsbStorageIsEnable = 12;
        public static final int TRANSACTION_VolumeDownKeyEnable = 68;
        public static final int TRANSACTION_VolumeDownKeyIsEnable = 69;
        public static final int TRANSACTION_VolumeKeyEnable = 70;
        public static final int TRANSACTION_VolumeKeyIsEnable = 71;
        public static final int TRANSACTION_VolumeUpKeyEnable = 66;
        public static final int TRANSACTION_VolumeUpKeyIsEnable = 67;
        public static final int TRANSACTION_VpnOptionIsVisible = 247;
        public static final int TRANSACTION_VpnOptionVisible = 246;
        public static final int TRANSACTION_WifiAdvanceOptionIsVisible = 241;
        public static final int TRANSACTION_WifiAdvanceOptionVisible = 240;
        public static final int TRANSACTION_WifiBlackListAdd = 426;
        public static final int TRANSACTION_WifiBlackListClear = 429;
        public static final int TRANSACTION_WifiBlackListDel = 427;
        public static final int TRANSACTION_WifiBlackListEnable = 422;
        public static final int TRANSACTION_WifiBlackListGet = 424;
        public static final int TRANSACTION_WifiBlackListIsEnable = 423;
        public static final int TRANSACTION_WifiBlackListRemove = 428;
        public static final int TRANSACTION_WifiBlackListSet = 425;
        public static final int TRANSACTION_WifiConfigurationClear = 407;
        public static final int TRANSACTION_WifiConfigurationDel = 406;
        public static final int TRANSACTION_WifiConnectSSID = 405;
        public static final int TRANSACTION_WifiDirectEnable = 408;
        public static final int TRANSACTION_WifiDirectIsEnable = 409;
        public static final int TRANSACTION_WifiEnable = 401;
        public static final int TRANSACTION_WifiFirewallEnable = 410;
        public static final int TRANSACTION_WifiFirewallIsEnable = 411;
        public static final int TRANSACTION_WifiFirewallTypeGet = 413;
        public static final int TRANSACTION_WifiFirewallTypeSet = 412;
        public static final int TRANSACTION_WifiIsEnable = 402;
        public static final int TRANSACTION_WifiMacGet = 404;
        public static final int TRANSACTION_WifiOpen = 403;
        public static final int TRANSACTION_WifiWhiteListAdd = 418;
        public static final int TRANSACTION_WifiWhiteListClear = 421;
        public static final int TRANSACTION_WifiWhiteListDel = 419;
        public static final int TRANSACTION_WifiWhiteListEnable = 414;
        public static final int TRANSACTION_WifiWhiteListGet = 416;
        public static final int TRANSACTION_WifiWhiteListIsEnable = 415;
        public static final int TRANSACTION_WifiWhiteListRemove = 420;
        public static final int TRANSACTION_WifiWhiteListSet = 417;

        public static class Proxy implements IEduManager {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.p000os.IEduManager
            public int AccessibilityServiceEnable(String str, String str2, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(172, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AirPlaneOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(249, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AirPlaneOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(248, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAccessEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(307, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAccessMobile(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(309, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAccessWlan(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(308, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(157, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(160, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(158, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(153, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppAliveListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(155, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppAliveListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(154, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(159, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppAliveListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(156, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppAllRunningGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(135, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCacheClear(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(169, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(141, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(144, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(142, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(137, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppCapScreenPermissionListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(139, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppCapScreenPermissionListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(138, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(143, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppCapScreenPermissionListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(140, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppDataClear(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(170, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppDetailOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(239, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppDetailOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(238, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppDisableSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(133, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppEnableSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(134, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppForceStart(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(131, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppForceStop(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(132, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(119, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(122, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(120, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(115, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppFreezeListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(117, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppFreezeListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(116, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(121, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppFreezeListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(118, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppGrantAllPermission(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(173, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppGrantUsageStatePermission(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(174, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(90, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(93, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppInstallBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppInstallBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(92, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(89, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppInstallWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppInstallWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppInstallWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppManualInstallEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(113, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppManualInstallIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(114, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(286, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(290, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(287, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(283, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppNetworkBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(289, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppNetworkBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(284, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(288, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(285, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(278, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(282, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(279, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(275, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppNetworkWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(281, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppNetworkWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(276, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(280, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNetworkWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(277, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(149, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(152, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(150, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(145, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppNotifyWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(147, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppNotifyWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(146, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(151, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppNotifyWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(148, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppSilentInstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(110, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppSilentInstallPackage(String str, String str2, String str3, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(112, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppSilentUninstall(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(111, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String AppTopRunningGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(136, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(165, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(168, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(166, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(161, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppTrustedListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(163, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppTrustedListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(162, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(167, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppTrustedListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(164, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(294, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(298, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(295, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(291, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppUnBlockNetworkWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(297, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppUnBlockNetworkWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(292, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(296, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnBlockNetworkWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(293, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(127, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(130, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(128, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(123, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppUnFreezeListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(125, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppUnFreezeListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(124, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(129, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUnFreezeListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(126, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(106, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(109, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(107, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppUninstallBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(108, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(105, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(98, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(101, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(94, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> AppUninstallWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AppUninstallWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(95, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(100, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AppUninstallWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(97, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> ApppUninstallBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(104, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int AutoBrightnessEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(391, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean AutoBrightnessIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(392, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BackKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BackKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(451, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(454, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(452, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(447, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> BluetoothBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(449, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BluetoothBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(448, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(453, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(450, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(430, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothFirewallEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(435, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BluetoothFirewallIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(436, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothFirewallTypeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(438, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothFirewallTypeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(437, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BluetoothIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(431, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothOpen(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(432, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothTransEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(433, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BluetoothTransIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(434, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(443, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(446, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(444, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(439, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> BluetoothWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(441, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BluetoothWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(440, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(445, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BluetoothWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(442, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(306, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(304, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(299, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> BrowserWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(301, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean BrowserWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(300, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(305, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(302, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int BrowserWhiteListadd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(303, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int CameraEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean CameraIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int CameraPhotoShutterSoundEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean CameraPhotoShutterSoundIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int CameraVideoShutterSoundEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean CameraVideoShutterSoundIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefAirPlaneEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(222, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefAirPlaneIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(223, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefApnEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(198, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefApnIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(199, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefAutoTimeEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(192, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefBatterySaverEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(224, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefBatterySaverIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(225, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefBrowserClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(186, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefBrowserSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(185, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefClipboardEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(212, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefClipboardIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(213, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefDeviceAdminActive(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(226, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefDeviceOwner(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(227, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefFactoryResetEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(177, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefFactoryResetIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(178, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefFileShareEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(218, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefFileShareIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(219, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefGpsLocationEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(216, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefGpsLocationIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(217, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefHomeLauncherClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(184, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefHomeLauncherSet(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(183, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefInputMethodClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(190, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefInputMethodSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(189, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefInstallUnknownApkEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(175, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefInstallUnknownApkIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(176, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefLockScreenEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(194, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefLockScreenIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(195, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefLockScreenNotifyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(196, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefLockScreenNotifyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(197, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefMultiUserEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(181, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefMultiUserIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(182, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefNoColorReadEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(232, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefNoColorReadIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(233, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefNotifySendEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(214, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefNotifySendIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(215, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefOtaUpdateEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(202, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefOtaUpdateIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(203, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefPowerOffEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(208, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefPowerOffIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(209, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefPowerSleepEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(206, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefPowerSleepIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(207, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefSafeModeEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(179, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefSafeModeIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(180, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefScreenColorAdjustEnable(boolean z, int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(230, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefScreenColorAdjustIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(231, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefScreenShotEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(200, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefScreenShotIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(201, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefShutdownRebootEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(204, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefShutdownRebootIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(205, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefSystemSettingEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(228, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefSystemSettingIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(229, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefSystemUpdateEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(191, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefTimeSetEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(193, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefUnknowSourceDetailEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(220, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefUnknowSourceDetailIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(221, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefVideoPlayerClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(188, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefVideoPlayerSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(187, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DefVolumeAdjustEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(210, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DefVolumeAdjustIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(211, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DevelopmentOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(243, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DevelopmentOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(242, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int DistanceProtectionEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(393, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean DistanceProtectionIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(394, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String EduVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int ExternalStorageEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean ExternalStorageIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int EyeComfortEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean EyeComfortIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int FatigueAlertEnable(boolean z, int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(395, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean FatigueAlertIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(396, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String FirmwareVersionGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(270, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(274, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(271, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(267, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> GlobalNetworkBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(273, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean GlobalNetworkBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(268, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(272, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(269, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(263, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(266, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(264, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(259, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> GlobalNetworkWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(261, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean GlobalNetworkWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(260, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(265, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GlobalNetworkWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(262, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean GpsLocationIsOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int GpsLocationOn(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int HeadsetEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean HeadsetIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int HomeKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean HomeKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MMSReceiveEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(334, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MMSReceiveIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(335, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MMSSendEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(332, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MMSSendIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(333, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MenuKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MenuKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MicphoneEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MicphoneIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MobileDataConnectivityEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(344, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MobileDataConnectivityIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(345, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean MobileDataIsOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(343, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int MobileDataOn(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(342, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavBackButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NavBackButtonIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavBackButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavBarHide() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NavBarIsShow() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavBarShow() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavHomeButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NavHomeButtonIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavHomeButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavMenuButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavRecentButtonEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NavRecentButtonIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavRecentButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavScreenshotButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavVolumeDownButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NavVolumeUpButtonVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkAccessEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(252, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkFirewallEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(257, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NetworkFirewallIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(258, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkFirewallTypeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(256, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkFirewallTypeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(255, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkFirewallWorkTypeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(254, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkFirewallWorkTypeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(253, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean NetworkResetOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(251, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int NetworkResetOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(250, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(321, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(323, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(322, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(317, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> PhoneCallBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(319, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PhoneCallBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(318, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(320, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(324, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PhoneCallIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(325, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(314, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(316, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(315, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(310, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> PhoneCallWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(312, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PhoneCallWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(311, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneCallWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(313, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String PhoneNumerGet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(341, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneVoiceInEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(328, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PhoneVoiceInIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(329, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PhoneVoiceOutEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(326, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PhoneVoiceOutIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(327, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String PlatformNameGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PowerKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PowerKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PowerKeyLongPressEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PowerKeyLongPressIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int PowerKeyShortPressEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean PowerKeyShortPressIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String ProjectNameGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int RecentKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean RecentKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int RecentTaskAllClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(171, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int ReverseAlertEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(397, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean ReverseAlertIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(398, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SMSEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(330, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SMSIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(331, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SdcardStorageEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SdcardStorageIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SettingAllOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(237, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SettingAllOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(236, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SettingOptionIsVisible(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(235, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SettingOptionVisible(int i, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(234, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SettingSearchOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(245, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SettingSearchOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(244, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int ShakeAlertEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(399, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean ShakeAlertIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(400, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SimEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(336, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String SimImeiGet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(338, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SimImeiNumGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(339, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SimIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(337, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SimSlotNumGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(340, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int StatusBarDropEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean StatusBarDropIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int StatusBarExpandPanelEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean StatusBarExpandPanelIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int StatusBarHide() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int StatusBarNotifyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean StatusBarNotifyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int StatusBarShow() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean StatusbarIsShow() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysBacklightEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(388, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SysBacklightIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(389, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysBacklightValAdjust(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(390, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysBootanimationClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(375, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysBootanimationSet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(374, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysDateSet(int i, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(356, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysDateTimeSet(int i, int i2, int i3, int i4, int i5, int i6) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    this.mRemote.transact(358, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysDisplayDensityGet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(381, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysDisplaySizeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(380, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysDisplaySizeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(379, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysFaceRecognition() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(370, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysFactoryRest() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(350, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysFontSizeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(378, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysFontSizeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(376, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysFontSizeValueSet(float f) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    this.mRemote.transact(377, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysGoSleep() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(348, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SysIsRoot() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(352, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysLockPassword(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(373, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysMemoryClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(362, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysPowerSaveMode(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(371, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysReboot() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(346, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysRoot(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(351, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScheduledPowerOff(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(385, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScheduledPowerOn(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(384, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScheduledTimePowerOff(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeInt(z5 ? 1 : 0);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    parcelObtain.writeInt(z7 ? 1 : 0);
                    if (!z8) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(387, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScheduledTimePowerOn(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i3 = 1;
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeInt(z5 ? 1 : 0);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    parcelObtain.writeInt(z7 ? 1 : 0);
                    if (!z8) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(386, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenLock() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(367, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenLockClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(361, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenLockType(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(369, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenOff() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(360, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenOn() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(359, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenRecordStart(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(382, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String SysScreenRecordStop() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(383, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenUnLock() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(368, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysScreenshot(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(353, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public Bitmap SysScreenshotBmp() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(354, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String SysScreenshotPath() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(363, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String SysSerialnoGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(366, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysShutdown() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(347, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysTimeSet(int i, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(357, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysTimeStampSet(long j) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j);
                    this.mRemote.transact(355, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysVolumeMuteEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(364, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean SysVolumeMuteIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(365, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysWakeUp() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(349, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int SysZenModeOn(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(372, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int TouchScreenEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean TouchScreenIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int UsbDebugEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean UsbDebugIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int UsbMtpEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean UsbMtpIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int UsbOtgEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean UsbOtgIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int UsbStorageEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean UsbStorageIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int VolumeDownKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean VolumeDownKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int VolumeKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean VolumeKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int VolumeUpKeyEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean VolumeUpKeyIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean VpnOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(247, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int VpnOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(246, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiAdvanceOptionIsVisible() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(241, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiAdvanceOptionVisible(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(240, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(426, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(429, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(427, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(422, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> WifiBlackListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(424, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiBlackListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(423, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(428, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiBlackListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(425, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiConfigurationClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(407, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiConfigurationDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(406, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiConnectSSID(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(405, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiDirectEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(408, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiDirectIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(409, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(401, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiFirewallEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(410, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiFirewallIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(411, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiFirewallTypeGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(413, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiFirewallTypeSet(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(412, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(402, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public String WifiMacGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(404, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiOpen(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(403, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListAdd(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(418, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListClear() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(421, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListDel(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(419, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListEnable(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(414, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public List<String> WifiWhiteListGet() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(416, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public boolean WifiWhiteListIsEnable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(415, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListRemove(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(420, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.p000os.IEduManager
            public int WifiWhiteListSet(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(417, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEduManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEduManager)) ? new Proxy(iBinder) : (IEduManager) iInterfaceQueryLocalInterface;
        }

        private boolean onTransact$AccessibilityServiceEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAccessibilityServiceEnable = AccessibilityServiceEnable(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAccessibilityServiceEnable);
            return true;
        }

        private boolean onTransact$AirPlaneOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAirPlaneOptionVisible = AirPlaneOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAirPlaneOptionVisible);
            return true;
        }

        private boolean onTransact$AppAccessEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAccessEnable = AppAccessEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppAccessEnable);
            return true;
        }

        private boolean onTransact$AppAccessMobile$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAccessMobile = AppAccessMobile(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppAccessMobile);
            return true;
        }

        private boolean onTransact$AppAccessWlan$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAccessWlan = AppAccessWlan(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppAccessWlan);
            return true;
        }

        private boolean onTransact$AppAliveListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAliveListAdd = AppAliveListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppAliveListAdd);
            return true;
        }

        private boolean onTransact$AppAliveListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAliveListDel = AppAliveListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppAliveListDel);
            return true;
        }

        private boolean onTransact$AppAliveListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAliveListEnable = AppAliveListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppAliveListEnable);
            return true;
        }

        private boolean onTransact$AppAliveListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAliveListRemove = AppAliveListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppAliveListRemove);
            return true;
        }

        private boolean onTransact$AppAliveListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppAliveListSet = AppAliveListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppAliveListSet);
            return true;
        }

        private boolean onTransact$AppCacheClear$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppCacheClear = AppCacheClear(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppCacheClear);
            return true;
        }

        private boolean onTransact$AppDataClear$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppDataClear = AppDataClear(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppDataClear);
            return true;
        }

        private boolean onTransact$AppDetailOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppDetailOptionVisible = AppDetailOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppDetailOptionVisible);
            return true;
        }

        private boolean onTransact$AppGrantAllPermission$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppGrantAllPermission = AppGrantAllPermission(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppGrantAllPermission);
            return true;
        }

        private boolean onTransact$AppGrantUsageStatePermission$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppGrantUsageStatePermission = AppGrantUsageStatePermission(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppGrantUsageStatePermission);
            return true;
        }

        private boolean onTransact$AppNetworkBlackListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkBlackListAdd = AppNetworkBlackListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkBlackListAdd);
            return true;
        }

        private boolean onTransact$AppNetworkBlackListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkBlackListDel = AppNetworkBlackListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkBlackListDel);
            return true;
        }

        private boolean onTransact$AppNetworkBlackListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkBlackListEnable = AppNetworkBlackListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkBlackListEnable);
            return true;
        }

        private boolean onTransact$AppNetworkBlackListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkBlackListRemove = AppNetworkBlackListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkBlackListRemove);
            return true;
        }

        private boolean onTransact$AppNetworkBlackListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkBlackListSet = AppNetworkBlackListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkBlackListSet);
            return true;
        }

        private boolean onTransact$AppNetworkWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkWhiteListAdd = AppNetworkWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkWhiteListAdd);
            return true;
        }

        private boolean onTransact$AppNetworkWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkWhiteListDel = AppNetworkWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkWhiteListDel);
            return true;
        }

        private boolean onTransact$AppNetworkWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkWhiteListEnable = AppNetworkWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkWhiteListEnable);
            return true;
        }

        private boolean onTransact$AppNetworkWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkWhiteListRemove = AppNetworkWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkWhiteListRemove);
            return true;
        }

        private boolean onTransact$AppNetworkWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNetworkWhiteListSet = AppNetworkWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNetworkWhiteListSet);
            return true;
        }

        private boolean onTransact$AppNotifyWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNotifyWhiteListAdd = AppNotifyWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNotifyWhiteListAdd);
            return true;
        }

        private boolean onTransact$AppNotifyWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNotifyWhiteListDel = AppNotifyWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNotifyWhiteListDel);
            return true;
        }

        private boolean onTransact$AppNotifyWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppNotifyWhiteListRemove = AppNotifyWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppNotifyWhiteListRemove);
            return true;
        }

        private boolean onTransact$AppSilentInstall$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppSilentInstall = AppSilentInstall(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppSilentInstall);
            return true;
        }

        private boolean onTransact$AppSilentInstallPackage$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppSilentInstallPackage = AppSilentInstallPackage(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppSilentInstallPackage);
            return true;
        }

        private boolean onTransact$AppSilentUninstall$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppSilentUninstall = AppSilentUninstall(parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppSilentUninstall);
            return true;
        }

        private boolean onTransact$AppTrustedListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppTrustedListAdd = AppTrustedListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppTrustedListAdd);
            return true;
        }

        private boolean onTransact$AppTrustedListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppTrustedListDel = AppTrustedListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppTrustedListDel);
            return true;
        }

        private boolean onTransact$AppTrustedListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppTrustedListEnable = AppTrustedListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppTrustedListEnable);
            return true;
        }

        private boolean onTransact$AppTrustedListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppTrustedListRemove = AppTrustedListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppTrustedListRemove);
            return true;
        }

        private boolean onTransact$AppTrustedListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppTrustedListSet = AppTrustedListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppTrustedListSet);
            return true;
        }

        private boolean onTransact$AppUnBlockNetworkWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppUnBlockNetworkWhiteListAdd = AppUnBlockNetworkWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppUnBlockNetworkWhiteListAdd);
            return true;
        }

        private boolean onTransact$AppUnBlockNetworkWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppUnBlockNetworkWhiteListDel = AppUnBlockNetworkWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iAppUnBlockNetworkWhiteListDel);
            return true;
        }

        private boolean onTransact$AppUnBlockNetworkWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppUnBlockNetworkWhiteListEnable = AppUnBlockNetworkWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAppUnBlockNetworkWhiteListEnable);
            return true;
        }

        private boolean onTransact$AppUnBlockNetworkWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppUnBlockNetworkWhiteListRemove = AppUnBlockNetworkWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppUnBlockNetworkWhiteListRemove);
            return true;
        }

        private boolean onTransact$AppUnBlockNetworkWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAppUnBlockNetworkWhiteListSet = AppUnBlockNetworkWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iAppUnBlockNetworkWhiteListSet);
            return true;
        }

        private boolean onTransact$AutoBrightnessEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iAutoBrightnessEnable = AutoBrightnessEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iAutoBrightnessEnable);
            return true;
        }

        private boolean onTransact$BluetoothBlackListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothBlackListAdd = BluetoothBlackListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothBlackListAdd);
            return true;
        }

        private boolean onTransact$BluetoothBlackListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothBlackListDel = BluetoothBlackListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothBlackListDel);
            return true;
        }

        private boolean onTransact$BluetoothBlackListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothBlackListEnable = BluetoothBlackListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothBlackListEnable);
            return true;
        }

        private boolean onTransact$BluetoothBlackListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothBlackListRemove = BluetoothBlackListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothBlackListRemove);
            return true;
        }

        private boolean onTransact$BluetoothBlackListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothBlackListSet = BluetoothBlackListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothBlackListSet);
            return true;
        }

        private boolean onTransact$BluetoothEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothEnable = BluetoothEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothEnable);
            return true;
        }

        private boolean onTransact$BluetoothFirewallEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothFirewallEnable = BluetoothFirewallEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothFirewallEnable);
            return true;
        }

        private boolean onTransact$BluetoothFirewallTypeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothFirewallTypeSet = BluetoothFirewallTypeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothFirewallTypeSet);
            return true;
        }

        private boolean onTransact$BluetoothOpen$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothOpen = BluetoothOpen(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothOpen);
            return true;
        }

        private boolean onTransact$BluetoothTransEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothTransEnable = BluetoothTransEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothTransEnable);
            return true;
        }

        private boolean onTransact$BluetoothWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothWhiteListAdd = BluetoothWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothWhiteListAdd);
            return true;
        }

        private boolean onTransact$BluetoothWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothWhiteListDel = BluetoothWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothWhiteListDel);
            return true;
        }

        private boolean onTransact$BluetoothWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothWhiteListEnable = BluetoothWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothWhiteListEnable);
            return true;
        }

        private boolean onTransact$BluetoothWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothWhiteListRemove = BluetoothWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothWhiteListRemove);
            return true;
        }

        private boolean onTransact$BluetoothWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBluetoothWhiteListSet = BluetoothWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBluetoothWhiteListSet);
            return true;
        }

        private boolean onTransact$BrowserWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBrowserWhiteListDel = BrowserWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBrowserWhiteListDel);
            return true;
        }

        private boolean onTransact$BrowserWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBrowserWhiteListEnable = BrowserWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iBrowserWhiteListEnable);
            return true;
        }

        private boolean onTransact$BrowserWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBrowserWhiteListRemove = BrowserWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBrowserWhiteListRemove);
            return true;
        }

        private boolean onTransact$BrowserWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBrowserWhiteListSet = BrowserWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iBrowserWhiteListSet);
            return true;
        }

        private boolean onTransact$BrowserWhiteListadd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iBrowserWhiteListadd = BrowserWhiteListadd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iBrowserWhiteListadd);
            return true;
        }

        private boolean onTransact$DefAirPlaneEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefAirPlaneEnable = DefAirPlaneEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefAirPlaneEnable);
            return true;
        }

        private boolean onTransact$DefApnEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefApnEnable = DefApnEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefApnEnable);
            return true;
        }

        private boolean onTransact$DefAutoTimeEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefAutoTimeEnable = DefAutoTimeEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefAutoTimeEnable);
            return true;
        }

        private boolean onTransact$DefBatterySaverEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefBatterySaverEnable = DefBatterySaverEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefBatterySaverEnable);
            return true;
        }

        private boolean onTransact$DefBrowserSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefBrowserSet = DefBrowserSet(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefBrowserSet);
            return true;
        }

        private boolean onTransact$DefClipboardEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefClipboardEnable = DefClipboardEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefClipboardEnable);
            return true;
        }

        private boolean onTransact$DefDeviceAdminActive$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefDeviceAdminActive = DefDeviceAdminActive(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefDeviceAdminActive);
            return true;
        }

        private boolean onTransact$DefDeviceOwner$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefDeviceOwner = DefDeviceOwner(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefDeviceOwner);
            return true;
        }

        private boolean onTransact$DefFactoryResetEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefFactoryResetEnable = DefFactoryResetEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefFactoryResetEnable);
            return true;
        }

        private boolean onTransact$DefFileShareEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefFileShareEnable = DefFileShareEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefFileShareEnable);
            return true;
        }

        private boolean onTransact$DefGpsLocationEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefGpsLocationEnable = DefGpsLocationEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefGpsLocationEnable);
            return true;
        }

        private boolean onTransact$DefHomeLauncherSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefHomeLauncherSet = DefHomeLauncherSet(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefHomeLauncherSet);
            return true;
        }

        private boolean onTransact$DefInputMethodSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefInputMethodSet = DefInputMethodSet(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefInputMethodSet);
            return true;
        }

        private boolean onTransact$DefInstallUnknownApkEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefInstallUnknownApkEnable = DefInstallUnknownApkEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefInstallUnknownApkEnable);
            return true;
        }

        private boolean onTransact$DefLockScreenEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefLockScreenEnable = DefLockScreenEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefLockScreenEnable);
            return true;
        }

        private boolean onTransact$DefLockScreenNotifyEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefLockScreenNotifyEnable = DefLockScreenNotifyEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefLockScreenNotifyEnable);
            return true;
        }

        private boolean onTransact$DefMultiUserEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefMultiUserEnable = DefMultiUserEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefMultiUserEnable);
            return true;
        }

        private boolean onTransact$DefNoColorReadEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefNoColorReadEnable = DefNoColorReadEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefNoColorReadEnable);
            return true;
        }

        private boolean onTransact$DefNotifySendEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefNotifySendEnable = DefNotifySendEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefNotifySendEnable);
            return true;
        }

        private boolean onTransact$DefOtaUpdateEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefOtaUpdateEnable = DefOtaUpdateEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefOtaUpdateEnable);
            return true;
        }

        private boolean onTransact$DefPowerOffEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefPowerOffEnable = DefPowerOffEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefPowerOffEnable);
            return true;
        }

        private boolean onTransact$DefPowerSleepEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefPowerSleepEnable = DefPowerSleepEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefPowerSleepEnable);
            return true;
        }

        private boolean onTransact$DefSafeModeEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefSafeModeEnable = DefSafeModeEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefSafeModeEnable);
            return true;
        }

        private boolean onTransact$DefScreenColorAdjustEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefScreenColorAdjustEnable = DefScreenColorAdjustEnable(parcel.readInt() != 0, parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iDefScreenColorAdjustEnable);
            return true;
        }

        private boolean onTransact$DefScreenShotEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefScreenShotEnable = DefScreenShotEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefScreenShotEnable);
            return true;
        }

        private boolean onTransact$DefShutdownRebootEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefShutdownRebootEnable = DefShutdownRebootEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefShutdownRebootEnable);
            return true;
        }

        private boolean onTransact$DefSystemSettingEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefSystemSettingEnable = DefSystemSettingEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefSystemSettingEnable);
            return true;
        }

        private boolean onTransact$DefSystemUpdateEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefSystemUpdateEnable = DefSystemUpdateEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefSystemUpdateEnable);
            return true;
        }

        private boolean onTransact$DefTimeSetEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefTimeSetEnable = DefTimeSetEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefTimeSetEnable);
            return true;
        }

        private boolean onTransact$DefUnknowSourceDetailEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefUnknowSourceDetailEnable = DefUnknowSourceDetailEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefUnknowSourceDetailEnable);
            return true;
        }

        private boolean onTransact$DefVideoPlayerSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefVideoPlayerSet = DefVideoPlayerSet(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iDefVideoPlayerSet);
            return true;
        }

        private boolean onTransact$DefVolumeAdjustEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDefVolumeAdjustEnable = DefVolumeAdjustEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDefVolumeAdjustEnable);
            return true;
        }

        private boolean onTransact$DevelopmentOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDevelopmentOptionVisible = DevelopmentOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDevelopmentOptionVisible);
            return true;
        }

        private boolean onTransact$DistanceProtectionEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iDistanceProtectionEnable = DistanceProtectionEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iDistanceProtectionEnable);
            return true;
        }

        private boolean onTransact$FatigueAlertEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iFatigueAlertEnable = FatigueAlertEnable(parcel.readInt() != 0, parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iFatigueAlertEnable);
            return true;
        }

        private boolean onTransact$GlobalNetworkBlackListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkBlackListAdd = GlobalNetworkBlackListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkBlackListAdd);
            return true;
        }

        private boolean onTransact$GlobalNetworkBlackListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkBlackListDel = GlobalNetworkBlackListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkBlackListDel);
            return true;
        }

        private boolean onTransact$GlobalNetworkBlackListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkBlackListEnable = GlobalNetworkBlackListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkBlackListEnable);
            return true;
        }

        private boolean onTransact$GlobalNetworkBlackListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkBlackListRemove = GlobalNetworkBlackListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkBlackListRemove);
            return true;
        }

        private boolean onTransact$GlobalNetworkBlackListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkBlackListSet = GlobalNetworkBlackListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkBlackListSet);
            return true;
        }

        private boolean onTransact$GlobalNetworkWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkWhiteListAdd = GlobalNetworkWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkWhiteListAdd);
            return true;
        }

        private boolean onTransact$GlobalNetworkWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkWhiteListDel = GlobalNetworkWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkWhiteListDel);
            return true;
        }

        private boolean onTransact$GlobalNetworkWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkWhiteListEnable = GlobalNetworkWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkWhiteListEnable);
            return true;
        }

        private boolean onTransact$GlobalNetworkWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkWhiteListRemove = GlobalNetworkWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkWhiteListRemove);
            return true;
        }

        private boolean onTransact$GlobalNetworkWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iGlobalNetworkWhiteListSet = GlobalNetworkWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iGlobalNetworkWhiteListSet);
            return true;
        }

        private boolean onTransact$MMSReceiveEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iMMSReceiveEnable = MMSReceiveEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iMMSReceiveEnable);
            return true;
        }

        private boolean onTransact$MMSSendEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iMMSSendEnable = MMSSendEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iMMSSendEnable);
            return true;
        }

        private boolean onTransact$MobileDataConnectivityEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iMobileDataConnectivityEnable = MobileDataConnectivityEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iMobileDataConnectivityEnable);
            return true;
        }

        private boolean onTransact$MobileDataOn$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iMobileDataOn = MobileDataOn(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iMobileDataOn);
            return true;
        }

        private boolean onTransact$NetworkAccessEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iNetworkAccessEnable = NetworkAccessEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iNetworkAccessEnable);
            return true;
        }

        private boolean onTransact$NetworkFirewallEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iNetworkFirewallEnable = NetworkFirewallEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iNetworkFirewallEnable);
            return true;
        }

        private boolean onTransact$NetworkFirewallTypeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iNetworkFirewallTypeSet = NetworkFirewallTypeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iNetworkFirewallTypeSet);
            return true;
        }

        private boolean onTransact$NetworkFirewallWorkTypeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iNetworkFirewallWorkTypeSet = NetworkFirewallWorkTypeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iNetworkFirewallWorkTypeSet);
            return true;
        }

        private boolean onTransact$NetworkResetOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iNetworkResetOptionVisible = NetworkResetOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iNetworkResetOptionVisible);
            return true;
        }

        private boolean onTransact$PhoneCallBlackListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallBlackListAdd = PhoneCallBlackListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallBlackListAdd);
            return true;
        }

        private boolean onTransact$PhoneCallBlackListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallBlackListDel = PhoneCallBlackListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallBlackListDel);
            return true;
        }

        private boolean onTransact$PhoneCallBlackListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallBlackListEnable = PhoneCallBlackListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallBlackListEnable);
            return true;
        }

        private boolean onTransact$PhoneCallBlackListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallBlackListSet = PhoneCallBlackListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallBlackListSet);
            return true;
        }

        private boolean onTransact$PhoneCallEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallEnable = PhoneCallEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallEnable);
            return true;
        }

        private boolean onTransact$PhoneCallWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallWhiteListAdd = PhoneCallWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallWhiteListAdd);
            return true;
        }

        private boolean onTransact$PhoneCallWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallWhiteListDel = PhoneCallWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallWhiteListDel);
            return true;
        }

        private boolean onTransact$PhoneCallWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallWhiteListEnable = PhoneCallWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallWhiteListEnable);
            return true;
        }

        private boolean onTransact$PhoneCallWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneCallWhiteListSet = PhoneCallWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneCallWhiteListSet);
            return true;
        }

        private boolean onTransact$PhoneNumerGet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            String strPhoneNumerGet = PhoneNumerGet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeString(strPhoneNumerGet);
            return true;
        }

        private boolean onTransact$PhoneVoiceInEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneVoiceInEnable = PhoneVoiceInEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneVoiceInEnable);
            return true;
        }

        private boolean onTransact$PhoneVoiceOutEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iPhoneVoiceOutEnable = PhoneVoiceOutEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iPhoneVoiceOutEnable);
            return true;
        }

        private boolean onTransact$ReverseAlertEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iReverseAlertEnable = ReverseAlertEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iReverseAlertEnable);
            return true;
        }

        private boolean onTransact$SMSEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSMSEnable = SMSEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSMSEnable);
            return true;
        }

        private boolean onTransact$SettingAllOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSettingAllOptionVisible = SettingAllOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSettingAllOptionVisible);
            return true;
        }

        private boolean onTransact$SettingOptionIsVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            boolean zSettingOptionIsVisible = SettingOptionIsVisible(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(zSettingOptionIsVisible ? 1 : 0);
            return true;
        }

        private boolean onTransact$SettingOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSettingOptionVisible = SettingOptionVisible(parcel.readInt(), parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSettingOptionVisible);
            return true;
        }

        private boolean onTransact$SettingSearchOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSettingSearchOptionVisible = SettingSearchOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSettingSearchOptionVisible);
            return true;
        }

        private boolean onTransact$ShakeAlertEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iShakeAlertEnable = ShakeAlertEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iShakeAlertEnable);
            return true;
        }

        private boolean onTransact$SimEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSimEnable = SimEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSimEnable);
            return true;
        }

        private boolean onTransact$SimImeiGet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            String strSimImeiGet = SimImeiGet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeString(strSimImeiGet);
            return true;
        }

        private boolean onTransact$SysBacklightEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysBacklightEnable = SysBacklightEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysBacklightEnable);
            return true;
        }

        private boolean onTransact$SysBacklightValAdjust$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysBacklightValAdjust = SysBacklightValAdjust(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysBacklightValAdjust);
            return true;
        }

        private boolean onTransact$SysBootanimationSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysBootanimationSet = SysBootanimationSet(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iSysBootanimationSet);
            return true;
        }

        private boolean onTransact$SysDateSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysDateSet = SysDateSet(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysDateSet);
            return true;
        }

        private boolean onTransact$SysDateTimeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysDateTimeSet = SysDateTimeSet(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysDateTimeSet);
            return true;
        }

        private boolean onTransact$SysDisplayDensityGet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysDisplayDensityGet = SysDisplayDensityGet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysDisplayDensityGet);
            return true;
        }

        private boolean onTransact$SysDisplaySizeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysDisplaySizeSet = SysDisplaySizeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysDisplaySizeSet);
            return true;
        }

        private boolean onTransact$SysFontSizeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysFontSizeSet = SysFontSizeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysFontSizeSet);
            return true;
        }

        private boolean onTransact$SysFontSizeValueSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysFontSizeValueSet = SysFontSizeValueSet(parcel.readFloat());
            parcel2.writeNoException();
            parcel2.writeInt(iSysFontSizeValueSet);
            return true;
        }

        private boolean onTransact$SysLockPassword$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysLockPassword = SysLockPassword(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iSysLockPassword);
            return true;
        }

        private boolean onTransact$SysPowerSaveMode$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysPowerSaveMode = SysPowerSaveMode(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysPowerSaveMode);
            return true;
        }

        private boolean onTransact$SysRoot$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysRoot = SysRoot(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysRoot);
            return true;
        }

        private boolean onTransact$SysScheduledPowerOff$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScheduledPowerOff = SysScheduledPowerOff(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysScheduledPowerOff);
            return true;
        }

        private boolean onTransact$SysScheduledPowerOn$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScheduledPowerOn = SysScheduledPowerOn(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysScheduledPowerOn);
            return true;
        }

        private boolean onTransact$SysScheduledTimePowerOff$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScheduledTimePowerOff = SysScheduledTimePowerOff(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysScheduledTimePowerOff);
            return true;
        }

        private boolean onTransact$SysScheduledTimePowerOn$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScheduledTimePowerOn = SysScheduledTimePowerOn(parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysScheduledTimePowerOn);
            return true;
        }

        private boolean onTransact$SysScreenLockType$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScreenLockType = SysScreenLockType(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysScreenLockType);
            return true;
        }

        private boolean onTransact$SysScreenRecordStart$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScreenRecordStart = SysScreenRecordStart(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysScreenRecordStart);
            return true;
        }

        private boolean onTransact$SysScreenshot$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysScreenshot = SysScreenshot(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iSysScreenshot);
            return true;
        }

        private boolean onTransact$SysTimeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysTimeSet = SysTimeSet(parcel.readInt(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iSysTimeSet);
            return true;
        }

        private boolean onTransact$SysTimeStampSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysTimeStampSet = SysTimeStampSet(parcel.readLong());
            parcel2.writeNoException();
            parcel2.writeInt(iSysTimeStampSet);
            return true;
        }

        private boolean onTransact$SysVolumeMuteEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysVolumeMuteEnable = SysVolumeMuteEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysVolumeMuteEnable);
            return true;
        }

        private boolean onTransact$SysZenModeOn$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iSysZenModeOn = SysZenModeOn(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iSysZenModeOn);
            return true;
        }

        private boolean onTransact$VpnOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iVpnOptionVisible = VpnOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iVpnOptionVisible);
            return true;
        }

        private boolean onTransact$WifiAdvanceOptionVisible$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiAdvanceOptionVisible = WifiAdvanceOptionVisible(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiAdvanceOptionVisible);
            return true;
        }

        private boolean onTransact$WifiBlackListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiBlackListAdd = WifiBlackListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiBlackListAdd);
            return true;
        }

        private boolean onTransact$WifiBlackListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiBlackListDel = WifiBlackListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiBlackListDel);
            return true;
        }

        private boolean onTransact$WifiBlackListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiBlackListEnable = WifiBlackListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiBlackListEnable);
            return true;
        }

        private boolean onTransact$WifiBlackListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiBlackListRemove = WifiBlackListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiBlackListRemove);
            return true;
        }

        private boolean onTransact$WifiBlackListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiBlackListSet = WifiBlackListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiBlackListSet);
            return true;
        }

        private boolean onTransact$WifiConfigurationDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiConfigurationDel = WifiConfigurationDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiConfigurationDel);
            return true;
        }

        private boolean onTransact$WifiConnectSSID$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiConnectSSID = WifiConnectSSID(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiConnectSSID);
            return true;
        }

        private boolean onTransact$WifiDirectEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiDirectEnable = WifiDirectEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiDirectEnable);
            return true;
        }

        private boolean onTransact$WifiEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiEnable = WifiEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiEnable);
            return true;
        }

        private boolean onTransact$WifiFirewallEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiFirewallEnable = WifiFirewallEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiFirewallEnable);
            return true;
        }

        private boolean onTransact$WifiFirewallTypeSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiFirewallTypeSet = WifiFirewallTypeSet(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiFirewallTypeSet);
            return true;
        }

        private boolean onTransact$WifiOpen$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiOpen = WifiOpen(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiOpen);
            return true;
        }

        private boolean onTransact$WifiWhiteListAdd$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiWhiteListAdd = WifiWhiteListAdd(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiWhiteListAdd);
            return true;
        }

        private boolean onTransact$WifiWhiteListDel$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiWhiteListDel = WifiWhiteListDel(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiWhiteListDel);
            return true;
        }

        private boolean onTransact$WifiWhiteListEnable$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiWhiteListEnable = WifiWhiteListEnable(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(iWifiWhiteListEnable);
            return true;
        }

        private boolean onTransact$WifiWhiteListRemove$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiWhiteListRemove = WifiWhiteListRemove(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiWhiteListRemove);
            return true;
        }

        private boolean onTransact$WifiWhiteListSet$(Parcel parcel, Parcel parcel2) {
            parcel.enforceInterface(DESCRIPTOR);
            int iWifiWhiteListSet = WifiWhiteListSet(parcel.createStringArrayList());
            parcel2.writeNoException();
            parcel2.writeInt(iWifiWhiteListSet);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strEduVersion = EduVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(strEduVersion);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strPlatformNameGet = PlatformNameGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strPlatformNameGet);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strProjectNameGet = ProjectNameGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strProjectNameGet);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strFirmwareVersionGet = FirmwareVersionGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strFirmwareVersionGet);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUsbDebugEnable = UsbDebugEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUsbDebugEnable);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUsbDebugIsEnable = UsbDebugIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zUsbDebugIsEnable ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUsbMtpEnable = UsbMtpEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUsbMtpEnable);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUsbMtpIsEnable = UsbMtpIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zUsbMtpIsEnable ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSdcardStorageEnable = SdcardStorageEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSdcardStorageEnable);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSdcardStorageIsEnable = SdcardStorageIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSdcardStorageIsEnable ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUsbStorageEnable = UsbStorageEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUsbStorageEnable);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUsbStorageIsEnable = UsbStorageIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zUsbStorageIsEnable ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iExternalStorageEnable = ExternalStorageEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iExternalStorageEnable);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zExternalStorageIsEnable = ExternalStorageIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zExternalStorageIsEnable ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iUsbOtgEnable = UsbOtgEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iUsbOtgEnable);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUsbOtgIsEnable = UsbOtgIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zUsbOtgIsEnable ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCameraEnable = CameraEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCameraEnable);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCameraIsEnable = CameraIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCameraIsEnable ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCameraPhotoShutterSoundEnable = CameraPhotoShutterSoundEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCameraPhotoShutterSoundEnable);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCameraPhotoShutterSoundIsEnable = CameraPhotoShutterSoundIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCameraPhotoShutterSoundIsEnable ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCameraVideoShutterSoundEnable = CameraVideoShutterSoundEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCameraVideoShutterSoundEnable);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCameraVideoShutterSoundIsEnable = CameraVideoShutterSoundIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCameraVideoShutterSoundIsEnable ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iEyeComfortEnable = EyeComfortEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iEyeComfortEnable);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEyeComfortIsEnable = EyeComfortIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zEyeComfortIsEnable ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMicphoneEnable = MicphoneEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iMicphoneEnable);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMicphoneIsEnable = MicphoneIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMicphoneIsEnable ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iHeadsetEnable = HeadsetEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iHeadsetEnable);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHeadsetIsEnable = HeadsetIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHeadsetIsEnable ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iGpsLocationOn = GpsLocationOn(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iGpsLocationOn);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zGpsLocationIsOn = GpsLocationIsOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zGpsLocationIsOn ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iTouchScreenEnable = TouchScreenEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iTouchScreenEnable);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zTouchScreenIsEnable = TouchScreenIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zTouchScreenIsEnable ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavBarShow = NavBarShow();
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavBarShow);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNavBarIsShow = NavBarIsShow();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNavBarIsShow ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavBarHide = NavBarHide();
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavBarHide);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStatusBarShow = StatusBarShow();
                    parcel2.writeNoException();
                    parcel2.writeInt(iStatusBarShow);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStatusbarIsShow = StatusbarIsShow();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStatusbarIsShow ? 1 : 0);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStatusBarHide = StatusBarHide();
                    parcel2.writeNoException();
                    parcel2.writeInt(iStatusBarHide);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStatusBarDropEnable = StatusBarDropEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStatusBarDropEnable);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStatusBarDropIsEnable = StatusBarDropIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStatusBarDropIsEnable ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStatusBarNotifyEnable = StatusBarNotifyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStatusBarNotifyEnable);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStatusBarNotifyIsEnable = StatusBarNotifyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStatusBarNotifyIsEnable ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavHomeButtonVisible = NavHomeButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavHomeButtonVisible);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavBackButtonVisible = NavBackButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavBackButtonVisible);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavRecentButtonVisible = NavRecentButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavRecentButtonVisible);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavMenuButtonVisible = NavMenuButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavMenuButtonVisible);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavVolumeUpButtonVisible = NavVolumeUpButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavVolumeUpButtonVisible);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavVolumeDownButtonVisible = NavVolumeDownButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavVolumeDownButtonVisible);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavScreenshotButtonVisible = NavScreenshotButtonVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavScreenshotButtonVisible);
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavHomeButtonEnable = NavHomeButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavHomeButtonEnable);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNavHomeButtonIsEnable = NavHomeButtonIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNavHomeButtonIsEnable ? 1 : 0);
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavBackButtonEnable = NavBackButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavBackButtonEnable);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNavBackButtonIsEnable = NavBackButtonIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNavBackButtonIsEnable ? 1 : 0);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNavRecentButtonEnable = NavRecentButtonEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iNavRecentButtonEnable);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNavRecentButtonIsEnable = NavRecentButtonIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNavRecentButtonIsEnable ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStatusBarExpandPanelEnable = StatusBarExpandPanelEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStatusBarExpandPanelEnable);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStatusBarExpandPanelIsEnable = StatusBarExpandPanelIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStatusBarExpandPanelIsEnable ? 1 : 0);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iHomeKeyEnable = HomeKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iHomeKeyEnable);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHomeKeyIsEnable = HomeKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHomeKeyIsEnable ? 1 : 0);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBackKeyEnable = BackKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iBackKeyEnable);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBackKeyIsEnable = BackKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBackKeyIsEnable ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMenuKeyEnable = MenuKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iMenuKeyEnable);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMenuKeyIsEnable = MenuKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMenuKeyIsEnable ? 1 : 0);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPowerKeyEnable = PowerKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iPowerKeyEnable);
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPowerKeyIsEnable = PowerKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPowerKeyIsEnable ? 1 : 0);
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVolumeUpKeyEnable = VolumeUpKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iVolumeUpKeyEnable);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zVolumeUpKeyIsEnable = VolumeUpKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zVolumeUpKeyIsEnable ? 1 : 0);
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVolumeDownKeyEnable = VolumeDownKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iVolumeDownKeyEnable);
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zVolumeDownKeyIsEnable = VolumeDownKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zVolumeDownKeyIsEnable ? 1 : 0);
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVolumeKeyEnable = VolumeKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iVolumeKeyEnable);
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zVolumeKeyIsEnable = VolumeKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zVolumeKeyIsEnable ? 1 : 0);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPowerKeyShortPressEnable = PowerKeyShortPressEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iPowerKeyShortPressEnable);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPowerKeyShortPressIsEnable = PowerKeyShortPressIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPowerKeyShortPressIsEnable ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPowerKeyLongPressEnable = PowerKeyLongPressEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iPowerKeyLongPressEnable);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPowerKeyLongPressIsEnable = PowerKeyLongPressIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPowerKeyLongPressIsEnable ? 1 : 0);
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRecentKeyEnable = RecentKeyEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iRecentKeyEnable);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRecentKeyIsEnable = RecentKeyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zRecentKeyIsEnable ? 1 : 0);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListEnable = AppInstallWhiteListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListEnable);
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppInstallWhiteListIsEnable = AppInstallWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppInstallWhiteListIsEnable ? 1 : 0);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppInstallWhiteListGet = AppInstallWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppInstallWhiteListGet);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListSet = AppInstallWhiteListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListSet);
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListAdd = AppInstallWhiteListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListAdd);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListDel = AppInstallWhiteListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListDel);
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListRemove = AppInstallWhiteListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListRemove);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallWhiteListClear = AppInstallWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallWhiteListClear);
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListEnable = AppInstallBlackListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListEnable);
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppInstallBlackListIsEnable = AppInstallBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppInstallBlackListIsEnable ? 1 : 0);
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppInstallBlackListGet = AppInstallBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppInstallBlackListGet);
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListSet = AppInstallBlackListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListSet);
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListAdd = AppInstallBlackListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListAdd);
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListDel = AppInstallBlackListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListDel);
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListRemove = AppInstallBlackListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListRemove);
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppInstallBlackListClear = AppInstallBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppInstallBlackListClear);
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListEnable = AppUninstallWhiteListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListEnable);
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppUninstallWhiteListIsEnable = AppUninstallWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppUninstallWhiteListIsEnable ? 1 : 0);
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppUninstallWhiteListGet = AppUninstallWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppUninstallWhiteListGet);
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListSet = AppUninstallWhiteListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListSet);
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListAdd = AppUninstallWhiteListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListAdd);
                    return true;
                case 99:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListDel = AppUninstallWhiteListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListDel);
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListRemove = AppUninstallWhiteListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListRemove);
                    return true;
                case 101:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallWhiteListClear = AppUninstallWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallWhiteListClear);
                    return true;
                case 102:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListEnable = AppUninstallBlackListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListEnable);
                    return true;
                case 103:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppUninstallBlackListIsEnable = AppUninstallBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppUninstallBlackListIsEnable ? 1 : 0);
                    return true;
                case 104:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listApppUninstallBlackListGet = ApppUninstallBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listApppUninstallBlackListGet);
                    return true;
                case 105:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListSet = AppUninstallBlackListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListSet);
                    return true;
                case 106:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListAdd = AppUninstallBlackListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListAdd);
                    return true;
                case 107:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListDel = AppUninstallBlackListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListDel);
                    return true;
                case 108:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListRemove = AppUninstallBlackListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListRemove);
                    return true;
                case 109:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUninstallBlackListClear = AppUninstallBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUninstallBlackListClear);
                    return true;
                case 110:
                    return onTransact$AppSilentInstall$(parcel, parcel2);
                case 111:
                    return onTransact$AppSilentUninstall$(parcel, parcel2);
                case 112:
                    return onTransact$AppSilentInstallPackage$(parcel, parcel2);
                case 113:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppManualInstallEnable = AppManualInstallEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppManualInstallEnable);
                    return true;
                case 114:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppManualInstallIsEnable = AppManualInstallIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppManualInstallIsEnable ? 1 : 0);
                    return true;
                case 115:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListEnable = AppFreezeListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListEnable);
                    return true;
                case 116:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppFreezeListIsEnable = AppFreezeListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppFreezeListIsEnable ? 1 : 0);
                    return true;
                case 117:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppFreezeListGet = AppFreezeListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppFreezeListGet);
                    return true;
                case 118:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListSet = AppFreezeListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListSet);
                    return true;
                case 119:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListAdd = AppFreezeListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListAdd);
                    return true;
                case 120:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListDel = AppFreezeListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListDel);
                    return true;
                case 121:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListRemove = AppFreezeListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListRemove);
                    return true;
                case 122:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppFreezeListClear = AppFreezeListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppFreezeListClear);
                    return true;
                case 123:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListEnable = AppUnFreezeListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListEnable);
                    return true;
                case 124:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppUnFreezeListIsEnable = AppUnFreezeListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppUnFreezeListIsEnable ? 1 : 0);
                    return true;
                case 125:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppUnFreezeListGet = AppUnFreezeListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppUnFreezeListGet);
                    return true;
                case 126:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListSet = AppUnFreezeListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListSet);
                    return true;
                case 127:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListAdd = AppUnFreezeListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListAdd);
                    return true;
                case 128:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListDel = AppUnFreezeListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListDel);
                    return true;
                case 129:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListRemove = AppUnFreezeListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListRemove);
                    return true;
                case 130:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnFreezeListClear = AppUnFreezeListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnFreezeListClear);
                    return true;
                case 131:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppForceStart = AppForceStart(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppForceStart);
                    return true;
                case 132:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppForceStop = AppForceStop(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppForceStop);
                    return true;
                case 133:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppDisableSet = AppDisableSet(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppDisableSet);
                    return true;
                case 134:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppEnableSet = AppEnableSet(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppEnableSet);
                    return true;
                case 135:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppAllRunningGet = AppAllRunningGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppAllRunningGet);
                    return true;
                case 136:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strAppTopRunningGet = AppTopRunningGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strAppTopRunningGet);
                    return true;
                case 137:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListEnable = AppCapScreenPermissionListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListEnable);
                    return true;
                case 138:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppCapScreenPermissionListIsEnable = AppCapScreenPermissionListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppCapScreenPermissionListIsEnable ? 1 : 0);
                    return true;
                case 139:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppCapScreenPermissionListGet = AppCapScreenPermissionListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppCapScreenPermissionListGet);
                    return true;
                case 140:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListSet = AppCapScreenPermissionListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListSet);
                    return true;
                case 141:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListAdd = AppCapScreenPermissionListAdd(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListAdd);
                    return true;
                case 142:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListDel = AppCapScreenPermissionListDel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListDel);
                    return true;
                case 143:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListRemove = AppCapScreenPermissionListRemove(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListRemove);
                    return true;
                case 144:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppCapScreenPermissionListClear = AppCapScreenPermissionListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppCapScreenPermissionListClear);
                    return true;
                case 145:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppNotifyWhiteListEnable = AppNotifyWhiteListEnable(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppNotifyWhiteListEnable);
                    return true;
                case 146:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppNotifyWhiteListIsEnable = AppNotifyWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppNotifyWhiteListIsEnable ? 1 : 0);
                    return true;
                case 147:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppNotifyWhiteListGet = AppNotifyWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppNotifyWhiteListGet);
                    return true;
                case 148:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppNotifyWhiteListSet = AppNotifyWhiteListSet(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppNotifyWhiteListSet);
                    return true;
                case 149:
                    return onTransact$AppNotifyWhiteListAdd$(parcel, parcel2);
                case 150:
                    return onTransact$AppNotifyWhiteListDel$(parcel, parcel2);
                case 151:
                    return onTransact$AppNotifyWhiteListRemove$(parcel, parcel2);
                case 152:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppNotifyWhiteListClear = AppNotifyWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppNotifyWhiteListClear);
                    return true;
                case 153:
                    return onTransact$AppAliveListEnable$(parcel, parcel2);
                case 154:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppAliveListIsEnable = AppAliveListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppAliveListIsEnable ? 1 : 0);
                    return true;
                case 155:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppAliveListGet = AppAliveListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppAliveListGet);
                    return true;
                case 156:
                    return onTransact$AppAliveListSet$(parcel, parcel2);
                case 157:
                    return onTransact$AppAliveListAdd$(parcel, parcel2);
                case 158:
                    return onTransact$AppAliveListDel$(parcel, parcel2);
                case 159:
                    return onTransact$AppAliveListRemove$(parcel, parcel2);
                case 160:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppAliveListClear = AppAliveListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppAliveListClear);
                    return true;
                case 161:
                    return onTransact$AppTrustedListEnable$(parcel, parcel2);
                case 162:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppTrustedListIsEnable = AppTrustedListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppTrustedListIsEnable ? 1 : 0);
                    return true;
                case 163:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppTrustedListGet = AppTrustedListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppTrustedListGet);
                    return true;
                case 164:
                    return onTransact$AppTrustedListSet$(parcel, parcel2);
                case 165:
                    return onTransact$AppTrustedListAdd$(parcel, parcel2);
                case 166:
                    return onTransact$AppTrustedListDel$(parcel, parcel2);
                case 167:
                    return onTransact$AppTrustedListRemove$(parcel, parcel2);
                case 168:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppTrustedListClear = AppTrustedListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppTrustedListClear);
                    return true;
                case 169:
                    return onTransact$AppCacheClear$(parcel, parcel2);
                case 170:
                    return onTransact$AppDataClear$(parcel, parcel2);
                case 171:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRecentTaskAllClear = RecentTaskAllClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iRecentTaskAllClear);
                    return true;
                case 172:
                    return onTransact$AccessibilityServiceEnable$(parcel, parcel2);
                case 173:
                    return onTransact$AppGrantAllPermission$(parcel, parcel2);
                case 174:
                    return onTransact$AppGrantUsageStatePermission$(parcel, parcel2);
                case 175:
                    return onTransact$DefInstallUnknownApkEnable$(parcel, parcel2);
                case 176:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefInstallUnknownApkIsEnable = DefInstallUnknownApkIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefInstallUnknownApkIsEnable ? 1 : 0);
                    return true;
                case 177:
                    return onTransact$DefFactoryResetEnable$(parcel, parcel2);
                case 178:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefFactoryResetIsEnable = DefFactoryResetIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefFactoryResetIsEnable ? 1 : 0);
                    return true;
                case 179:
                    return onTransact$DefSafeModeEnable$(parcel, parcel2);
                case 180:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefSafeModeIsEnable = DefSafeModeIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefSafeModeIsEnable ? 1 : 0);
                    return true;
                case 181:
                    return onTransact$DefMultiUserEnable$(parcel, parcel2);
                case 182:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefMultiUserIsEnable = DefMultiUserIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefMultiUserIsEnable ? 1 : 0);
                    return true;
                case 183:
                    return onTransact$DefHomeLauncherSet$(parcel, parcel2);
                case 184:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDefHomeLauncherClear = DefHomeLauncherClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iDefHomeLauncherClear);
                    return true;
                case 185:
                    return onTransact$DefBrowserSet$(parcel, parcel2);
                case 186:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDefBrowserClear = DefBrowserClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iDefBrowserClear);
                    return true;
                case 187:
                    return onTransact$DefVideoPlayerSet$(parcel, parcel2);
                case 188:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDefVideoPlayerClear = DefVideoPlayerClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iDefVideoPlayerClear);
                    return true;
                case 189:
                    return onTransact$DefInputMethodSet$(parcel, parcel2);
                case 190:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iDefInputMethodClear = DefInputMethodClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iDefInputMethodClear);
                    return true;
                case 191:
                    return onTransact$DefSystemUpdateEnable$(parcel, parcel2);
                case 192:
                    return onTransact$DefAutoTimeEnable$(parcel, parcel2);
                case 193:
                    return onTransact$DefTimeSetEnable$(parcel, parcel2);
                case 194:
                    return onTransact$DefLockScreenEnable$(parcel, parcel2);
                case 195:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefLockScreenIsEnable = DefLockScreenIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefLockScreenIsEnable ? 1 : 0);
                    return true;
                case 196:
                    return onTransact$DefLockScreenNotifyEnable$(parcel, parcel2);
                case 197:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefLockScreenNotifyIsEnable = DefLockScreenNotifyIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefLockScreenNotifyIsEnable ? 1 : 0);
                    return true;
                case 198:
                    return onTransact$DefApnEnable$(parcel, parcel2);
                case 199:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefApnIsEnable = DefApnIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefApnIsEnable ? 1 : 0);
                    return true;
                case 200:
                    return onTransact$DefScreenShotEnable$(parcel, parcel2);
                case 201:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefScreenShotIsEnable = DefScreenShotIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefScreenShotIsEnable ? 1 : 0);
                    return true;
                case 202:
                    return onTransact$DefOtaUpdateEnable$(parcel, parcel2);
                case 203:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefOtaUpdateIsEnable = DefOtaUpdateIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefOtaUpdateIsEnable ? 1 : 0);
                    return true;
                case 204:
                    return onTransact$DefShutdownRebootEnable$(parcel, parcel2);
                case 205:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefShutdownRebootIsEnable = DefShutdownRebootIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefShutdownRebootIsEnable ? 1 : 0);
                    return true;
                case 206:
                    return onTransact$DefPowerSleepEnable$(parcel, parcel2);
                case 207:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefPowerSleepIsEnable = DefPowerSleepIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefPowerSleepIsEnable ? 1 : 0);
                    return true;
                case 208:
                    return onTransact$DefPowerOffEnable$(parcel, parcel2);
                case 209:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefPowerOffIsEnable = DefPowerOffIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefPowerOffIsEnable ? 1 : 0);
                    return true;
                case 210:
                    return onTransact$DefVolumeAdjustEnable$(parcel, parcel2);
                case 211:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefVolumeAdjustIsEnable = DefVolumeAdjustIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefVolumeAdjustIsEnable ? 1 : 0);
                    return true;
                case 212:
                    return onTransact$DefClipboardEnable$(parcel, parcel2);
                case 213:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefClipboardIsEnable = DefClipboardIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefClipboardIsEnable ? 1 : 0);
                    return true;
                case 214:
                    return onTransact$DefNotifySendEnable$(parcel, parcel2);
                case 215:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefNotifySendIsEnable = DefNotifySendIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefNotifySendIsEnable ? 1 : 0);
                    return true;
                case 216:
                    return onTransact$DefGpsLocationEnable$(parcel, parcel2);
                case 217:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefGpsLocationIsEnable = DefGpsLocationIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefGpsLocationIsEnable ? 1 : 0);
                    return true;
                case 218:
                    return onTransact$DefFileShareEnable$(parcel, parcel2);
                case 219:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefFileShareIsEnable = DefFileShareIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefFileShareIsEnable ? 1 : 0);
                    return true;
                case 220:
                    return onTransact$DefUnknowSourceDetailEnable$(parcel, parcel2);
                case 221:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefUnknowSourceDetailIsEnable = DefUnknowSourceDetailIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefUnknowSourceDetailIsEnable ? 1 : 0);
                    return true;
                case 222:
                    return onTransact$DefAirPlaneEnable$(parcel, parcel2);
                case 223:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefAirPlaneIsEnable = DefAirPlaneIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefAirPlaneIsEnable ? 1 : 0);
                    return true;
                case 224:
                    return onTransact$DefBatterySaverEnable$(parcel, parcel2);
                case 225:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefBatterySaverIsEnable = DefBatterySaverIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefBatterySaverIsEnable ? 1 : 0);
                    return true;
                case 226:
                    return onTransact$DefDeviceAdminActive$(parcel, parcel2);
                case 227:
                    return onTransact$DefDeviceOwner$(parcel, parcel2);
                case 228:
                    return onTransact$DefSystemSettingEnable$(parcel, parcel2);
                case 229:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefSystemSettingIsEnable = DefSystemSettingIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefSystemSettingIsEnable ? 1 : 0);
                    return true;
                case 230:
                    return onTransact$DefScreenColorAdjustEnable$(parcel, parcel2);
                case 231:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefScreenColorAdjustIsEnable = DefScreenColorAdjustIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefScreenColorAdjustIsEnable ? 1 : 0);
                    return true;
                case 232:
                    return onTransact$DefNoColorReadEnable$(parcel, parcel2);
                case 233:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDefNoColorReadIsEnable = DefNoColorReadIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDefNoColorReadIsEnable ? 1 : 0);
                    return true;
                case 234:
                    return onTransact$SettingOptionVisible$(parcel, parcel2);
                case 235:
                    return onTransact$SettingOptionIsVisible$(parcel, parcel2);
                case 236:
                    return onTransact$SettingAllOptionVisible$(parcel, parcel2);
                case 237:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSettingAllOptionIsVisible = SettingAllOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSettingAllOptionIsVisible ? 1 : 0);
                    return true;
                case 238:
                    return onTransact$AppDetailOptionVisible$(parcel, parcel2);
                case 239:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppDetailOptionIsVisible = AppDetailOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppDetailOptionIsVisible ? 1 : 0);
                    return true;
                case 240:
                    return onTransact$WifiAdvanceOptionVisible$(parcel, parcel2);
                case 241:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiAdvanceOptionIsVisible = WifiAdvanceOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiAdvanceOptionIsVisible ? 1 : 0);
                    return true;
                case 242:
                    return onTransact$DevelopmentOptionVisible$(parcel, parcel2);
                case 243:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDevelopmentOptionIsVisible = DevelopmentOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDevelopmentOptionIsVisible ? 1 : 0);
                    return true;
                case 244:
                    return onTransact$SettingSearchOptionVisible$(parcel, parcel2);
                case 245:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSettingSearchOptionIsVisible = SettingSearchOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSettingSearchOptionIsVisible ? 1 : 0);
                    return true;
                case 246:
                    return onTransact$VpnOptionVisible$(parcel, parcel2);
                case 247:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zVpnOptionIsVisible = VpnOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zVpnOptionIsVisible ? 1 : 0);
                    return true;
                case 248:
                    return onTransact$AirPlaneOptionVisible$(parcel, parcel2);
                case 249:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAirPlaneOptionIsVisible = AirPlaneOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAirPlaneOptionIsVisible ? 1 : 0);
                    return true;
                case 250:
                    return onTransact$NetworkResetOptionVisible$(parcel, parcel2);
                case 251:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNetworkResetOptionIsVisible = NetworkResetOptionIsVisible();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNetworkResetOptionIsVisible ? 1 : 0);
                    return true;
                case 252:
                    return onTransact$NetworkAccessEnable$(parcel, parcel2);
                case 253:
                    return onTransact$NetworkFirewallWorkTypeSet$(parcel, parcel2);
                case 254:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNetworkFirewallWorkTypeGet = NetworkFirewallWorkTypeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iNetworkFirewallWorkTypeGet);
                    return true;
                case 255:
                    return onTransact$NetworkFirewallTypeSet$(parcel, parcel2);
                case 256:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNetworkFirewallTypeGet = NetworkFirewallTypeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iNetworkFirewallTypeGet);
                    return true;
                case 257:
                    return onTransact$NetworkFirewallEnable$(parcel, parcel2);
                case 258:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNetworkFirewallIsEnable = NetworkFirewallIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNetworkFirewallIsEnable ? 1 : 0);
                    return true;
                case 259:
                    return onTransact$GlobalNetworkWhiteListEnable$(parcel, parcel2);
                case 260:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zGlobalNetworkWhiteListIsEnable = GlobalNetworkWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zGlobalNetworkWhiteListIsEnable ? 1 : 0);
                    return true;
                case 261:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listGlobalNetworkWhiteListGet = GlobalNetworkWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listGlobalNetworkWhiteListGet);
                    return true;
                case 262:
                    return onTransact$GlobalNetworkWhiteListSet$(parcel, parcel2);
                case 263:
                    return onTransact$GlobalNetworkWhiteListAdd$(parcel, parcel2);
                case 264:
                    return onTransact$GlobalNetworkWhiteListDel$(parcel, parcel2);
                case 265:
                    return onTransact$GlobalNetworkWhiteListRemove$(parcel, parcel2);
                case 266:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iGlobalNetworkWhiteListClear = GlobalNetworkWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iGlobalNetworkWhiteListClear);
                    return true;
                case 267:
                    return onTransact$GlobalNetworkBlackListEnable$(parcel, parcel2);
                case 268:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zGlobalNetworkBlackListIsEnable = GlobalNetworkBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zGlobalNetworkBlackListIsEnable ? 1 : 0);
                    return true;
                case 269:
                    return onTransact$GlobalNetworkBlackListSet$(parcel, parcel2);
                case 270:
                    return onTransact$GlobalNetworkBlackListAdd$(parcel, parcel2);
                case 271:
                    return onTransact$GlobalNetworkBlackListDel$(parcel, parcel2);
                case 272:
                    return onTransact$GlobalNetworkBlackListRemove$(parcel, parcel2);
                case 273:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listGlobalNetworkBlackListGet = GlobalNetworkBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listGlobalNetworkBlackListGet);
                    return true;
                case 274:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iGlobalNetworkBlackListClear = GlobalNetworkBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iGlobalNetworkBlackListClear);
                    return true;
                case 275:
                    return onTransact$AppNetworkWhiteListEnable$(parcel, parcel2);
                case 276:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppNetworkWhiteListIsEnable = AppNetworkWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppNetworkWhiteListIsEnable ? 1 : 0);
                    return true;
                case 277:
                    return onTransact$AppNetworkWhiteListSet$(parcel, parcel2);
                case 278:
                    return onTransact$AppNetworkWhiteListAdd$(parcel, parcel2);
                case 279:
                    return onTransact$AppNetworkWhiteListDel$(parcel, parcel2);
                case 280:
                    return onTransact$AppNetworkWhiteListRemove$(parcel, parcel2);
                case 281:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppNetworkWhiteListGet = AppNetworkWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppNetworkWhiteListGet);
                    return true;
                case 282:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppNetworkWhiteListClear = AppNetworkWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppNetworkWhiteListClear);
                    return true;
                case 283:
                    return onTransact$AppNetworkBlackListEnable$(parcel, parcel2);
                case 284:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppNetworkBlackListIsEnable = AppNetworkBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppNetworkBlackListIsEnable ? 1 : 0);
                    return true;
                case 285:
                    return onTransact$AppNetworkBlackListSet$(parcel, parcel2);
                case 286:
                    return onTransact$AppNetworkBlackListAdd$(parcel, parcel2);
                case 287:
                    return onTransact$AppNetworkBlackListDel$(parcel, parcel2);
                case 288:
                    return onTransact$AppNetworkBlackListRemove$(parcel, parcel2);
                case 289:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppNetworkBlackListGet = AppNetworkBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppNetworkBlackListGet);
                    return true;
                case 290:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppNetworkBlackListClear = AppNetworkBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppNetworkBlackListClear);
                    return true;
                case 291:
                    return onTransact$AppUnBlockNetworkWhiteListEnable$(parcel, parcel2);
                case 292:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAppUnBlockNetworkWhiteListIsEnable = AppUnBlockNetworkWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAppUnBlockNetworkWhiteListIsEnable ? 1 : 0);
                    return true;
                case 293:
                    return onTransact$AppUnBlockNetworkWhiteListSet$(parcel, parcel2);
                case 294:
                    return onTransact$AppUnBlockNetworkWhiteListAdd$(parcel, parcel2);
                case 295:
                    return onTransact$AppUnBlockNetworkWhiteListDel$(parcel, parcel2);
                case 296:
                    return onTransact$AppUnBlockNetworkWhiteListRemove$(parcel, parcel2);
                case 297:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listAppUnBlockNetworkWhiteListGet = AppUnBlockNetworkWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listAppUnBlockNetworkWhiteListGet);
                    return true;
                case 298:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAppUnBlockNetworkWhiteListClear = AppUnBlockNetworkWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iAppUnBlockNetworkWhiteListClear);
                    return true;
                case 299:
                    return onTransact$BrowserWhiteListEnable$(parcel, parcel2);
                case 300:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBrowserWhiteListIsEnable = BrowserWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBrowserWhiteListIsEnable ? 1 : 0);
                    return true;
                case 301:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listBrowserWhiteListGet = BrowserWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listBrowserWhiteListGet);
                    return true;
                case 302:
                    return onTransact$BrowserWhiteListSet$(parcel, parcel2);
                case 303:
                    return onTransact$BrowserWhiteListadd$(parcel, parcel2);
                case 304:
                    return onTransact$BrowserWhiteListDel$(parcel, parcel2);
                case 305:
                    return onTransact$BrowserWhiteListRemove$(parcel, parcel2);
                case 306:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBrowserWhiteListClear = BrowserWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iBrowserWhiteListClear);
                    return true;
                case 307:
                    return onTransact$AppAccessEnable$(parcel, parcel2);
                case 308:
                    return onTransact$AppAccessWlan$(parcel, parcel2);
                case 309:
                    return onTransact$AppAccessMobile$(parcel, parcel2);
                case 310:
                    return onTransact$PhoneCallWhiteListEnable$(parcel, parcel2);
                case 311:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPhoneCallWhiteListIsEnable = PhoneCallWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPhoneCallWhiteListIsEnable ? 1 : 0);
                    return true;
                case 312:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listPhoneCallWhiteListGet = PhoneCallWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listPhoneCallWhiteListGet);
                    return true;
                case 313:
                    return onTransact$PhoneCallWhiteListSet$(parcel, parcel2);
                case 314:
                    return onTransact$PhoneCallWhiteListAdd$(parcel, parcel2);
                case 315:
                    return onTransact$PhoneCallWhiteListDel$(parcel, parcel2);
                case 316:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPhoneCallWhiteListClear = PhoneCallWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iPhoneCallWhiteListClear);
                    return true;
                case 317:
                    return onTransact$PhoneCallBlackListEnable$(parcel, parcel2);
                case 318:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPhoneCallBlackListIsEnable = PhoneCallBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPhoneCallBlackListIsEnable ? 1 : 0);
                    return true;
                case 319:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listPhoneCallBlackListGet = PhoneCallBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listPhoneCallBlackListGet);
                    return true;
                case 320:
                    return onTransact$PhoneCallBlackListSet$(parcel, parcel2);
                case 321:
                    return onTransact$PhoneCallBlackListAdd$(parcel, parcel2);
                case 322:
                    return onTransact$PhoneCallBlackListDel$(parcel, parcel2);
                case 323:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPhoneCallBlackListClear = PhoneCallBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iPhoneCallBlackListClear);
                    return true;
                case 324:
                    return onTransact$PhoneCallEnable$(parcel, parcel2);
                case 325:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPhoneCallIsEnable = PhoneCallIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPhoneCallIsEnable ? 1 : 0);
                    return true;
                case 326:
                    return onTransact$PhoneVoiceOutEnable$(parcel, parcel2);
                case 327:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPhoneVoiceOutIsEnable = PhoneVoiceOutIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPhoneVoiceOutIsEnable ? 1 : 0);
                    return true;
                case 328:
                    return onTransact$PhoneVoiceInEnable$(parcel, parcel2);
                case 329:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPhoneVoiceInIsEnable = PhoneVoiceInIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPhoneVoiceInIsEnable ? 1 : 0);
                    return true;
                case 330:
                    return onTransact$SMSEnable$(parcel, parcel2);
                case 331:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSMSIsEnable = SMSIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSMSIsEnable ? 1 : 0);
                    return true;
                case 332:
                    return onTransact$MMSSendEnable$(parcel, parcel2);
                case 333:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMMSSendIsEnable = MMSSendIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMMSSendIsEnable ? 1 : 0);
                    return true;
                case 334:
                    return onTransact$MMSReceiveEnable$(parcel, parcel2);
                case 335:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMMSReceiveIsEnable = MMSReceiveIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMMSReceiveIsEnable ? 1 : 0);
                    return true;
                case 336:
                    return onTransact$SimEnable$(parcel, parcel2);
                case 337:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSimIsEnable = SimIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSimIsEnable ? 1 : 0);
                    return true;
                case 338:
                    return onTransact$SimImeiGet$(parcel, parcel2);
                case 339:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSimImeiNumGet = SimImeiNumGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSimImeiNumGet);
                    return true;
                case 340:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSimSlotNumGet = SimSlotNumGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSimSlotNumGet);
                    return true;
                case 341:
                    return onTransact$PhoneNumerGet$(parcel, parcel2);
                case 342:
                    return onTransact$MobileDataOn$(parcel, parcel2);
                case 343:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMobileDataIsOn = MobileDataIsOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMobileDataIsOn ? 1 : 0);
                    return true;
                case 344:
                    return onTransact$MobileDataConnectivityEnable$(parcel, parcel2);
                case 345:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMobileDataConnectivityIsEnable = MobileDataConnectivityIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMobileDataConnectivityIsEnable ? 1 : 0);
                    return true;
                case 346:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysReboot = SysReboot();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysReboot);
                    return true;
                case 347:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysShutdown = SysShutdown();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysShutdown);
                    return true;
                case 348:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysGoSleep = SysGoSleep();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysGoSleep);
                    return true;
                case 349:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysWakeUp = SysWakeUp();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysWakeUp);
                    return true;
                case 350:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysFactoryRest = SysFactoryRest();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysFactoryRest);
                    return true;
                case 351:
                    return onTransact$SysRoot$(parcel, parcel2);
                case 352:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSysIsRoot = SysIsRoot();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSysIsRoot ? 1 : 0);
                    return true;
                case 353:
                    return onTransact$SysScreenshot$(parcel, parcel2);
                case 354:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bitmap bitmapSysScreenshotBmp = SysScreenshotBmp();
                    parcel2.writeNoException();
                    if (bitmapSysScreenshotBmp != null) {
                        parcel2.writeInt(1);
                        bitmapSysScreenshotBmp.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 355:
                    return onTransact$SysTimeStampSet$(parcel, parcel2);
                case 356:
                    return onTransact$SysDateSet$(parcel, parcel2);
                case 357:
                    return onTransact$SysTimeSet$(parcel, parcel2);
                case 358:
                    return onTransact$SysDateTimeSet$(parcel, parcel2);
                case 359:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysScreenOn = SysScreenOn();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysScreenOn);
                    return true;
                case 360:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysScreenOff = SysScreenOff();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysScreenOff);
                    return true;
                case 361:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysScreenLockClear = SysScreenLockClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysScreenLockClear);
                    return true;
                case 362:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysMemoryClear = SysMemoryClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysMemoryClear);
                    return true;
                case 363:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSysScreenshotPath = SysScreenshotPath();
                    parcel2.writeNoException();
                    parcel2.writeString(strSysScreenshotPath);
                    return true;
                case 364:
                    return onTransact$SysVolumeMuteEnable$(parcel, parcel2);
                case 365:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSysVolumeMuteIsEnable = SysVolumeMuteIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSysVolumeMuteIsEnable ? 1 : 0);
                    return true;
                case 366:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSysSerialnoGet = SysSerialnoGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strSysSerialnoGet);
                    return true;
                case 367:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysScreenLock = SysScreenLock();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysScreenLock);
                    return true;
                case 368:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysScreenUnLock = SysScreenUnLock();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysScreenUnLock);
                    return true;
                case 369:
                    return onTransact$SysScreenLockType$(parcel, parcel2);
                case 370:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysFaceRecognition = SysFaceRecognition();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysFaceRecognition);
                    return true;
                case 371:
                    return onTransact$SysPowerSaveMode$(parcel, parcel2);
                case 372:
                    return onTransact$SysZenModeOn$(parcel, parcel2);
                case 373:
                    return onTransact$SysLockPassword$(parcel, parcel2);
                case 374:
                    return onTransact$SysBootanimationSet$(parcel, parcel2);
                case 375:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysBootanimationClear = SysBootanimationClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysBootanimationClear);
                    return true;
                case 376:
                    return onTransact$SysFontSizeSet$(parcel, parcel2);
                case 377:
                    return onTransact$SysFontSizeValueSet$(parcel, parcel2);
                case 378:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysFontSizeGet = SysFontSizeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysFontSizeGet);
                    return true;
                case 379:
                    return onTransact$SysDisplaySizeSet$(parcel, parcel2);
                case 380:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSysDisplaySizeGet = SysDisplaySizeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iSysDisplaySizeGet);
                    return true;
                case 381:
                    return onTransact$SysDisplayDensityGet$(parcel, parcel2);
                case 382:
                    return onTransact$SysScreenRecordStart$(parcel, parcel2);
                case 383:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSysScreenRecordStop = SysScreenRecordStop();
                    parcel2.writeNoException();
                    parcel2.writeString(strSysScreenRecordStop);
                    return true;
                case 384:
                    return onTransact$SysScheduledPowerOn$(parcel, parcel2);
                case 385:
                    return onTransact$SysScheduledPowerOff$(parcel, parcel2);
                case 386:
                    return onTransact$SysScheduledTimePowerOn$(parcel, parcel2);
                case 387:
                    return onTransact$SysScheduledTimePowerOff$(parcel, parcel2);
                case 388:
                    return onTransact$SysBacklightEnable$(parcel, parcel2);
                case 389:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSysBacklightIsEnable = SysBacklightIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSysBacklightIsEnable ? 1 : 0);
                    return true;
                case 390:
                    return onTransact$SysBacklightValAdjust$(parcel, parcel2);
                case 391:
                    return onTransact$AutoBrightnessEnable$(parcel, parcel2);
                case 392:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAutoBrightnessIsEnable = AutoBrightnessIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zAutoBrightnessIsEnable ? 1 : 0);
                    return true;
                case 393:
                    return onTransact$DistanceProtectionEnable$(parcel, parcel2);
                case 394:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDistanceProtectionIsEnable = DistanceProtectionIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDistanceProtectionIsEnable ? 1 : 0);
                    return true;
                case 395:
                    return onTransact$FatigueAlertEnable$(parcel, parcel2);
                case 396:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFatigueAlertIsEnable = FatigueAlertIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zFatigueAlertIsEnable ? 1 : 0);
                    return true;
                case 397:
                    return onTransact$ReverseAlertEnable$(parcel, parcel2);
                case 398:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zReverseAlertIsEnable = ReverseAlertIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zReverseAlertIsEnable ? 1 : 0);
                    return true;
                case 399:
                    return onTransact$ShakeAlertEnable$(parcel, parcel2);
                case 400:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShakeAlertIsEnable = ShakeAlertIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zShakeAlertIsEnable ? 1 : 0);
                    return true;
                case 401:
                    return onTransact$WifiEnable$(parcel, parcel2);
                case 402:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiIsEnable = WifiIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiIsEnable ? 1 : 0);
                    return true;
                case 403:
                    return onTransact$WifiOpen$(parcel, parcel2);
                case 404:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strWifiMacGet = WifiMacGet();
                    parcel2.writeNoException();
                    parcel2.writeString(strWifiMacGet);
                    return true;
                case 405:
                    return onTransact$WifiConnectSSID$(parcel, parcel2);
                case 406:
                    return onTransact$WifiConfigurationDel$(parcel, parcel2);
                case 407:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWifiConfigurationClear = WifiConfigurationClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iWifiConfigurationClear);
                    return true;
                case 408:
                    return onTransact$WifiDirectEnable$(parcel, parcel2);
                case 409:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiDirectIsEnable = WifiDirectIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiDirectIsEnable ? 1 : 0);
                    return true;
                case 410:
                    return onTransact$WifiFirewallEnable$(parcel, parcel2);
                case 411:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiFirewallIsEnable = WifiFirewallIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiFirewallIsEnable ? 1 : 0);
                    return true;
                case 412:
                    return onTransact$WifiFirewallTypeSet$(parcel, parcel2);
                case 413:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWifiFirewallTypeGet = WifiFirewallTypeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iWifiFirewallTypeGet);
                    return true;
                case 414:
                    return onTransact$WifiWhiteListEnable$(parcel, parcel2);
                case 415:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiWhiteListIsEnable = WifiWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiWhiteListIsEnable ? 1 : 0);
                    return true;
                case 416:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listWifiWhiteListGet = WifiWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listWifiWhiteListGet);
                    return true;
                case 417:
                    return onTransact$WifiWhiteListSet$(parcel, parcel2);
                case 418:
                    return onTransact$WifiWhiteListAdd$(parcel, parcel2);
                case 419:
                    return onTransact$WifiWhiteListDel$(parcel, parcel2);
                case 420:
                    return onTransact$WifiWhiteListRemove$(parcel, parcel2);
                case 421:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWifiWhiteListClear = WifiWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iWifiWhiteListClear);
                    return true;
                case 422:
                    return onTransact$WifiBlackListEnable$(parcel, parcel2);
                case 423:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWifiBlackListIsEnable = WifiBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zWifiBlackListIsEnable ? 1 : 0);
                    return true;
                case 424:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listWifiBlackListGet = WifiBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listWifiBlackListGet);
                    return true;
                case 425:
                    return onTransact$WifiBlackListSet$(parcel, parcel2);
                case 426:
                    return onTransact$WifiBlackListAdd$(parcel, parcel2);
                case 427:
                    return onTransact$WifiBlackListDel$(parcel, parcel2);
                case 428:
                    return onTransact$WifiBlackListRemove$(parcel, parcel2);
                case 429:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iWifiBlackListClear = WifiBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iWifiBlackListClear);
                    return true;
                case 430:
                    return onTransact$BluetoothEnable$(parcel, parcel2);
                case 431:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBluetoothIsEnable = BluetoothIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBluetoothIsEnable ? 1 : 0);
                    return true;
                case 432:
                    return onTransact$BluetoothOpen$(parcel, parcel2);
                case 433:
                    return onTransact$BluetoothTransEnable$(parcel, parcel2);
                case 434:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBluetoothTransIsEnable = BluetoothTransIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBluetoothTransIsEnable ? 1 : 0);
                    return true;
                case 435:
                    return onTransact$BluetoothFirewallEnable$(parcel, parcel2);
                case 436:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBluetoothFirewallIsEnable = BluetoothFirewallIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBluetoothFirewallIsEnable ? 1 : 0);
                    return true;
                case 437:
                    return onTransact$BluetoothFirewallTypeSet$(parcel, parcel2);
                case 438:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBluetoothFirewallTypeGet = BluetoothFirewallTypeGet();
                    parcel2.writeNoException();
                    parcel2.writeInt(iBluetoothFirewallTypeGet);
                    return true;
                case 439:
                    return onTransact$BluetoothWhiteListEnable$(parcel, parcel2);
                case 440:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBluetoothWhiteListIsEnable = BluetoothWhiteListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBluetoothWhiteListIsEnable ? 1 : 0);
                    return true;
                case 441:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listBluetoothWhiteListGet = BluetoothWhiteListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listBluetoothWhiteListGet);
                    return true;
                case 442:
                    return onTransact$BluetoothWhiteListSet$(parcel, parcel2);
                case 443:
                    return onTransact$BluetoothWhiteListAdd$(parcel, parcel2);
                case 444:
                    return onTransact$BluetoothWhiteListDel$(parcel, parcel2);
                case 445:
                    return onTransact$BluetoothWhiteListRemove$(parcel, parcel2);
                case 446:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBluetoothWhiteListClear = BluetoothWhiteListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iBluetoothWhiteListClear);
                    return true;
                case 447:
                    return onTransact$BluetoothBlackListEnable$(parcel, parcel2);
                case 448:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBluetoothBlackListIsEnable = BluetoothBlackListIsEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zBluetoothBlackListIsEnable ? 1 : 0);
                    return true;
                case 449:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listBluetoothBlackListGet = BluetoothBlackListGet();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listBluetoothBlackListGet);
                    return true;
                case 450:
                    return onTransact$BluetoothBlackListSet$(parcel, parcel2);
                case 451:
                    return onTransact$BluetoothBlackListAdd$(parcel, parcel2);
                case 452:
                    return onTransact$BluetoothBlackListDel$(parcel, parcel2);
                case 453:
                    return onTransact$BluetoothBlackListRemove$(parcel, parcel2);
                case 454:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBluetoothBlackListClear = BluetoothBlackListClear();
                    parcel2.writeNoException();
                    parcel2.writeInt(iBluetoothBlackListClear);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int AccessibilityServiceEnable(String str, String str2, boolean z);

    boolean AirPlaneOptionIsVisible();

    int AirPlaneOptionVisible(boolean z);

    int AppAccessEnable(boolean z);

    int AppAccessMobile(String str, boolean z);

    int AppAccessWlan(String str, boolean z);

    int AppAliveListAdd(String str);

    int AppAliveListClear();

    int AppAliveListDel(String str);

    int AppAliveListEnable(boolean z);

    List<String> AppAliveListGet();

    boolean AppAliveListIsEnable();

    int AppAliveListRemove(List<String> list);

    int AppAliveListSet(List<String> list);

    List<String> AppAllRunningGet();

    int AppCacheClear(String str);

    int AppCapScreenPermissionListAdd(String str);

    int AppCapScreenPermissionListClear();

    int AppCapScreenPermissionListDel(String str);

    int AppCapScreenPermissionListEnable(boolean z);

    List<String> AppCapScreenPermissionListGet();

    boolean AppCapScreenPermissionListIsEnable();

    int AppCapScreenPermissionListRemove(List<String> list);

    int AppCapScreenPermissionListSet(List<String> list);

    int AppDataClear(String str);

    boolean AppDetailOptionIsVisible();

    int AppDetailOptionVisible(boolean z);

    int AppDisableSet(String str);

    int AppEnableSet(String str);

    int AppForceStart(String str);

    int AppForceStop(String str);

    int AppFreezeListAdd(String str);

    int AppFreezeListClear();

    int AppFreezeListDel(String str);

    int AppFreezeListEnable(boolean z);

    List<String> AppFreezeListGet();

    boolean AppFreezeListIsEnable();

    int AppFreezeListRemove(List<String> list);

    int AppFreezeListSet(List<String> list);

    int AppGrantAllPermission(String str, boolean z);

    int AppGrantUsageStatePermission(String str, boolean z);

    int AppInstallBlackListAdd(String str);

    int AppInstallBlackListClear();

    int AppInstallBlackListDel(String str);

    int AppInstallBlackListEnable(boolean z);

    List<String> AppInstallBlackListGet();

    boolean AppInstallBlackListIsEnable();

    int AppInstallBlackListRemove(List<String> list);

    int AppInstallBlackListSet(List<String> list);

    int AppInstallWhiteListAdd(String str);

    int AppInstallWhiteListClear();

    int AppInstallWhiteListDel(String str);

    int AppInstallWhiteListEnable(boolean z);

    List<String> AppInstallWhiteListGet();

    boolean AppInstallWhiteListIsEnable();

    int AppInstallWhiteListRemove(List<String> list);

    int AppInstallWhiteListSet(List<String> list);

    int AppManualInstallEnable(boolean z);

    boolean AppManualInstallIsEnable();

    int AppNetworkBlackListAdd(String str);

    int AppNetworkBlackListClear();

    int AppNetworkBlackListDel(String str);

    int AppNetworkBlackListEnable(boolean z);

    List<String> AppNetworkBlackListGet();

    boolean AppNetworkBlackListIsEnable();

    int AppNetworkBlackListRemove(List<String> list);

    int AppNetworkBlackListSet(List<String> list);

    int AppNetworkWhiteListAdd(String str);

    int AppNetworkWhiteListClear();

    int AppNetworkWhiteListDel(String str);

    int AppNetworkWhiteListEnable(boolean z);

    List<String> AppNetworkWhiteListGet();

    boolean AppNetworkWhiteListIsEnable();

    int AppNetworkWhiteListRemove(List<String> list);

    int AppNetworkWhiteListSet(List<String> list);

    int AppNotifyWhiteListAdd(String str);

    int AppNotifyWhiteListClear();

    int AppNotifyWhiteListDel(String str);

    int AppNotifyWhiteListEnable(boolean z);

    List<String> AppNotifyWhiteListGet();

    boolean AppNotifyWhiteListIsEnable();

    int AppNotifyWhiteListRemove(List<String> list);

    int AppNotifyWhiteListSet(List<String> list);

    int AppSilentInstall(String str, boolean z);

    int AppSilentInstallPackage(String str, String str2, String str3, boolean z);

    int AppSilentUninstall(String str, boolean z);

    String AppTopRunningGet();

    int AppTrustedListAdd(String str);

    int AppTrustedListClear();

    int AppTrustedListDel(String str);

    int AppTrustedListEnable(boolean z);

    List<String> AppTrustedListGet();

    boolean AppTrustedListIsEnable();

    int AppTrustedListRemove(List<String> list);

    int AppTrustedListSet(List<String> list);

    int AppUnBlockNetworkWhiteListAdd(String str);

    int AppUnBlockNetworkWhiteListClear();

    int AppUnBlockNetworkWhiteListDel(String str);

    int AppUnBlockNetworkWhiteListEnable(boolean z);

    List<String> AppUnBlockNetworkWhiteListGet();

    boolean AppUnBlockNetworkWhiteListIsEnable();

    int AppUnBlockNetworkWhiteListRemove(List<String> list);

    int AppUnBlockNetworkWhiteListSet(List<String> list);

    int AppUnFreezeListAdd(String str);

    int AppUnFreezeListClear();

    int AppUnFreezeListDel(String str);

    int AppUnFreezeListEnable(boolean z);

    List<String> AppUnFreezeListGet();

    boolean AppUnFreezeListIsEnable();

    int AppUnFreezeListRemove(List<String> list);

    int AppUnFreezeListSet(List<String> list);

    int AppUninstallBlackListAdd(String str);

    int AppUninstallBlackListClear();

    int AppUninstallBlackListDel(String str);

    int AppUninstallBlackListEnable(boolean z);

    boolean AppUninstallBlackListIsEnable();

    int AppUninstallBlackListRemove(List<String> list);

    int AppUninstallBlackListSet(List<String> list);

    int AppUninstallWhiteListAdd(String str);

    int AppUninstallWhiteListClear();

    int AppUninstallWhiteListDel(String str);

    int AppUninstallWhiteListEnable(boolean z);

    List<String> AppUninstallWhiteListGet();

    boolean AppUninstallWhiteListIsEnable();

    int AppUninstallWhiteListRemove(List<String> list);

    int AppUninstallWhiteListSet(List<String> list);

    List<String> ApppUninstallBlackListGet();

    int AutoBrightnessEnable(boolean z);

    boolean AutoBrightnessIsEnable();

    int BackKeyEnable(boolean z);

    boolean BackKeyIsEnable();

    int BluetoothBlackListAdd(String str);

    int BluetoothBlackListClear();

    int BluetoothBlackListDel(String str);

    int BluetoothBlackListEnable(boolean z);

    List<String> BluetoothBlackListGet();

    boolean BluetoothBlackListIsEnable();

    int BluetoothBlackListRemove(List<String> list);

    int BluetoothBlackListSet(List<String> list);

    int BluetoothEnable(boolean z);

    int BluetoothFirewallEnable(boolean z);

    boolean BluetoothFirewallIsEnable();

    int BluetoothFirewallTypeGet();

    int BluetoothFirewallTypeSet(int i);

    boolean BluetoothIsEnable();

    int BluetoothOpen(boolean z);

    int BluetoothTransEnable(boolean z);

    boolean BluetoothTransIsEnable();

    int BluetoothWhiteListAdd(String str);

    int BluetoothWhiteListClear();

    int BluetoothWhiteListDel(String str);

    int BluetoothWhiteListEnable(boolean z);

    List<String> BluetoothWhiteListGet();

    boolean BluetoothWhiteListIsEnable();

    int BluetoothWhiteListRemove(List<String> list);

    int BluetoothWhiteListSet(List<String> list);

    int BrowserWhiteListClear();

    int BrowserWhiteListDel(String str);

    int BrowserWhiteListEnable(boolean z);

    List<String> BrowserWhiteListGet();

    boolean BrowserWhiteListIsEnable();

    int BrowserWhiteListRemove(List<String> list);

    int BrowserWhiteListSet(List<String> list);

    int BrowserWhiteListadd(String str);

    int CameraEnable(boolean z);

    boolean CameraIsEnable();

    int CameraPhotoShutterSoundEnable(boolean z);

    boolean CameraPhotoShutterSoundIsEnable();

    int CameraVideoShutterSoundEnable(boolean z);

    boolean CameraVideoShutterSoundIsEnable();

    int DefAirPlaneEnable(boolean z);

    boolean DefAirPlaneIsEnable();

    int DefApnEnable(boolean z);

    boolean DefApnIsEnable();

    int DefAutoTimeEnable(boolean z);

    int DefBatterySaverEnable(boolean z);

    boolean DefBatterySaverIsEnable();

    int DefBrowserClear();

    int DefBrowserSet(String str);

    int DefClipboardEnable(boolean z);

    boolean DefClipboardIsEnable();

    int DefDeviceAdminActive(String str, String str2);

    int DefDeviceOwner(String str, String str2);

    int DefFactoryResetEnable(boolean z);

    boolean DefFactoryResetIsEnable();

    int DefFileShareEnable(boolean z);

    boolean DefFileShareIsEnable();

    int DefGpsLocationEnable(boolean z);

    boolean DefGpsLocationIsEnable();

    int DefHomeLauncherClear();

    int DefHomeLauncherSet(String str, String str2);

    int DefInputMethodClear();

    int DefInputMethodSet(String str);

    int DefInstallUnknownApkEnable(boolean z);

    boolean DefInstallUnknownApkIsEnable();

    int DefLockScreenEnable(boolean z);

    boolean DefLockScreenIsEnable();

    int DefLockScreenNotifyEnable(boolean z);

    boolean DefLockScreenNotifyIsEnable();

    int DefMultiUserEnable(boolean z);

    boolean DefMultiUserIsEnable();

    int DefNoColorReadEnable(boolean z);

    boolean DefNoColorReadIsEnable();

    int DefNotifySendEnable(boolean z);

    boolean DefNotifySendIsEnable();

    int DefOtaUpdateEnable(boolean z);

    boolean DefOtaUpdateIsEnable();

    int DefPowerOffEnable(boolean z);

    boolean DefPowerOffIsEnable();

    int DefPowerSleepEnable(boolean z);

    boolean DefPowerSleepIsEnable();

    int DefSafeModeEnable(boolean z);

    boolean DefSafeModeIsEnable();

    int DefScreenColorAdjustEnable(boolean z, int i);

    boolean DefScreenColorAdjustIsEnable();

    int DefScreenShotEnable(boolean z);

    boolean DefScreenShotIsEnable();

    int DefShutdownRebootEnable(boolean z);

    boolean DefShutdownRebootIsEnable();

    int DefSystemSettingEnable(boolean z);

    boolean DefSystemSettingIsEnable();

    int DefSystemUpdateEnable(boolean z);

    int DefTimeSetEnable(boolean z);

    int DefUnknowSourceDetailEnable(boolean z);

    boolean DefUnknowSourceDetailIsEnable();

    int DefVideoPlayerClear();

    int DefVideoPlayerSet(String str);

    int DefVolumeAdjustEnable(boolean z);

    boolean DefVolumeAdjustIsEnable();

    boolean DevelopmentOptionIsVisible();

    int DevelopmentOptionVisible(boolean z);

    int DistanceProtectionEnable(boolean z);

    boolean DistanceProtectionIsEnable();

    String EduVersion();

    int ExternalStorageEnable(boolean z);

    boolean ExternalStorageIsEnable();

    int EyeComfortEnable(boolean z);

    boolean EyeComfortIsEnable();

    int FatigueAlertEnable(boolean z, int i);

    boolean FatigueAlertIsEnable();

    String FirmwareVersionGet();

    int GlobalNetworkBlackListAdd(String str);

    int GlobalNetworkBlackListClear();

    int GlobalNetworkBlackListDel(String str);

    int GlobalNetworkBlackListEnable(boolean z);

    List<String> GlobalNetworkBlackListGet();

    boolean GlobalNetworkBlackListIsEnable();

    int GlobalNetworkBlackListRemove(List<String> list);

    int GlobalNetworkBlackListSet(List<String> list);

    int GlobalNetworkWhiteListAdd(String str);

    int GlobalNetworkWhiteListClear();

    int GlobalNetworkWhiteListDel(String str);

    int GlobalNetworkWhiteListEnable(boolean z);

    List<String> GlobalNetworkWhiteListGet();

    boolean GlobalNetworkWhiteListIsEnable();

    int GlobalNetworkWhiteListRemove(List<String> list);

    int GlobalNetworkWhiteListSet(List<String> list);

    boolean GpsLocationIsOn();

    int GpsLocationOn(boolean z);

    int HeadsetEnable(boolean z);

    boolean HeadsetIsEnable();

    int HomeKeyEnable(boolean z);

    boolean HomeKeyIsEnable();

    int MMSReceiveEnable(boolean z);

    boolean MMSReceiveIsEnable();

    int MMSSendEnable(boolean z);

    boolean MMSSendIsEnable();

    int MenuKeyEnable(boolean z);

    boolean MenuKeyIsEnable();

    int MicphoneEnable(boolean z);

    boolean MicphoneIsEnable();

    int MobileDataConnectivityEnable(boolean z);

    boolean MobileDataConnectivityIsEnable();

    boolean MobileDataIsOn();

    int MobileDataOn(boolean z);

    int NavBackButtonEnable(boolean z);

    boolean NavBackButtonIsEnable();

    int NavBackButtonVisible(boolean z);

    int NavBarHide();

    boolean NavBarIsShow();

    int NavBarShow();

    int NavHomeButtonEnable(boolean z);

    boolean NavHomeButtonIsEnable();

    int NavHomeButtonVisible(boolean z);

    int NavMenuButtonVisible(boolean z);

    int NavRecentButtonEnable(boolean z);

    boolean NavRecentButtonIsEnable();

    int NavRecentButtonVisible(boolean z);

    int NavScreenshotButtonVisible(boolean z);

    int NavVolumeDownButtonVisible(boolean z);

    int NavVolumeUpButtonVisible(boolean z);

    int NetworkAccessEnable(boolean z);

    int NetworkFirewallEnable(boolean z);

    boolean NetworkFirewallIsEnable();

    int NetworkFirewallTypeGet();

    int NetworkFirewallTypeSet(int i);

    int NetworkFirewallWorkTypeGet();

    int NetworkFirewallWorkTypeSet(int i);

    boolean NetworkResetOptionIsVisible();

    int NetworkResetOptionVisible(boolean z);

    int PhoneCallBlackListAdd(String str);

    int PhoneCallBlackListClear();

    int PhoneCallBlackListDel(String str);

    int PhoneCallBlackListEnable(boolean z);

    List<String> PhoneCallBlackListGet();

    boolean PhoneCallBlackListIsEnable();

    int PhoneCallBlackListSet(List<String> list);

    int PhoneCallEnable(boolean z);

    boolean PhoneCallIsEnable();

    int PhoneCallWhiteListAdd(String str);

    int PhoneCallWhiteListClear();

    int PhoneCallWhiteListDel(String str);

    int PhoneCallWhiteListEnable(boolean z);

    List<String> PhoneCallWhiteListGet();

    boolean PhoneCallWhiteListIsEnable();

    int PhoneCallWhiteListSet(List<String> list);

    String PhoneNumerGet(int i);

    int PhoneVoiceInEnable(boolean z);

    boolean PhoneVoiceInIsEnable();

    int PhoneVoiceOutEnable(boolean z);

    boolean PhoneVoiceOutIsEnable();

    String PlatformNameGet();

    int PowerKeyEnable(boolean z);

    boolean PowerKeyIsEnable();

    int PowerKeyLongPressEnable(boolean z);

    boolean PowerKeyLongPressIsEnable();

    int PowerKeyShortPressEnable(boolean z);

    boolean PowerKeyShortPressIsEnable();

    String ProjectNameGet();

    int RecentKeyEnable(boolean z);

    boolean RecentKeyIsEnable();

    int RecentTaskAllClear();

    int ReverseAlertEnable(boolean z);

    boolean ReverseAlertIsEnable();

    int SMSEnable(boolean z);

    boolean SMSIsEnable();

    int SdcardStorageEnable(boolean z);

    boolean SdcardStorageIsEnable();

    boolean SettingAllOptionIsVisible();

    int SettingAllOptionVisible(boolean z);

    boolean SettingOptionIsVisible(int i);

    int SettingOptionVisible(int i, boolean z);

    boolean SettingSearchOptionIsVisible();

    int SettingSearchOptionVisible(boolean z);

    int ShakeAlertEnable(boolean z);

    boolean ShakeAlertIsEnable();

    int SimEnable(boolean z);

    String SimImeiGet(int i);

    int SimImeiNumGet();

    boolean SimIsEnable();

    int SimSlotNumGet();

    int StatusBarDropEnable(boolean z);

    boolean StatusBarDropIsEnable();

    int StatusBarExpandPanelEnable(boolean z);

    boolean StatusBarExpandPanelIsEnable();

    int StatusBarHide();

    int StatusBarNotifyEnable(boolean z);

    boolean StatusBarNotifyIsEnable();

    int StatusBarShow();

    boolean StatusbarIsShow();

    int SysBacklightEnable(boolean z);

    boolean SysBacklightIsEnable();

    int SysBacklightValAdjust(int i);

    int SysBootanimationClear();

    int SysBootanimationSet(String str);

    int SysDateSet(int i, int i2, int i3);

    int SysDateTimeSet(int i, int i2, int i3, int i4, int i5, int i6);

    int SysDisplayDensityGet(int i);

    int SysDisplaySizeGet();

    int SysDisplaySizeSet(int i);

    int SysFaceRecognition();

    int SysFactoryRest();

    int SysFontSizeGet();

    int SysFontSizeSet(int i);

    int SysFontSizeValueSet(float f);

    int SysGoSleep();

    boolean SysIsRoot();

    int SysLockPassword(String str);

    int SysMemoryClear();

    int SysPowerSaveMode(int i);

    int SysReboot();

    int SysRoot(boolean z);

    int SysScheduledPowerOff(boolean z);

    int SysScheduledPowerOn(boolean z);

    int SysScheduledTimePowerOff(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8);

    int SysScheduledTimePowerOn(boolean z, int i, int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8);

    int SysScreenLock();

    int SysScreenLockClear();

    int SysScreenLockType(int i);

    int SysScreenOff();

    int SysScreenOn();

    int SysScreenRecordStart(boolean z);

    String SysScreenRecordStop();

    int SysScreenUnLock();

    int SysScreenshot(String str);

    Bitmap SysScreenshotBmp();

    String SysScreenshotPath();

    String SysSerialnoGet();

    int SysShutdown();

    int SysTimeSet(int i, int i2, int i3);

    int SysTimeStampSet(long j);

    int SysVolumeMuteEnable(boolean z);

    boolean SysVolumeMuteIsEnable();

    int SysWakeUp();

    int SysZenModeOn(boolean z);

    int TouchScreenEnable(boolean z);

    boolean TouchScreenIsEnable();

    int UsbDebugEnable(boolean z);

    boolean UsbDebugIsEnable();

    int UsbMtpEnable(boolean z);

    boolean UsbMtpIsEnable();

    int UsbOtgEnable(boolean z);

    boolean UsbOtgIsEnable();

    int UsbStorageEnable(boolean z);

    boolean UsbStorageIsEnable();

    int VolumeDownKeyEnable(boolean z);

    boolean VolumeDownKeyIsEnable();

    int VolumeKeyEnable(boolean z);

    boolean VolumeKeyIsEnable();

    int VolumeUpKeyEnable(boolean z);

    boolean VolumeUpKeyIsEnable();

    boolean VpnOptionIsVisible();

    int VpnOptionVisible(boolean z);

    boolean WifiAdvanceOptionIsVisible();

    int WifiAdvanceOptionVisible(boolean z);

    int WifiBlackListAdd(String str);

    int WifiBlackListClear();

    int WifiBlackListDel(String str);

    int WifiBlackListEnable(boolean z);

    List<String> WifiBlackListGet();

    boolean WifiBlackListIsEnable();

    int WifiBlackListRemove(List<String> list);

    int WifiBlackListSet(List<String> list);

    int WifiConfigurationClear();

    int WifiConfigurationDel(String str);

    int WifiConnectSSID(String str, String str2);

    int WifiDirectEnable(boolean z);

    boolean WifiDirectIsEnable();

    int WifiEnable(boolean z);

    int WifiFirewallEnable(boolean z);

    boolean WifiFirewallIsEnable();

    int WifiFirewallTypeGet();

    int WifiFirewallTypeSet(int i);

    boolean WifiIsEnable();

    String WifiMacGet();

    int WifiOpen(boolean z);

    int WifiWhiteListAdd(String str);

    int WifiWhiteListClear();

    int WifiWhiteListDel(String str);

    int WifiWhiteListEnable(boolean z);

    List<String> WifiWhiteListGet();

    boolean WifiWhiteListIsEnable();

    int WifiWhiteListRemove(List<String> list);

    int WifiWhiteListSet(List<String> list);
}
