.class public abstract Landroid/os/IApiManager$Stub;
.super Landroid/os/Binder;
.source "IApiManager.java"

# interfaces
.implements Landroid/os/IApiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IApiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IApiManager"

.field public static final TRANSACTION_AccessibilityServiceEnable:I = 0xac

.field public static final TRANSACTION_AirPlaneOptionIsVisible:I = 0xf9

.field public static final TRANSACTION_AirPlaneOptionVisible:I = 0xf8

.field public static final TRANSACTION_ApiVersion:I = 0x1

.field public static final TRANSACTION_AppAccessEnable:I = 0x133

.field public static final TRANSACTION_AppAccessMobile:I = 0x135

.field public static final TRANSACTION_AppAccessWlan:I = 0x134

.field public static final TRANSACTION_AppAliveListAdd:I = 0x9d

.field public static final TRANSACTION_AppAliveListClear:I = 0xa0

.field public static final TRANSACTION_AppAliveListDel:I = 0x9e

.field public static final TRANSACTION_AppAliveListEnable:I = 0x99

.field public static final TRANSACTION_AppAliveListGet:I = 0x9b

.field public static final TRANSACTION_AppAliveListIsEnable:I = 0x9a

.field public static final TRANSACTION_AppAliveListRemove:I = 0x9f

.field public static final TRANSACTION_AppAliveListSet:I = 0x9c

.field public static final TRANSACTION_AppAllRunningGet:I = 0x87

.field public static final TRANSACTION_AppCacheClear:I = 0xa9

.field public static final TRANSACTION_AppCapScreenPermissionListAdd:I = 0x8d

.field public static final TRANSACTION_AppCapScreenPermissionListClear:I = 0x90

.field public static final TRANSACTION_AppCapScreenPermissionListDel:I = 0x8e

.field public static final TRANSACTION_AppCapScreenPermissionListEnable:I = 0x89

.field public static final TRANSACTION_AppCapScreenPermissionListGet:I = 0x8b

.field public static final TRANSACTION_AppCapScreenPermissionListIsEnable:I = 0x8a

.field public static final TRANSACTION_AppCapScreenPermissionListRemove:I = 0x8f

.field public static final TRANSACTION_AppCapScreenPermissionListSet:I = 0x8c

.field public static final TRANSACTION_AppDataClear:I = 0xaa

.field public static final TRANSACTION_AppDetailOptionIsVisible:I = 0xef

.field public static final TRANSACTION_AppDetailOptionVisible:I = 0xee

.field public static final TRANSACTION_AppDisableSet:I = 0x85

.field public static final TRANSACTION_AppEnableSet:I = 0x86

.field public static final TRANSACTION_AppForceStart:I = 0x83

.field public static final TRANSACTION_AppForceStop:I = 0x84

.field public static final TRANSACTION_AppFreezeListAdd:I = 0x77

.field public static final TRANSACTION_AppFreezeListClear:I = 0x7a

.field public static final TRANSACTION_AppFreezeListDel:I = 0x78

.field public static final TRANSACTION_AppFreezeListEnable:I = 0x73

.field public static final TRANSACTION_AppFreezeListGet:I = 0x75

.field public static final TRANSACTION_AppFreezeListIsEnable:I = 0x74

.field public static final TRANSACTION_AppFreezeListRemove:I = 0x79

.field public static final TRANSACTION_AppFreezeListSet:I = 0x76

.field public static final TRANSACTION_AppGrantAllPermission:I = 0xad

.field public static final TRANSACTION_AppGrantUsageStatePermission:I = 0xae

.field public static final TRANSACTION_AppInstallBlackListAdd:I = 0x5a

.field public static final TRANSACTION_AppInstallBlackListClear:I = 0x5d

.field public static final TRANSACTION_AppInstallBlackListDel:I = 0x5b

.field public static final TRANSACTION_AppInstallBlackListEnable:I = 0x56

.field public static final TRANSACTION_AppInstallBlackListGet:I = 0x58

.field public static final TRANSACTION_AppInstallBlackListIsEnable:I = 0x57

.field public static final TRANSACTION_AppInstallBlackListRemove:I = 0x5c

.field public static final TRANSACTION_AppInstallBlackListSet:I = 0x59

.field public static final TRANSACTION_AppInstallWhiteListAdd:I = 0x52

.field public static final TRANSACTION_AppInstallWhiteListClear:I = 0x55

.field public static final TRANSACTION_AppInstallWhiteListDel:I = 0x53

.field public static final TRANSACTION_AppInstallWhiteListEnable:I = 0x4e

.field public static final TRANSACTION_AppInstallWhiteListGet:I = 0x50

.field public static final TRANSACTION_AppInstallWhiteListIsEnable:I = 0x4f

.field public static final TRANSACTION_AppInstallWhiteListRemove:I = 0x54

.field public static final TRANSACTION_AppInstallWhiteListSet:I = 0x51

.field public static final TRANSACTION_AppManualInstallEnable:I = 0x71

.field public static final TRANSACTION_AppManualInstallIsEnable:I = 0x72

.field public static final TRANSACTION_AppNetworkBlackListAdd:I = 0x11e

.field public static final TRANSACTION_AppNetworkBlackListClear:I = 0x122

.field public static final TRANSACTION_AppNetworkBlackListDel:I = 0x11f

.field public static final TRANSACTION_AppNetworkBlackListEnable:I = 0x11b

.field public static final TRANSACTION_AppNetworkBlackListGet:I = 0x121

.field public static final TRANSACTION_AppNetworkBlackListIsEnable:I = 0x11c

.field public static final TRANSACTION_AppNetworkBlackListRemove:I = 0x120

.field public static final TRANSACTION_AppNetworkBlackListSet:I = 0x11d

.field public static final TRANSACTION_AppNetworkWhiteListAdd:I = 0x116

.field public static final TRANSACTION_AppNetworkWhiteListClear:I = 0x11a

.field public static final TRANSACTION_AppNetworkWhiteListDel:I = 0x117

.field public static final TRANSACTION_AppNetworkWhiteListEnable:I = 0x113

.field public static final TRANSACTION_AppNetworkWhiteListGet:I = 0x119

.field public static final TRANSACTION_AppNetworkWhiteListIsEnable:I = 0x114

.field public static final TRANSACTION_AppNetworkWhiteListRemove:I = 0x118

.field public static final TRANSACTION_AppNetworkWhiteListSet:I = 0x115

.field public static final TRANSACTION_AppNotifyWhiteListAdd:I = 0x95

.field public static final TRANSACTION_AppNotifyWhiteListClear:I = 0x98

.field public static final TRANSACTION_AppNotifyWhiteListDel:I = 0x96

.field public static final TRANSACTION_AppNotifyWhiteListEnable:I = 0x91

.field public static final TRANSACTION_AppNotifyWhiteListGet:I = 0x93

.field public static final TRANSACTION_AppNotifyWhiteListIsEnable:I = 0x92

.field public static final TRANSACTION_AppNotifyWhiteListRemove:I = 0x97

.field public static final TRANSACTION_AppNotifyWhiteListSet:I = 0x94

.field public static final TRANSACTION_AppSilentInstall:I = 0x6e

.field public static final TRANSACTION_AppSilentInstallPackage:I = 0x70

.field public static final TRANSACTION_AppSilentUninstall:I = 0x6f

.field public static final TRANSACTION_AppTopRunningGet:I = 0x88

.field public static final TRANSACTION_AppTrustedListAdd:I = 0xa5

.field public static final TRANSACTION_AppTrustedListClear:I = 0xa8

.field public static final TRANSACTION_AppTrustedListDel:I = 0xa6

.field public static final TRANSACTION_AppTrustedListEnable:I = 0xa1

.field public static final TRANSACTION_AppTrustedListGet:I = 0xa3

.field public static final TRANSACTION_AppTrustedListIsEnable:I = 0xa2

.field public static final TRANSACTION_AppTrustedListRemove:I = 0xa7

.field public static final TRANSACTION_AppTrustedListSet:I = 0xa4

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListAdd:I = 0x126

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListClear:I = 0x12a

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListDel:I = 0x127

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListEnable:I = 0x123

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListGet:I = 0x129

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListIsEnable:I = 0x124

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListRemove:I = 0x128

.field public static final TRANSACTION_AppUnBlockNetworkWhiteListSet:I = 0x125

.field public static final TRANSACTION_AppUnFreezeListAdd:I = 0x7f

.field public static final TRANSACTION_AppUnFreezeListClear:I = 0x82

.field public static final TRANSACTION_AppUnFreezeListDel:I = 0x80

.field public static final TRANSACTION_AppUnFreezeListEnable:I = 0x7b

.field public static final TRANSACTION_AppUnFreezeListGet:I = 0x7d

.field public static final TRANSACTION_AppUnFreezeListIsEnable:I = 0x7c

.field public static final TRANSACTION_AppUnFreezeListRemove:I = 0x81

.field public static final TRANSACTION_AppUnFreezeListSet:I = 0x7e

.field public static final TRANSACTION_AppUninstallBlackListAdd:I = 0x6a

.field public static final TRANSACTION_AppUninstallBlackListClear:I = 0x6d

.field public static final TRANSACTION_AppUninstallBlackListDel:I = 0x6b

.field public static final TRANSACTION_AppUninstallBlackListEnable:I = 0x66

.field public static final TRANSACTION_AppUninstallBlackListIsEnable:I = 0x67

.field public static final TRANSACTION_AppUninstallBlackListRemove:I = 0x6c

.field public static final TRANSACTION_AppUninstallBlackListSet:I = 0x69

.field public static final TRANSACTION_AppUninstallWhiteListAdd:I = 0x62

.field public static final TRANSACTION_AppUninstallWhiteListClear:I = 0x65

.field public static final TRANSACTION_AppUninstallWhiteListDel:I = 0x63

.field public static final TRANSACTION_AppUninstallWhiteListEnable:I = 0x5e

.field public static final TRANSACTION_AppUninstallWhiteListGet:I = 0x60

.field public static final TRANSACTION_AppUninstallWhiteListIsEnable:I = 0x5f

.field public static final TRANSACTION_AppUninstallWhiteListRemove:I = 0x64

.field public static final TRANSACTION_AppUninstallWhiteListSet:I = 0x61

.field public static final TRANSACTION_ApppUninstallBlackListGet:I = 0x68

.field public static final TRANSACTION_AutoBrightnessEnable:I = 0x187

.field public static final TRANSACTION_AutoBrightnessIsEnable:I = 0x188

.field public static final TRANSACTION_BackKeyEnable:I = 0x3c

.field public static final TRANSACTION_BackKeyIsEnable:I = 0x3d

.field public static final TRANSACTION_BluetoothBlackListAdd:I = 0x1c3

.field public static final TRANSACTION_BluetoothBlackListClear:I = 0x1c6

.field public static final TRANSACTION_BluetoothBlackListDel:I = 0x1c4

.field public static final TRANSACTION_BluetoothBlackListEnable:I = 0x1bf

.field public static final TRANSACTION_BluetoothBlackListGet:I = 0x1c1

.field public static final TRANSACTION_BluetoothBlackListIsEnable:I = 0x1c0

.field public static final TRANSACTION_BluetoothBlackListRemove:I = 0x1c5

.field public static final TRANSACTION_BluetoothBlackListSet:I = 0x1c2

.field public static final TRANSACTION_BluetoothEnable:I = 0x1ae

.field public static final TRANSACTION_BluetoothFirewallEnable:I = 0x1b3

.field public static final TRANSACTION_BluetoothFirewallIsEnable:I = 0x1b4

.field public static final TRANSACTION_BluetoothFirewallTypeGet:I = 0x1b6

.field public static final TRANSACTION_BluetoothFirewallTypeSet:I = 0x1b5

.field public static final TRANSACTION_BluetoothIsEnable:I = 0x1af

.field public static final TRANSACTION_BluetoothOpen:I = 0x1b0

.field public static final TRANSACTION_BluetoothTransEnable:I = 0x1b1

.field public static final TRANSACTION_BluetoothTransIsEnable:I = 0x1b2

.field public static final TRANSACTION_BluetoothWhiteListAdd:I = 0x1bb

.field public static final TRANSACTION_BluetoothWhiteListClear:I = 0x1be

.field public static final TRANSACTION_BluetoothWhiteListDel:I = 0x1bc

.field public static final TRANSACTION_BluetoothWhiteListEnable:I = 0x1b7

.field public static final TRANSACTION_BluetoothWhiteListGet:I = 0x1b9

.field public static final TRANSACTION_BluetoothWhiteListIsEnable:I = 0x1b8

.field public static final TRANSACTION_BluetoothWhiteListRemove:I = 0x1bd

.field public static final TRANSACTION_BluetoothWhiteListSet:I = 0x1ba

.field public static final TRANSACTION_BrowserWhiteListClear:I = 0x132

.field public static final TRANSACTION_BrowserWhiteListDel:I = 0x130

.field public static final TRANSACTION_BrowserWhiteListEnable:I = 0x12b

.field public static final TRANSACTION_BrowserWhiteListGet:I = 0x12d

.field public static final TRANSACTION_BrowserWhiteListIsEnable:I = 0x12c

.field public static final TRANSACTION_BrowserWhiteListRemove:I = 0x131

.field public static final TRANSACTION_BrowserWhiteListSet:I = 0x12e

.field public static final TRANSACTION_BrowserWhiteListadd:I = 0x12f

.field public static final TRANSACTION_CameraEnable:I = 0x11

.field public static final TRANSACTION_CameraIsEnable:I = 0x12

.field public static final TRANSACTION_CameraPhotoShutterSoundEnable:I = 0x13

.field public static final TRANSACTION_CameraPhotoShutterSoundIsEnable:I = 0x14

.field public static final TRANSACTION_CameraVideoShutterSoundEnable:I = 0x15

.field public static final TRANSACTION_CameraVideoShutterSoundIsEnable:I = 0x16

.field public static final TRANSACTION_DefAirPlaneEnable:I = 0xde

.field public static final TRANSACTION_DefAirPlaneIsEnable:I = 0xdf

.field public static final TRANSACTION_DefApnEnable:I = 0xc6

.field public static final TRANSACTION_DefApnIsEnable:I = 0xc7

.field public static final TRANSACTION_DefAutoTimeEnable:I = 0xc0

.field public static final TRANSACTION_DefBatterySaverEnable:I = 0xe0

.field public static final TRANSACTION_DefBatterySaverIsEnable:I = 0xe1

.field public static final TRANSACTION_DefBrowserClear:I = 0xba

.field public static final TRANSACTION_DefBrowserSet:I = 0xb9

.field public static final TRANSACTION_DefClipboardEnable:I = 0xd4

.field public static final TRANSACTION_DefClipboardIsEnable:I = 0xd5

.field public static final TRANSACTION_DefDeviceAdminActive:I = 0xe2

.field public static final TRANSACTION_DefDeviceOwner:I = 0xe3

.field public static final TRANSACTION_DefFactoryResetEnable:I = 0xb1

.field public static final TRANSACTION_DefFactoryResetIsEnable:I = 0xb2

.field public static final TRANSACTION_DefFileShareEnable:I = 0xda

.field public static final TRANSACTION_DefFileShareIsEnable:I = 0xdb

.field public static final TRANSACTION_DefGpsLocationEnable:I = 0xd8

.field public static final TRANSACTION_DefGpsLocationIsEnable:I = 0xd9

.field public static final TRANSACTION_DefHomeLauncherClear:I = 0xb8

.field public static final TRANSACTION_DefHomeLauncherSet:I = 0xb7

.field public static final TRANSACTION_DefInputMethodClear:I = 0xbe

.field public static final TRANSACTION_DefInputMethodSet:I = 0xbd

.field public static final TRANSACTION_DefInstallUnknownApkEnable:I = 0xaf

.field public static final TRANSACTION_DefInstallUnknownApkIsEnable:I = 0xb0

.field public static final TRANSACTION_DefLockScreenEnable:I = 0xc2

.field public static final TRANSACTION_DefLockScreenIsEnable:I = 0xc3

.field public static final TRANSACTION_DefLockScreenNotifyEnable:I = 0xc4

.field public static final TRANSACTION_DefLockScreenNotifyIsEnable:I = 0xc5

.field public static final TRANSACTION_DefMultiUserEnable:I = 0xb5

.field public static final TRANSACTION_DefMultiUserIsEnable:I = 0xb6

.field public static final TRANSACTION_DefNoColorReadEnable:I = 0xe8

.field public static final TRANSACTION_DefNoColorReadIsEnable:I = 0xe9

.field public static final TRANSACTION_DefNotifySendEnable:I = 0xd6

.field public static final TRANSACTION_DefNotifySendIsEnable:I = 0xd7

.field public static final TRANSACTION_DefOtaUpdateEnable:I = 0xca

.field public static final TRANSACTION_DefOtaUpdateIsEnable:I = 0xcb

.field public static final TRANSACTION_DefPowerOffEnable:I = 0xd0

.field public static final TRANSACTION_DefPowerOffIsEnable:I = 0xd1

.field public static final TRANSACTION_DefPowerSleepEnable:I = 0xce

.field public static final TRANSACTION_DefPowerSleepIsEnable:I = 0xcf

.field public static final TRANSACTION_DefSafeModeEnable:I = 0xb3

.field public static final TRANSACTION_DefSafeModeIsEnable:I = 0xb4

.field public static final TRANSACTION_DefScreenColorAdjustEnable:I = 0xe6

.field public static final TRANSACTION_DefScreenColorAdjustIsEnable:I = 0xe7

.field public static final TRANSACTION_DefScreenShotEnable:I = 0xc8

.field public static final TRANSACTION_DefScreenShotIsEnable:I = 0xc9

.field public static final TRANSACTION_DefShutdownRebootEnable:I = 0xcc

.field public static final TRANSACTION_DefShutdownRebootIsEnable:I = 0xcd

.field public static final TRANSACTION_DefSystemSettingEnable:I = 0xe4

.field public static final TRANSACTION_DefSystemSettingIsEnable:I = 0xe5

.field public static final TRANSACTION_DefSystemUpdateEnable:I = 0xbf

.field public static final TRANSACTION_DefTimeSetEnable:I = 0xc1

.field public static final TRANSACTION_DefUnknowSourceDetailEnable:I = 0xdc

.field public static final TRANSACTION_DefUnknowSourceDetailIsEnable:I = 0xdd

.field public static final TRANSACTION_DefVideoPlayerClear:I = 0xbc

.field public static final TRANSACTION_DefVideoPlayerSet:I = 0xbb

.field public static final TRANSACTION_DefVolumeAdjustEnable:I = 0xd2

.field public static final TRANSACTION_DefVolumeAdjustIsEnable:I = 0xd3

.field public static final TRANSACTION_DevelopmentOptionIsVisible:I = 0xf3

.field public static final TRANSACTION_DevelopmentOptionVisible:I = 0xf2

.field public static final TRANSACTION_DistanceProtectionEnable:I = 0x189

.field public static final TRANSACTION_DistanceProtectionIsEnable:I = 0x18a

.field public static final TRANSACTION_ExternalStorageEnable:I = 0xd

.field public static final TRANSACTION_ExternalStorageIsEnable:I = 0xe

.field public static final TRANSACTION_EyeComfortEnable:I = 0x17

.field public static final TRANSACTION_EyeComfortIsEnable:I = 0x18

.field public static final TRANSACTION_FatigueAlertEnable:I = 0x18b

.field public static final TRANSACTION_FatigueAlertIsEnable:I = 0x18c

.field public static final TRANSACTION_FirmwareVersionGet:I = 0x4

.field public static final TRANSACTION_GlobalNetworkBlackListAdd:I = 0x10e

.field public static final TRANSACTION_GlobalNetworkBlackListClear:I = 0x112

.field public static final TRANSACTION_GlobalNetworkBlackListDel:I = 0x10f

.field public static final TRANSACTION_GlobalNetworkBlackListEnable:I = 0x10b

.field public static final TRANSACTION_GlobalNetworkBlackListGet:I = 0x111

.field public static final TRANSACTION_GlobalNetworkBlackListIsEnable:I = 0x10c

.field public static final TRANSACTION_GlobalNetworkBlackListRemove:I = 0x110

.field public static final TRANSACTION_GlobalNetworkBlackListSet:I = 0x10d

.field public static final TRANSACTION_GlobalNetworkWhiteListAdd:I = 0x107

.field public static final TRANSACTION_GlobalNetworkWhiteListClear:I = 0x10a

.field public static final TRANSACTION_GlobalNetworkWhiteListDel:I = 0x108

.field public static final TRANSACTION_GlobalNetworkWhiteListEnable:I = 0x103

.field public static final TRANSACTION_GlobalNetworkWhiteListGet:I = 0x105

.field public static final TRANSACTION_GlobalNetworkWhiteListIsEnable:I = 0x104

.field public static final TRANSACTION_GlobalNetworkWhiteListRemove:I = 0x109

.field public static final TRANSACTION_GlobalNetworkWhiteListSet:I = 0x106

.field public static final TRANSACTION_GpsLocationIsOn:I = 0x1e

.field public static final TRANSACTION_GpsLocationOn:I = 0x1d

.field public static final TRANSACTION_HeadsetEnable:I = 0x1b

.field public static final TRANSACTION_HeadsetIsEnable:I = 0x1c

.field public static final TRANSACTION_HomeKeyEnable:I = 0x3a

.field public static final TRANSACTION_HomeKeyIsEnable:I = 0x3b

.field public static final TRANSACTION_MMSReceiveEnable:I = 0x14e

.field public static final TRANSACTION_MMSReceiveIsEnable:I = 0x14f

.field public static final TRANSACTION_MMSSendEnable:I = 0x14c

.field public static final TRANSACTION_MMSSendIsEnable:I = 0x14d

.field public static final TRANSACTION_MenuKeyEnable:I = 0x3e

.field public static final TRANSACTION_MenuKeyIsEnable:I = 0x3f

.field public static final TRANSACTION_MicphoneEnable:I = 0x19

.field public static final TRANSACTION_MicphoneIsEnable:I = 0x1a

.field public static final TRANSACTION_MobileDataConnectivityEnable:I = 0x158

.field public static final TRANSACTION_MobileDataConnectivityIsEnable:I = 0x159

.field public static final TRANSACTION_MobileDataIsOn:I = 0x157

.field public static final TRANSACTION_MobileDataOn:I = 0x156

.field public static final TRANSACTION_NavBackButtonEnable:I = 0x34

.field public static final TRANSACTION_NavBackButtonIsEnable:I = 0x35

.field public static final TRANSACTION_NavBackButtonVisible:I = 0x2c

.field public static final TRANSACTION_NavBarHide:I = 0x23

.field public static final TRANSACTION_NavBarIsShow:I = 0x22

.field public static final TRANSACTION_NavBarShow:I = 0x21

.field public static final TRANSACTION_NavHomeButtonEnable:I = 0x32

.field public static final TRANSACTION_NavHomeButtonIsEnable:I = 0x33

.field public static final TRANSACTION_NavHomeButtonVisible:I = 0x2b

.field public static final TRANSACTION_NavMenuButtonVisible:I = 0x2e

.field public static final TRANSACTION_NavRecentButtonEnable:I = 0x36

.field public static final TRANSACTION_NavRecentButtonIsEnable:I = 0x37

.field public static final TRANSACTION_NavRecentButtonVisible:I = 0x2d

.field public static final TRANSACTION_NavScreenshotButtonVisible:I = 0x31

.field public static final TRANSACTION_NavVolumeDownButtonVisible:I = 0x30

.field public static final TRANSACTION_NavVolumeUpButtonVisible:I = 0x2f

.field public static final TRANSACTION_NetworkAccessEnable:I = 0xfc

.field public static final TRANSACTION_NetworkFirewallEnable:I = 0x101

.field public static final TRANSACTION_NetworkFirewallIsEnable:I = 0x102

.field public static final TRANSACTION_NetworkFirewallTypeGet:I = 0x100

.field public static final TRANSACTION_NetworkFirewallTypeSet:I = 0xff

.field public static final TRANSACTION_NetworkFirewallWorkTypeGet:I = 0xfe

.field public static final TRANSACTION_NetworkFirewallWorkTypeSet:I = 0xfd

.field public static final TRANSACTION_NetworkResetOptionIsVisible:I = 0xfb

.field public static final TRANSACTION_NetworkResetOptionVisible:I = 0xfa

.field public static final TRANSACTION_PhoneCallBlackListAdd:I = 0x141

.field public static final TRANSACTION_PhoneCallBlackListClear:I = 0x143

.field public static final TRANSACTION_PhoneCallBlackListDel:I = 0x142

.field public static final TRANSACTION_PhoneCallBlackListEnable:I = 0x13d

.field public static final TRANSACTION_PhoneCallBlackListGet:I = 0x13f

.field public static final TRANSACTION_PhoneCallBlackListIsEnable:I = 0x13e

.field public static final TRANSACTION_PhoneCallBlackListSet:I = 0x140

.field public static final TRANSACTION_PhoneCallEnable:I = 0x144

.field public static final TRANSACTION_PhoneCallIsEnable:I = 0x145

.field public static final TRANSACTION_PhoneCallWhiteListAdd:I = 0x13a

.field public static final TRANSACTION_PhoneCallWhiteListClear:I = 0x13c

.field public static final TRANSACTION_PhoneCallWhiteListDel:I = 0x13b

.field public static final TRANSACTION_PhoneCallWhiteListEnable:I = 0x136

.field public static final TRANSACTION_PhoneCallWhiteListGet:I = 0x138

.field public static final TRANSACTION_PhoneCallWhiteListIsEnable:I = 0x137

.field public static final TRANSACTION_PhoneCallWhiteListSet:I = 0x139

.field public static final TRANSACTION_PhoneNumerGet:I = 0x155

.field public static final TRANSACTION_PhoneVoiceInEnable:I = 0x148

.field public static final TRANSACTION_PhoneVoiceInIsEnable:I = 0x149

.field public static final TRANSACTION_PhoneVoiceOutEnable:I = 0x146

.field public static final TRANSACTION_PhoneVoiceOutIsEnable:I = 0x147

.field public static final TRANSACTION_PlatformNameGet:I = 0x2

.field public static final TRANSACTION_PowerKeyEnable:I = 0x40

.field public static final TRANSACTION_PowerKeyIsEnable:I = 0x41

.field public static final TRANSACTION_PowerKeyLongPressEnable:I = 0x4a

.field public static final TRANSACTION_PowerKeyLongPressIsEnable:I = 0x4b

.field public static final TRANSACTION_PowerKeyShortPressEnable:I = 0x48

.field public static final TRANSACTION_PowerKeyShortPressIsEnable:I = 0x49

.field public static final TRANSACTION_ProjectNameGet:I = 0x3

.field public static final TRANSACTION_RecentKeyEnable:I = 0x4c

.field public static final TRANSACTION_RecentKeyIsEnable:I = 0x4d

.field public static final TRANSACTION_RecentTaskAllClear:I = 0xab

.field public static final TRANSACTION_ReverseAlertEnable:I = 0x18d

.field public static final TRANSACTION_ReverseAlertIsEnable:I = 0x18e

.field public static final TRANSACTION_SMSEnable:I = 0x14a

.field public static final TRANSACTION_SMSIsEnable:I = 0x14b

.field public static final TRANSACTION_SdcardStorageEnable:I = 0x9

.field public static final TRANSACTION_SdcardStorageIsEnable:I = 0xa

.field public static final TRANSACTION_SettingAllOptionIsVisible:I = 0xed

.field public static final TRANSACTION_SettingAllOptionVisible:I = 0xec

.field public static final TRANSACTION_SettingOptionIsVisible:I = 0xeb

.field public static final TRANSACTION_SettingOptionVisible:I = 0xea

.field public static final TRANSACTION_SettingSearchOptionIsVisible:I = 0xf5

.field public static final TRANSACTION_SettingSearchOptionVisible:I = 0xf4

.field public static final TRANSACTION_ShakeAlertEnable:I = 0x18f

.field public static final TRANSACTION_ShakeAlertIsEnable:I = 0x190

.field public static final TRANSACTION_SimEnable:I = 0x150

.field public static final TRANSACTION_SimImeiGet:I = 0x152

.field public static final TRANSACTION_SimImeiNumGet:I = 0x153

.field public static final TRANSACTION_SimIsEnable:I = 0x151

.field public static final TRANSACTION_SimSlotNumGet:I = 0x154

.field public static final TRANSACTION_StatusBarDropEnable:I = 0x27

.field public static final TRANSACTION_StatusBarDropIsEnable:I = 0x28

.field public static final TRANSACTION_StatusBarExpandPanelEnable:I = 0x38

.field public static final TRANSACTION_StatusBarExpandPanelIsEnable:I = 0x39

.field public static final TRANSACTION_StatusBarHide:I = 0x26

.field public static final TRANSACTION_StatusBarNotifyEnable:I = 0x29

.field public static final TRANSACTION_StatusBarNotifyIsEnable:I = 0x2a

.field public static final TRANSACTION_StatusBarShow:I = 0x24

.field public static final TRANSACTION_StatusbarIsShow:I = 0x25

.field public static final TRANSACTION_SysBacklightEnable:I = 0x184

.field public static final TRANSACTION_SysBacklightIsEnable:I = 0x185

.field public static final TRANSACTION_SysBacklightValAdjust:I = 0x186

.field public static final TRANSACTION_SysBootanimationClear:I = 0x177

.field public static final TRANSACTION_SysBootanimationSet:I = 0x176

.field public static final TRANSACTION_SysDateSet:I = 0x164

.field public static final TRANSACTION_SysDateTimeSet:I = 0x166

.field public static final TRANSACTION_SysDisplayDensityGet:I = 0x17d

.field public static final TRANSACTION_SysDisplaySizeGet:I = 0x17c

.field public static final TRANSACTION_SysDisplaySizeSet:I = 0x17b

.field public static final TRANSACTION_SysFaceRecognition:I = 0x172

.field public static final TRANSACTION_SysFactoryRest:I = 0x15e

.field public static final TRANSACTION_SysFontSizeGet:I = 0x17a

.field public static final TRANSACTION_SysFontSizeSet:I = 0x178

.field public static final TRANSACTION_SysFontSizeValueSet:I = 0x179

.field public static final TRANSACTION_SysGoSleep:I = 0x15c

.field public static final TRANSACTION_SysIsRoot:I = 0x160

.field public static final TRANSACTION_SysLockPassword:I = 0x175

.field public static final TRANSACTION_SysMemoryClear:I = 0x16a

.field public static final TRANSACTION_SysPowerSaveMode:I = 0x173

.field public static final TRANSACTION_SysReboot:I = 0x15a

.field public static final TRANSACTION_SysRoot:I = 0x15f

.field public static final TRANSACTION_SysScheduledPowerOff:I = 0x181

.field public static final TRANSACTION_SysScheduledPowerOn:I = 0x180

.field public static final TRANSACTION_SysScheduledTimePowerOff:I = 0x183

.field public static final TRANSACTION_SysScheduledTimePowerOn:I = 0x182

.field public static final TRANSACTION_SysScreenLock:I = 0x16f

.field public static final TRANSACTION_SysScreenLockClear:I = 0x169

.field public static final TRANSACTION_SysScreenLockType:I = 0x171

.field public static final TRANSACTION_SysScreenOff:I = 0x168

.field public static final TRANSACTION_SysScreenOn:I = 0x167

.field public static final TRANSACTION_SysScreenRecordStart:I = 0x17e

.field public static final TRANSACTION_SysScreenRecordStop:I = 0x17f

.field public static final TRANSACTION_SysScreenUnLock:I = 0x170

.field public static final TRANSACTION_SysScreenshot:I = 0x161

.field public static final TRANSACTION_SysScreenshotBmp:I = 0x162

.field public static final TRANSACTION_SysScreenshotPath:I = 0x16b

.field public static final TRANSACTION_SysSerialnoGet:I = 0x16e

.field public static final TRANSACTION_SysShutdown:I = 0x15b

.field public static final TRANSACTION_SysTimeSet:I = 0x165

.field public static final TRANSACTION_SysTimeStampSet:I = 0x163

.field public static final TRANSACTION_SysVolumeMuteEnable:I = 0x16c

.field public static final TRANSACTION_SysVolumeMuteIsEnable:I = 0x16d

.field public static final TRANSACTION_SysWakeUp:I = 0x15d

.field public static final TRANSACTION_SysZenModeOn:I = 0x174

.field public static final TRANSACTION_TouchScreenEnable:I = 0x1f

.field public static final TRANSACTION_TouchScreenIsEnable:I = 0x20

.field public static final TRANSACTION_UsbDebugEnable:I = 0x5

.field public static final TRANSACTION_UsbDebugIsEnable:I = 0x6

.field public static final TRANSACTION_UsbMtpEnable:I = 0x7

.field public static final TRANSACTION_UsbMtpIsEnable:I = 0x8

.field public static final TRANSACTION_UsbOtgEnable:I = 0xf

.field public static final TRANSACTION_UsbOtgIsEnable:I = 0x10

.field public static final TRANSACTION_UsbStorageEnable:I = 0xb

.field public static final TRANSACTION_UsbStorageIsEnable:I = 0xc

.field public static final TRANSACTION_VolumeDownKeyEnable:I = 0x44

.field public static final TRANSACTION_VolumeDownKeyIsEnable:I = 0x45

.field public static final TRANSACTION_VolumeKeyEnable:I = 0x46

.field public static final TRANSACTION_VolumeKeyIsEnable:I = 0x47

.field public static final TRANSACTION_VolumeUpKeyEnable:I = 0x42

.field public static final TRANSACTION_VolumeUpKeyIsEnable:I = 0x43

.field public static final TRANSACTION_VpnOptionIsVisible:I = 0xf7

.field public static final TRANSACTION_VpnOptionVisible:I = 0xf6

.field public static final TRANSACTION_WifiAdvanceOptionIsVisible:I = 0xf1

.field public static final TRANSACTION_WifiAdvanceOptionVisible:I = 0xf0

.field public static final TRANSACTION_WifiBlackListAdd:I = 0x1aa

.field public static final TRANSACTION_WifiBlackListClear:I = 0x1ad

.field public static final TRANSACTION_WifiBlackListDel:I = 0x1ab

.field public static final TRANSACTION_WifiBlackListEnable:I = 0x1a6

.field public static final TRANSACTION_WifiBlackListGet:I = 0x1a8

.field public static final TRANSACTION_WifiBlackListIsEnable:I = 0x1a7

.field public static final TRANSACTION_WifiBlackListRemove:I = 0x1ac

.field public static final TRANSACTION_WifiBlackListSet:I = 0x1a9

.field public static final TRANSACTION_WifiConfigurationClear:I = 0x197

.field public static final TRANSACTION_WifiConfigurationDel:I = 0x196

.field public static final TRANSACTION_WifiConnectSSID:I = 0x195

.field public static final TRANSACTION_WifiDirectEnable:I = 0x198

.field public static final TRANSACTION_WifiDirectIsEnable:I = 0x199

.field public static final TRANSACTION_WifiEnable:I = 0x191

.field public static final TRANSACTION_WifiFirewallEnable:I = 0x19a

.field public static final TRANSACTION_WifiFirewallIsEnable:I = 0x19b

.field public static final TRANSACTION_WifiFirewallTypeGet:I = 0x19d

.field public static final TRANSACTION_WifiFirewallTypeSet:I = 0x19c

.field public static final TRANSACTION_WifiIsEnable:I = 0x192

.field public static final TRANSACTION_WifiMacGet:I = 0x194

.field public static final TRANSACTION_WifiOpen:I = 0x193

.field public static final TRANSACTION_WifiWhiteListAdd:I = 0x1a2

.field public static final TRANSACTION_WifiWhiteListClear:I = 0x1a5

.field public static final TRANSACTION_WifiWhiteListDel:I = 0x1a3

.field public static final TRANSACTION_WifiWhiteListEnable:I = 0x19e

.field public static final TRANSACTION_WifiWhiteListGet:I = 0x1a0

.field public static final TRANSACTION_WifiWhiteListIsEnable:I = 0x19f

.field public static final TRANSACTION_WifiWhiteListRemove:I = 0x1a4

.field public static final TRANSACTION_WifiWhiteListSet:I = 0x1a1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IApiManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IApiManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/os/IApiManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/os/IApiManager;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/os/IApiManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IApiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method private onTransact$AccessibilityServiceEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-interface {p0, v0, v1, p1}, Landroid/os/IApiManager;->AccessibilityServiceEnable(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2
.end method

.method private onTransact$AirPlaneOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AirPlaneOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppAccessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAccessEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppAccessMobile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppAccessMobile(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppAccessWlan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppAccessWlan(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppAliveListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAliveListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppAliveListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAliveListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppAliveListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAliveListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppAliveListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAliveListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppAliveListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppAliveListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppCacheClear$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppCacheClear(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppDataClear$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppDataClear(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppDetailOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppDetailOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppGrantAllPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppGrantAllPermission(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppGrantUsageStatePermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppGrantUsageStatePermission(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppNetworkBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppNetworkBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNotifyWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNotifyWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppNotifyWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppSilentInstall$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppSilentInstall(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppSilentInstallPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-interface {p0, v0, v1, v2, p1}, Landroid/os/IApiManager;->AppSilentInstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3
.end method

.method private onTransact$AppSilentUninstall$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->AppSilentUninstall(Ljava/lang/String;Z)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$AppTrustedListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppTrustedListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppTrustedListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppTrustedListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppTrustedListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppTrustedListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppTrustedListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppTrustedListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppTrustedListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppTrustedListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppUnBlockNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppUnBlockNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppUnBlockNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$AppUnBlockNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AppUnBlockNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$AutoBrightnessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AutoBrightnessEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothBlackListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothFirewallEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothFirewallTypeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothOpen$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothOpen(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothTransEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothTransEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BluetoothWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BluetoothWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BluetoothWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BrowserWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BrowserWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BrowserWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BrowserWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$BrowserWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BrowserWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BrowserWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BrowserWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$BrowserWhiteListadd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->BrowserWhiteListadd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefAirPlaneEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefAirPlaneEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefApnEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefApnEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefAutoTimeEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefAutoTimeEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefBatterySaverEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefBatterySaverEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefBrowserSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefBrowserSet(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefClipboardEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefClipboardEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefDeviceAdminActive$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->DefDeviceAdminActive(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->DefDeviceOwner(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefFactoryResetEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefFactoryResetEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefFileShareEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefFileShareEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefGpsLocationEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefGpsLocationEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefHomeLauncherSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->DefHomeLauncherSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefInputMethodSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefInputMethodSet(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefInstallUnknownApkEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefInstallUnknownApkEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefLockScreenEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefLockScreenEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefLockScreenNotifyEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefLockScreenNotifyEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefMultiUserEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefMultiUserEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefNoColorReadEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefNoColorReadEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefNotifySendEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefNotifySendEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefOtaUpdateEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefOtaUpdateEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefPowerOffEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefPowerOffEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefPowerSleepEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefPowerSleepEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefSafeModeEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefSafeModeEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefScreenColorAdjustEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->DefScreenColorAdjustEnable(ZI)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$DefScreenShotEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefScreenShotEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefShutdownRebootEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefShutdownRebootEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefSystemSettingEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefSystemSettingEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefSystemUpdateEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefSystemUpdateEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefTimeSetEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefTimeSetEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefUnknowSourceDetailEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefUnknowSourceDetailEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DefVideoPlayerSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefVideoPlayerSet(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$DefVolumeAdjustEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DefVolumeAdjustEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DevelopmentOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DevelopmentOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$DistanceProtectionEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->DistanceProtectionEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$FatigueAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->FatigueAlertEnable(ZI)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$GlobalNetworkBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$GlobalNetworkBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$GlobalNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$GlobalNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->GlobalNetworkWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$MMSReceiveEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->MMSReceiveEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$MMSSendEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->MMSSendEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$MobileDataConnectivityEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->MobileDataConnectivityEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$MobileDataOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->MobileDataOn(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$NetworkAccessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->NetworkAccessEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$NetworkFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->NetworkFirewallEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$NetworkFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->NetworkFirewallTypeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$NetworkFirewallWorkTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->NetworkFirewallWorkTypeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$NetworkResetOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->NetworkResetOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$PhoneCallBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneCallBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneCallBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$PhoneCallBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneCallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$PhoneCallWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneCallWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneCallWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$PhoneCallWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneCallWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneNumerGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneNumerGet(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$PhoneVoiceInEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneVoiceInEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$PhoneVoiceOutEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->PhoneVoiceOutEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$ReverseAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->ReverseAlertEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SMSEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SMSEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SettingAllOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SettingAllOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SettingOptionIsVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SettingOptionIsVisible(I)Z

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SettingOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->SettingOptionVisible(IZ)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method

.method private onTransact$SettingSearchOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SettingSearchOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$ShakeAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->ShakeAlertEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SimEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SimEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SimImeiGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SimImeiGet(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysBacklightEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysBacklightEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysBacklightValAdjust$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysBacklightValAdjust(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysBootanimationSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysBootanimationSet(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysDateSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-interface {p0, v0, v1, p1}, Landroid/os/IApiManager;->SysDateSet(III)I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysDateTimeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    .line 8
    invoke-interface/range {v1 .. v7}, Landroid/os/IApiManager;->SysDateTimeSet(IIIIII)I

    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysDisplayDensityGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysDisplayDensityGet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysDisplaySizeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysDisplaySizeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysFontSizeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysFontSizeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysFontSizeValueSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysFontSizeValueSet(F)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysLockPassword(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysPowerSaveMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysPowerSaveMode(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysRoot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysRoot(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysScheduledPowerOff$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysScheduledPowerOff(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysScheduledPowerOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysScheduledPowerOn(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysScheduledTimePowerOff$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15

    const-string v0, "android.os.IApiManager"

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    .line 7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v2

    .line 8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move v11, v2

    .line 9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v12, v3

    goto :goto_5

    :cond_5
    move v12, v2

    .line 10
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    move v13, v2

    .line 11
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v14, v3

    goto :goto_7

    :cond_7
    move v14, v2

    :goto_7
    move-object v4, p0

    .line 12
    invoke-interface/range {v4 .. v14}, Landroid/os/IApiManager;->SysScheduledTimePowerOff(ZIIZZZZZZZ)I

    move-result v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v3
.end method

.method private onTransact$SysScheduledTimePowerOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15

    const-string v0, "android.os.IApiManager"

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    .line 7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v2

    .line 8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move v11, v2

    .line 9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v12, v3

    goto :goto_5

    :cond_5
    move v12, v2

    .line 10
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    move v13, v2

    .line 11
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v14, v3

    goto :goto_7

    :cond_7
    move v14, v2

    :goto_7
    move-object v4, p0

    .line 12
    invoke-interface/range {v4 .. v14}, Landroid/os/IApiManager;->SysScheduledTimePowerOn(ZIIZZZZZZZ)I

    move-result v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v3
.end method

.method private onTransact$SysScreenLockType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysScreenLockType(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysScreenRecordStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysScreenRecordStart(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysScreenshot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysScreenshot(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysTimeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-interface {p0, v0, v1, p1}, Landroid/os/IApiManager;->SysTimeSet(III)I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysTimeStampSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/os/IApiManager;->SysTimeStampSet(J)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$SysVolumeMuteEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysVolumeMuteEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$SysZenModeOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->SysZenModeOn(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$VpnOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->VpnOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiAdvanceOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiAdvanceOptionVisible(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiBlackListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiConfigurationDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiConfigurationDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiConnectSSID$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p0, v0, p1}, Landroid/os/IApiManager;->WifiConnectSSID(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiDirectEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiDirectEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiFirewallEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiFirewallTypeSet(I)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiOpen$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiOpen(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiWhiteListEnable(Z)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private onTransact$WifiWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$WifiWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const-string v0, "android.os.IApiManager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->WifiWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.os.IApiManager"

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothBlackListClear()I

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 7
    :pswitch_2
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 8
    :pswitch_3
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_4
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 10
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 14
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothBlackListIsEnable()Z

    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 18
    :pswitch_7
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 19
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothWhiteListClear()I

    move-result p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 23
    :pswitch_9
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 24
    :pswitch_a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 25
    :pswitch_b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 26
    :pswitch_c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 27
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 31
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothWhiteListIsEnable()Z

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 35
    :pswitch_f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 36
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothFirewallTypeGet()I

    move-result p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 40
    :pswitch_11
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 41
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothFirewallIsEnable()Z

    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 45
    :pswitch_13
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 46
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothTransIsEnable()Z

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 50
    :pswitch_15
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothTransEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 51
    :pswitch_16
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothOpen$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 52
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Landroid/os/IApiManager;->BluetoothIsEnable()Z

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 56
    :pswitch_18
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BluetoothEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 57
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiBlackListClear()I

    move-result p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 61
    :pswitch_1a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 62
    :pswitch_1b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 63
    :pswitch_1c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 64
    :pswitch_1d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 65
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 69
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiBlackListIsEnable()Z

    move-result p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 73
    :pswitch_20
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 74
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiWhiteListClear()I

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 78
    :pswitch_22
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 79
    :pswitch_23
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 80
    :pswitch_24
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 81
    :pswitch_25
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 82
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 86
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiWhiteListIsEnable()Z

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 90
    :pswitch_28
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 91
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiFirewallTypeGet()I

    move-result p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :pswitch_2a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 96
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiFirewallIsEnable()Z

    move-result p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 100
    :pswitch_2c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 101
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiDirectIsEnable()Z

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 105
    :pswitch_2e
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiDirectEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 106
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiConfigurationClear()I

    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 110
    :pswitch_30
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiConfigurationDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 111
    :pswitch_31
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiConnectSSID$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 112
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiMacGet()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 116
    :pswitch_33
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiOpen$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 117
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiIsEnable()Z

    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 121
    :pswitch_35
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 122
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0}, Landroid/os/IApiManager;->ShakeAlertIsEnable()Z

    move-result p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 126
    :pswitch_37
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$ShakeAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 127
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-interface {p0}, Landroid/os/IApiManager;->ReverseAlertIsEnable()Z

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 131
    :pswitch_39
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$ReverseAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 132
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0}, Landroid/os/IApiManager;->FatigueAlertIsEnable()Z

    move-result p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 136
    :pswitch_3b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$FatigueAlertEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 137
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-interface {p0}, Landroid/os/IApiManager;->DistanceProtectionIsEnable()Z

    move-result p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_3d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DistanceProtectionEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 142
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-interface {p0}, Landroid/os/IApiManager;->AutoBrightnessIsEnable()Z

    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 146
    :pswitch_3f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AutoBrightnessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 147
    :pswitch_40
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysBacklightValAdjust$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 148
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Landroid/os/IApiManager;->SysBacklightIsEnable()Z

    move-result p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 152
    :pswitch_42
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysBacklightEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 153
    :pswitch_43
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScheduledTimePowerOff$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 154
    :pswitch_44
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScheduledTimePowerOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 155
    :pswitch_45
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScheduledPowerOff$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 156
    :pswitch_46
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScheduledPowerOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 157
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenRecordStop()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 161
    :pswitch_48
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScreenRecordStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 162
    :pswitch_49
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysDisplayDensityGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 163
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-interface {p0}, Landroid/os/IApiManager;->SysDisplaySizeGet()I

    move-result p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 167
    :pswitch_4b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysDisplaySizeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 168
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-interface {p0}, Landroid/os/IApiManager;->SysFontSizeGet()I

    move-result p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 172
    :pswitch_4d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysFontSizeValueSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 173
    :pswitch_4e
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysFontSizeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 174
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-interface {p0}, Landroid/os/IApiManager;->SysBootanimationClear()I

    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 178
    :pswitch_50
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysBootanimationSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 179
    :pswitch_51
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 180
    :pswitch_52
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysZenModeOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 181
    :pswitch_53
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysPowerSaveMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 182
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-interface {p0}, Landroid/os/IApiManager;->SysFaceRecognition()I

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 186
    :pswitch_55
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScreenLockType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 187
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenUnLock()I

    move-result p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 191
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenLock()I

    move-result p1

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 195
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-interface {p0}, Landroid/os/IApiManager;->SysSerialnoGet()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 199
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Landroid/os/IApiManager;->SysVolumeMuteIsEnable()Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 203
    :pswitch_5a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysVolumeMuteEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 204
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenshotPath()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 208
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-interface {p0}, Landroid/os/IApiManager;->SysMemoryClear()I

    move-result p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 212
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenLockClear()I

    move-result p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 216
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenOff()I

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 220
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenOn()I

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_60
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysDateTimeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 225
    :pswitch_61
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysTimeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 226
    :pswitch_62
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysDateSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 227
    :pswitch_63
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysTimeStampSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 228
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-interface {p0}, Landroid/os/IApiManager;->SysScreenshotBmp()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 234
    :pswitch_65
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysScreenshot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 235
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-interface {p0}, Landroid/os/IApiManager;->SysIsRoot()Z

    move-result p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 239
    :pswitch_67
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SysRoot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 240
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-interface {p0}, Landroid/os/IApiManager;->SysFactoryRest()I

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 244
    :pswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-interface {p0}, Landroid/os/IApiManager;->SysWakeUp()I

    move-result p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 248
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-interface {p0}, Landroid/os/IApiManager;->SysGoSleep()I

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 252
    :pswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-interface {p0}, Landroid/os/IApiManager;->SysShutdown()I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 256
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-interface {p0}, Landroid/os/IApiManager;->SysReboot()I

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 260
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-interface {p0}, Landroid/os/IApiManager;->MobileDataConnectivityIsEnable()Z

    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 264
    :pswitch_6e
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$MobileDataConnectivityEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 265
    :pswitch_6f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-interface {p0}, Landroid/os/IApiManager;->MobileDataIsOn()Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 269
    :pswitch_70
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$MobileDataOn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 270
    :pswitch_71
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneNumerGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 271
    :pswitch_72
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-interface {p0}, Landroid/os/IApiManager;->SimSlotNumGet()I

    move-result p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 275
    :pswitch_73
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-interface {p0}, Landroid/os/IApiManager;->SimImeiNumGet()I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 279
    :pswitch_74
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SimImeiGet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 280
    :pswitch_75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-interface {p0}, Landroid/os/IApiManager;->SimIsEnable()Z

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 284
    :pswitch_76
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SimEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 285
    :pswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-interface {p0}, Landroid/os/IApiManager;->MMSReceiveIsEnable()Z

    move-result p1

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 289
    :pswitch_78
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$MMSReceiveEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 290
    :pswitch_79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-interface {p0}, Landroid/os/IApiManager;->MMSSendIsEnable()Z

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 294
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$MMSSendEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 295
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-interface {p0}, Landroid/os/IApiManager;->SMSIsEnable()Z

    move-result p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 299
    :pswitch_7c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SMSEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 300
    :pswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneVoiceInIsEnable()Z

    move-result p1

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 304
    :pswitch_7e
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneVoiceInEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 305
    :pswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneVoiceOutIsEnable()Z

    move-result p1

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 309
    :pswitch_80
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneVoiceOutEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 310
    :pswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallIsEnable()Z

    move-result p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 314
    :pswitch_82
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 315
    :pswitch_83
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallBlackListClear()I

    move-result p1

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 319
    :pswitch_84
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 320
    :pswitch_85
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 321
    :pswitch_86
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 322
    :pswitch_87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 326
    :pswitch_88
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallBlackListIsEnable()Z

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 330
    :pswitch_89
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 331
    :pswitch_8a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallWhiteListClear()I

    move-result p1

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 335
    :pswitch_8b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 336
    :pswitch_8c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 337
    :pswitch_8d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 338
    :pswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 342
    :pswitch_8f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-interface {p0}, Landroid/os/IApiManager;->PhoneCallWhiteListIsEnable()Z

    move-result p1

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 346
    :pswitch_90
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$PhoneCallWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 347
    :pswitch_91
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAccessMobile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 348
    :pswitch_92
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAccessWlan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 349
    :pswitch_93
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAccessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 350
    :pswitch_94
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-interface {p0}, Landroid/os/IApiManager;->BrowserWhiteListClear()I

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 354
    :pswitch_95
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BrowserWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 355
    :pswitch_96
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BrowserWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 356
    :pswitch_97
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BrowserWhiteListadd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 357
    :pswitch_98
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BrowserWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 358
    :pswitch_99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-interface {p0}, Landroid/os/IApiManager;->BrowserWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 362
    :pswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-interface {p0}, Landroid/os/IApiManager;->BrowserWhiteListIsEnable()Z

    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 366
    :pswitch_9b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$BrowserWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 367
    :pswitch_9c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListClear()I

    move-result p1

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 371
    :pswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 375
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppUnBlockNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 376
    :pswitch_9f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppUnBlockNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 377
    :pswitch_a0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppUnBlockNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 378
    :pswitch_a1
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppUnBlockNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 379
    :pswitch_a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnBlockNetworkWhiteListIsEnable()Z

    move-result p1

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 383
    :pswitch_a3
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppUnBlockNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 384
    :pswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkBlackListClear()I

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 388
    :pswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 392
    :pswitch_a6
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 393
    :pswitch_a7
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 394
    :pswitch_a8
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 395
    :pswitch_a9
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 396
    :pswitch_aa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkBlackListIsEnable()Z

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 400
    :pswitch_ab
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 401
    :pswitch_ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkWhiteListClear()I

    move-result p1

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 405
    :pswitch_ad
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 409
    :pswitch_ae
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 410
    :pswitch_af
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 411
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 412
    :pswitch_b1
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 413
    :pswitch_b2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNetworkWhiteListIsEnable()Z

    move-result p1

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 417
    :pswitch_b3
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 418
    :pswitch_b4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkBlackListClear()I

    move-result p1

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 422
    :pswitch_b5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 426
    :pswitch_b6
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkBlackListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 427
    :pswitch_b7
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkBlackListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 428
    :pswitch_b8
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkBlackListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 429
    :pswitch_b9
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkBlackListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 430
    :pswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkBlackListIsEnable()Z

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 434
    :pswitch_bb
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkBlackListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 435
    :pswitch_bc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListClear()I

    move-result p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 439
    :pswitch_bd
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 440
    :pswitch_be
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 441
    :pswitch_bf
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 442
    :pswitch_c0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkWhiteListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 443
    :pswitch_c1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 447
    :pswitch_c2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-interface {p0}, Landroid/os/IApiManager;->GlobalNetworkWhiteListIsEnable()Z

    move-result p1

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 451
    :pswitch_c3
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$GlobalNetworkWhiteListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 452
    :pswitch_c4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-interface {p0}, Landroid/os/IApiManager;->NetworkFirewallIsEnable()Z

    move-result p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 456
    :pswitch_c5
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$NetworkFirewallEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 457
    :pswitch_c6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-interface {p0}, Landroid/os/IApiManager;->NetworkFirewallTypeGet()I

    move-result p1

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 461
    :pswitch_c7
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$NetworkFirewallTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 462
    :pswitch_c8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0}, Landroid/os/IApiManager;->NetworkFirewallWorkTypeGet()I

    move-result p1

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 466
    :pswitch_c9
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$NetworkFirewallWorkTypeSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 467
    :pswitch_ca
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$NetworkAccessEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 468
    :pswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-interface {p0}, Landroid/os/IApiManager;->NetworkResetOptionIsVisible()Z

    move-result p1

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 472
    :pswitch_cc
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$NetworkResetOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 473
    :pswitch_cd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-interface {p0}, Landroid/os/IApiManager;->AirPlaneOptionIsVisible()Z

    move-result p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 477
    :pswitch_ce
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AirPlaneOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 478
    :pswitch_cf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-interface {p0}, Landroid/os/IApiManager;->VpnOptionIsVisible()Z

    move-result p1

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 482
    :pswitch_d0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$VpnOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 483
    :pswitch_d1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-interface {p0}, Landroid/os/IApiManager;->SettingSearchOptionIsVisible()Z

    move-result p1

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 487
    :pswitch_d2
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SettingSearchOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 488
    :pswitch_d3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-interface {p0}, Landroid/os/IApiManager;->DevelopmentOptionIsVisible()Z

    move-result p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 492
    :pswitch_d4
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DevelopmentOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 493
    :pswitch_d5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-interface {p0}, Landroid/os/IApiManager;->WifiAdvanceOptionIsVisible()Z

    move-result p1

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 497
    :pswitch_d6
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$WifiAdvanceOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 498
    :pswitch_d7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-interface {p0}, Landroid/os/IApiManager;->AppDetailOptionIsVisible()Z

    move-result p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 502
    :pswitch_d8
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppDetailOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 503
    :pswitch_d9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-interface {p0}, Landroid/os/IApiManager;->SettingAllOptionIsVisible()Z

    move-result p1

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 507
    :pswitch_da
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SettingAllOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 508
    :pswitch_db
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SettingOptionIsVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 509
    :pswitch_dc
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$SettingOptionVisible$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 510
    :pswitch_dd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-interface {p0}, Landroid/os/IApiManager;->DefNoColorReadIsEnable()Z

    move-result p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 514
    :pswitch_de
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefNoColorReadEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 515
    :pswitch_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-interface {p0}, Landroid/os/IApiManager;->DefScreenColorAdjustIsEnable()Z

    move-result p1

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 519
    :pswitch_e0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefScreenColorAdjustEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 520
    :pswitch_e1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-interface {p0}, Landroid/os/IApiManager;->DefSystemSettingIsEnable()Z

    move-result p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 524
    :pswitch_e2
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefSystemSettingEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 525
    :pswitch_e3
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 526
    :pswitch_e4
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefDeviceAdminActive$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 527
    :pswitch_e5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-interface {p0}, Landroid/os/IApiManager;->DefBatterySaverIsEnable()Z

    move-result p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 531
    :pswitch_e6
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefBatterySaverEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 532
    :pswitch_e7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-interface {p0}, Landroid/os/IApiManager;->DefAirPlaneIsEnable()Z

    move-result p1

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 536
    :pswitch_e8
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefAirPlaneEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 537
    :pswitch_e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-interface {p0}, Landroid/os/IApiManager;->DefUnknowSourceDetailIsEnable()Z

    move-result p1

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 541
    :pswitch_ea
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefUnknowSourceDetailEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 542
    :pswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-interface {p0}, Landroid/os/IApiManager;->DefFileShareIsEnable()Z

    move-result p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 546
    :pswitch_ec
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefFileShareEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 547
    :pswitch_ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-interface {p0}, Landroid/os/IApiManager;->DefGpsLocationIsEnable()Z

    move-result p1

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 551
    :pswitch_ee
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefGpsLocationEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 552
    :pswitch_ef
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-interface {p0}, Landroid/os/IApiManager;->DefNotifySendIsEnable()Z

    move-result p1

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 556
    :pswitch_f0
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefNotifySendEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 557
    :pswitch_f1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-interface {p0}, Landroid/os/IApiManager;->DefClipboardIsEnable()Z

    move-result p1

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 561
    :pswitch_f2
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefClipboardEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 562
    :pswitch_f3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-interface {p0}, Landroid/os/IApiManager;->DefVolumeAdjustIsEnable()Z

    move-result p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 566
    :pswitch_f4
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefVolumeAdjustEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 567
    :pswitch_f5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-interface {p0}, Landroid/os/IApiManager;->DefPowerOffIsEnable()Z

    move-result p1

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 571
    :pswitch_f6
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefPowerOffEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 572
    :pswitch_f7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-interface {p0}, Landroid/os/IApiManager;->DefPowerSleepIsEnable()Z

    move-result p1

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 576
    :pswitch_f8
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefPowerSleepEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 577
    :pswitch_f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-interface {p0}, Landroid/os/IApiManager;->DefShutdownRebootIsEnable()Z

    move-result p1

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 581
    :pswitch_fa
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefShutdownRebootEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 582
    :pswitch_fb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-interface {p0}, Landroid/os/IApiManager;->DefOtaUpdateIsEnable()Z

    move-result p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 586
    :pswitch_fc
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefOtaUpdateEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 587
    :pswitch_fd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-interface {p0}, Landroid/os/IApiManager;->DefScreenShotIsEnable()Z

    move-result p1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 591
    :pswitch_fe
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefScreenShotEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 592
    :pswitch_ff
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-interface {p0}, Landroid/os/IApiManager;->DefApnIsEnable()Z

    move-result p1

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 596
    :pswitch_100
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefApnEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 597
    :pswitch_101
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-interface {p0}, Landroid/os/IApiManager;->DefLockScreenNotifyIsEnable()Z

    move-result p1

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 601
    :pswitch_102
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefLockScreenNotifyEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 602
    :pswitch_103
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-interface {p0}, Landroid/os/IApiManager;->DefLockScreenIsEnable()Z

    move-result p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 606
    :pswitch_104
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefLockScreenEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 607
    :pswitch_105
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefTimeSetEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 608
    :pswitch_106
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefAutoTimeEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 609
    :pswitch_107
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefSystemUpdateEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 610
    :pswitch_108
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-interface {p0}, Landroid/os/IApiManager;->DefInputMethodClear()I

    move-result p1

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 614
    :pswitch_109
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefInputMethodSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 615
    :pswitch_10a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-interface {p0}, Landroid/os/IApiManager;->DefVideoPlayerClear()I

    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 619
    :pswitch_10b
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefVideoPlayerSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 620
    :pswitch_10c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-interface {p0}, Landroid/os/IApiManager;->DefBrowserClear()I

    move-result p1

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 624
    :pswitch_10d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefBrowserSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 625
    :pswitch_10e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-interface {p0}, Landroid/os/IApiManager;->DefHomeLauncherClear()I

    move-result p1

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 629
    :pswitch_10f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefHomeLauncherSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 630
    :pswitch_110
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-interface {p0}, Landroid/os/IApiManager;->DefMultiUserIsEnable()Z

    move-result p1

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 634
    :pswitch_111
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefMultiUserEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 635
    :pswitch_112
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-interface {p0}, Landroid/os/IApiManager;->DefSafeModeIsEnable()Z

    move-result p1

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 639
    :pswitch_113
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefSafeModeEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 640
    :pswitch_114
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-interface {p0}, Landroid/os/IApiManager;->DefFactoryResetIsEnable()Z

    move-result p1

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 644
    :pswitch_115
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefFactoryResetEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 645
    :pswitch_116
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-interface {p0}, Landroid/os/IApiManager;->DefInstallUnknownApkIsEnable()Z

    move-result p1

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 649
    :pswitch_117
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$DefInstallUnknownApkEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 650
    :pswitch_118
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppGrantUsageStatePermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 651
    :pswitch_119
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppGrantAllPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 652
    :pswitch_11a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AccessibilityServiceEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 653
    :pswitch_11b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-interface {p0}, Landroid/os/IApiManager;->RecentTaskAllClear()I

    move-result p1

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 657
    :pswitch_11c
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppDataClear$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 658
    :pswitch_11d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppCacheClear$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 659
    :pswitch_11e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-interface {p0}, Landroid/os/IApiManager;->AppTrustedListClear()I

    move-result p1

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 663
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppTrustedListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 664
    :pswitch_120
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppTrustedListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 665
    :pswitch_121
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppTrustedListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 666
    :pswitch_122
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppTrustedListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 667
    :pswitch_123
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-interface {p0}, Landroid/os/IApiManager;->AppTrustedListGet()Ljava/util/List;

    move-result-object p1

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 671
    :pswitch_124
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-interface {p0}, Landroid/os/IApiManager;->AppTrustedListIsEnable()Z

    move-result p1

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 675
    :pswitch_125
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppTrustedListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 676
    :pswitch_126
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-interface {p0}, Landroid/os/IApiManager;->AppAliveListClear()I

    move-result p1

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 680
    :pswitch_127
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAliveListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 681
    :pswitch_128
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAliveListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 682
    :pswitch_129
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAliveListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 683
    :pswitch_12a
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAliveListSet$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 684
    :pswitch_12b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-interface {p0}, Landroid/os/IApiManager;->AppAliveListGet()Ljava/util/List;

    move-result-object p1

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 688
    :pswitch_12c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-interface {p0}, Landroid/os/IApiManager;->AppAliveListIsEnable()Z

    move-result p1

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 692
    :pswitch_12d
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppAliveListEnable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 693
    :pswitch_12e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNotifyWhiteListClear()I

    move-result p1

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 697
    :pswitch_12f
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNotifyWhiteListRemove$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 698
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNotifyWhiteListDel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 699
    :pswitch_131
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppNotifyWhiteListAdd$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 700
    :pswitch_132
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 702
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppNotifyWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 705
    :pswitch_133
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNotifyWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 709
    :pswitch_134
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-interface {p0}, Landroid/os/IApiManager;->AppNotifyWhiteListIsEnable()Z

    move-result p1

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 713
    :pswitch_135
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 715
    :cond_1
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppNotifyWhiteListEnable(Z)I

    move-result p1

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 718
    :pswitch_136
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-interface {p0}, Landroid/os/IApiManager;->AppCapScreenPermissionListClear()I

    move-result p1

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 722
    :pswitch_137
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 724
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListRemove(Ljava/util/List;)I

    move-result p1

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 727
    :pswitch_138
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListDel(Ljava/lang/String;)I

    move-result p1

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 732
    :pswitch_139
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListAdd(Ljava/lang/String;)I

    move-result p1

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 737
    :pswitch_13a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 739
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppCapScreenPermissionListSet(Ljava/util/List;)I

    move-result p1

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 742
    :pswitch_13b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-interface {p0}, Landroid/os/IApiManager;->AppCapScreenPermissionListGet()Ljava/util/List;

    move-result-object p1

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 746
    :pswitch_13c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-interface {p0}, Landroid/os/IApiManager;->AppCapScreenPermissionListIsEnable()Z

    move-result p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 750
    :pswitch_13d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 752
    :cond_2
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppCapScreenPermissionListEnable(Z)I

    move-result p1

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 755
    :pswitch_13e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-interface {p0}, Landroid/os/IApiManager;->AppTopRunningGet()Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 759
    :pswitch_13f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-interface {p0}, Landroid/os/IApiManager;->AppAllRunningGet()Ljava/util/List;

    move-result-object p1

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 763
    :pswitch_140
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppEnableSet(Ljava/lang/String;)I

    move-result p1

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 768
    :pswitch_141
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppDisableSet(Ljava/lang/String;)I

    move-result p1

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 773
    :pswitch_142
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppForceStop(Ljava/lang/String;)I

    move-result p1

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 778
    :pswitch_143
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppForceStart(Ljava/lang/String;)I

    move-result p1

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 783
    :pswitch_144
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnFreezeListClear()I

    move-result p1

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 787
    :pswitch_145
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 789
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnFreezeListRemove(Ljava/util/List;)I

    move-result p1

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 792
    :pswitch_146
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 794
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnFreezeListDel(Ljava/lang/String;)I

    move-result p1

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 797
    :pswitch_147
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnFreezeListAdd(Ljava/lang/String;)I

    move-result p1

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 802
    :pswitch_148
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 804
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUnFreezeListSet(Ljava/util/List;)I

    move-result p1

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 807
    :pswitch_149
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnFreezeListGet()Ljava/util/List;

    move-result-object p1

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 811
    :pswitch_14a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUnFreezeListIsEnable()Z

    move-result p1

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 815
    :pswitch_14b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 817
    :cond_3
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppUnFreezeListEnable(Z)I

    move-result p1

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 820
    :pswitch_14c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-interface {p0}, Landroid/os/IApiManager;->AppFreezeListClear()I

    move-result p1

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 824
    :pswitch_14d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 826
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppFreezeListRemove(Ljava/util/List;)I

    move-result p1

    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 829
    :pswitch_14e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppFreezeListDel(Ljava/lang/String;)I

    move-result p1

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 834
    :pswitch_14f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppFreezeListAdd(Ljava/lang/String;)I

    move-result p1

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 839
    :pswitch_150
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 841
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppFreezeListSet(Ljava/util/List;)I

    move-result p1

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 844
    :pswitch_151
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-interface {p0}, Landroid/os/IApiManager;->AppFreezeListGet()Ljava/util/List;

    move-result-object p1

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 848
    :pswitch_152
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-interface {p0}, Landroid/os/IApiManager;->AppFreezeListIsEnable()Z

    move-result p1

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 852
    :pswitch_153
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 854
    :cond_4
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppFreezeListEnable(Z)I

    move-result p1

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 857
    :pswitch_154
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-interface {p0}, Landroid/os/IApiManager;->AppManualInstallIsEnable()Z

    move-result p1

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 861
    :pswitch_155
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 863
    :cond_5
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppManualInstallEnable(Z)I

    move-result p1

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 866
    :pswitch_156
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppSilentInstallPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 867
    :pswitch_157
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppSilentUninstall$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 868
    :pswitch_158
    invoke-direct {p0, p2, p3}, Landroid/os/IApiManager$Stub;->onTransact$AppSilentInstall$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 869
    :pswitch_159
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUninstallBlackListClear()I

    move-result p1

    .line 871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 873
    :pswitch_15a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 875
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 878
    :pswitch_15b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 880
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 883
    :pswitch_15c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 888
    :pswitch_15d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 890
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 893
    :pswitch_15e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-interface {p0}, Landroid/os/IApiManager;->ApppUninstallBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 897
    :pswitch_15f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUninstallBlackListIsEnable()Z

    move-result p1

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 901
    :pswitch_160
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 903
    :cond_6
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppUninstallBlackListEnable(Z)I

    move-result p1

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 906
    :pswitch_161
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUninstallWhiteListClear()I

    move-result p1

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 910
    :pswitch_162
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 912
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 915
    :pswitch_163
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 920
    :pswitch_164
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 925
    :pswitch_165
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 927
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppUninstallWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 930
    :pswitch_166
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUninstallWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 934
    :pswitch_167
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-interface {p0}, Landroid/os/IApiManager;->AppUninstallWhiteListIsEnable()Z

    move-result p1

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 938
    :pswitch_168
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 940
    :cond_7
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppUninstallWhiteListEnable(Z)I

    move-result p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 943
    :pswitch_169
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallBlackListClear()I

    move-result p1

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 947
    :pswitch_16a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 949
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallBlackListRemove(Ljava/util/List;)I

    move-result p1

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 952
    :pswitch_16b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 954
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallBlackListDel(Ljava/lang/String;)I

    move-result p1

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 957
    :pswitch_16c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 959
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallBlackListAdd(Ljava/lang/String;)I

    move-result p1

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 962
    :pswitch_16d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 964
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallBlackListSet(Ljava/util/List;)I

    move-result p1

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 967
    :pswitch_16e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallBlackListGet()Ljava/util/List;

    move-result-object p1

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 971
    :pswitch_16f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallBlackListIsEnable()Z

    move-result p1

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 975
    :pswitch_170
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 977
    :cond_8
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppInstallBlackListEnable(Z)I

    move-result p1

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 980
    :pswitch_171
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallWhiteListClear()I

    move-result p1

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 984
    :pswitch_172
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 986
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListRemove(Ljava/util/List;)I

    move-result p1

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 989
    :pswitch_173
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListDel(Ljava/lang/String;)I

    move-result p1

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 994
    :pswitch_174
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 996
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListAdd(Ljava/lang/String;)I

    move-result p1

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 999
    :pswitch_175
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 1001
    invoke-interface {p0, p1}, Landroid/os/IApiManager;->AppInstallWhiteListSet(Ljava/util/List;)I

    move-result p1

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1004
    :pswitch_176
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallWhiteListGet()Ljava/util/List;

    move-result-object p1

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 1008
    :pswitch_177
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-interface {p0}, Landroid/os/IApiManager;->AppInstallWhiteListIsEnable()Z

    move-result p1

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1012
    :pswitch_178
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 1014
    :cond_9
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->AppInstallWhiteListEnable(Z)I

    move-result p1

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1017
    :pswitch_179
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-interface {p0}, Landroid/os/IApiManager;->RecentKeyIsEnable()Z

    move-result p1

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1021
    :pswitch_17a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v0, v1

    .line 1023
    :cond_a
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->RecentKeyEnable(Z)I

    move-result p1

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1026
    :pswitch_17b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-interface {p0}, Landroid/os/IApiManager;->PowerKeyLongPressIsEnable()Z

    move-result p1

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1030
    :pswitch_17c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    .line 1032
    :cond_b
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->PowerKeyLongPressEnable(Z)I

    move-result p1

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1035
    :pswitch_17d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-interface {p0}, Landroid/os/IApiManager;->PowerKeyShortPressIsEnable()Z

    move-result p1

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1039
    :pswitch_17e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    move v0, v1

    .line 1041
    :cond_c
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->PowerKeyShortPressEnable(Z)I

    move-result p1

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1044
    :pswitch_17f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-interface {p0}, Landroid/os/IApiManager;->VolumeKeyIsEnable()Z

    move-result p1

    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1048
    :pswitch_180
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v0, v1

    .line 1050
    :cond_d
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->VolumeKeyEnable(Z)I

    move-result p1

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1053
    :pswitch_181
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-interface {p0}, Landroid/os/IApiManager;->VolumeDownKeyIsEnable()Z

    move-result p1

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1057
    :pswitch_182
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v0, v1

    .line 1059
    :cond_e
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->VolumeDownKeyEnable(Z)I

    move-result p1

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1062
    :pswitch_183
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-interface {p0}, Landroid/os/IApiManager;->VolumeUpKeyIsEnable()Z

    move-result p1

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1066
    :pswitch_184
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    move v0, v1

    .line 1068
    :cond_f
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->VolumeUpKeyEnable(Z)I

    move-result p1

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1071
    :pswitch_185
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-interface {p0}, Landroid/os/IApiManager;->PowerKeyIsEnable()Z

    move-result p1

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1075
    :pswitch_186
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    move v0, v1

    .line 1077
    :cond_10
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->PowerKeyEnable(Z)I

    move-result p1

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1080
    :pswitch_187
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-interface {p0}, Landroid/os/IApiManager;->MenuKeyIsEnable()Z

    move-result p1

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1084
    :pswitch_188
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    move v0, v1

    .line 1086
    :cond_11
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->MenuKeyEnable(Z)I

    move-result p1

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1089
    :pswitch_189
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-interface {p0}, Landroid/os/IApiManager;->BackKeyIsEnable()Z

    move-result p1

    .line 1091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1093
    :pswitch_18a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    move v0, v1

    .line 1095
    :cond_12
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->BackKeyEnable(Z)I

    move-result p1

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1098
    :pswitch_18b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-interface {p0}, Landroid/os/IApiManager;->HomeKeyIsEnable()Z

    move-result p1

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1102
    :pswitch_18c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    move v0, v1

    .line 1104
    :cond_13
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->HomeKeyEnable(Z)I

    move-result p1

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1107
    :pswitch_18d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusBarExpandPanelIsEnable()Z

    move-result p1

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1111
    :pswitch_18e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    move v0, v1

    .line 1113
    :cond_14
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->StatusBarExpandPanelEnable(Z)I

    move-result p1

    .line 1114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1116
    :pswitch_18f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-interface {p0}, Landroid/os/IApiManager;->NavRecentButtonIsEnable()Z

    move-result p1

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1120
    :pswitch_190
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15

    move v0, v1

    .line 1122
    :cond_15
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavRecentButtonEnable(Z)I

    move-result p1

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1125
    :pswitch_191
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-interface {p0}, Landroid/os/IApiManager;->NavBackButtonIsEnable()Z

    move-result p1

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1129
    :pswitch_192
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    move v0, v1

    .line 1131
    :cond_16
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavBackButtonEnable(Z)I

    move-result p1

    .line 1132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1134
    :pswitch_193
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-interface {p0}, Landroid/os/IApiManager;->NavHomeButtonIsEnable()Z

    move-result p1

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1138
    :pswitch_194
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    move v0, v1

    .line 1140
    :cond_17
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavHomeButtonEnable(Z)I

    move-result p1

    .line 1141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1143
    :pswitch_195
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    move v0, v1

    .line 1145
    :cond_18
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavScreenshotButtonVisible(Z)I

    move-result p1

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1148
    :pswitch_196
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    move v0, v1

    .line 1150
    :cond_19
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavVolumeDownButtonVisible(Z)I

    move-result p1

    .line 1151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1153
    :pswitch_197
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a

    move v0, v1

    .line 1155
    :cond_1a
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavVolumeUpButtonVisible(Z)I

    move-result p1

    .line 1156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1158
    :pswitch_198
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    move v0, v1

    .line 1160
    :cond_1b
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavMenuButtonVisible(Z)I

    move-result p1

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1163
    :pswitch_199
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    move v0, v1

    .line 1165
    :cond_1c
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavRecentButtonVisible(Z)I

    move-result p1

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1168
    :pswitch_19a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v1

    .line 1170
    :cond_1d
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavBackButtonVisible(Z)I

    move-result p1

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1173
    :pswitch_19b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    move v0, v1

    .line 1175
    :cond_1e
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->NavHomeButtonVisible(Z)I

    move-result p1

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1178
    :pswitch_19c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusBarNotifyIsEnable()Z

    move-result p1

    .line 1180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1182
    :pswitch_19d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f

    move v0, v1

    .line 1184
    :cond_1f
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->StatusBarNotifyEnable(Z)I

    move-result p1

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1187
    :pswitch_19e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusBarDropIsEnable()Z

    move-result p1

    .line 1189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1191
    :pswitch_19f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    move v0, v1

    .line 1193
    :cond_20
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->StatusBarDropEnable(Z)I

    move-result p1

    .line 1194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1196
    :pswitch_1a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusBarHide()I

    move-result p1

    .line 1198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1200
    :pswitch_1a1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusbarIsShow()Z

    move-result p1

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1204
    :pswitch_1a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-interface {p0}, Landroid/os/IApiManager;->StatusBarShow()I

    move-result p1

    .line 1206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1208
    :pswitch_1a3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-interface {p0}, Landroid/os/IApiManager;->NavBarHide()I

    move-result p1

    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1212
    :pswitch_1a4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-interface {p0}, Landroid/os/IApiManager;->NavBarIsShow()Z

    move-result p1

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1216
    :pswitch_1a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-interface {p0}, Landroid/os/IApiManager;->NavBarShow()I

    move-result p1

    .line 1218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1220
    :pswitch_1a6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-interface {p0}, Landroid/os/IApiManager;->TouchScreenIsEnable()Z

    move-result p1

    .line 1222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1224
    :pswitch_1a7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21

    move v0, v1

    .line 1226
    :cond_21
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->TouchScreenEnable(Z)I

    move-result p1

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1229
    :pswitch_1a8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-interface {p0}, Landroid/os/IApiManager;->GpsLocationIsOn()Z

    move-result p1

    .line 1231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1233
    :pswitch_1a9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    move v0, v1

    .line 1235
    :cond_22
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->GpsLocationOn(Z)I

    move-result p1

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1238
    :pswitch_1aa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-interface {p0}, Landroid/os/IApiManager;->HeadsetIsEnable()Z

    move-result p1

    .line 1240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1242
    :pswitch_1ab
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23

    move v0, v1

    .line 1244
    :cond_23
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->HeadsetEnable(Z)I

    move-result p1

    .line 1245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1247
    :pswitch_1ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-interface {p0}, Landroid/os/IApiManager;->MicphoneIsEnable()Z

    move-result p1

    .line 1249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1251
    :pswitch_1ad
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    move v0, v1

    .line 1253
    :cond_24
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->MicphoneEnable(Z)I

    move-result p1

    .line 1254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1256
    :pswitch_1ae
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-interface {p0}, Landroid/os/IApiManager;->EyeComfortIsEnable()Z

    move-result p1

    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1260
    :pswitch_1af
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    move v0, v1

    .line 1262
    :cond_25
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->EyeComfortEnable(Z)I

    move-result p1

    .line 1263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1265
    :pswitch_1b0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-interface {p0}, Landroid/os/IApiManager;->CameraVideoShutterSoundIsEnable()Z

    move-result p1

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1269
    :pswitch_1b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_26

    move v0, v1

    .line 1271
    :cond_26
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->CameraVideoShutterSoundEnable(Z)I

    move-result p1

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1274
    :pswitch_1b2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-interface {p0}, Landroid/os/IApiManager;->CameraPhotoShutterSoundIsEnable()Z

    move-result p1

    .line 1276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1278
    :pswitch_1b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    move v0, v1

    .line 1280
    :cond_27
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->CameraPhotoShutterSoundEnable(Z)I

    move-result p1

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1283
    :pswitch_1b4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-interface {p0}, Landroid/os/IApiManager;->CameraIsEnable()Z

    move-result p1

    .line 1285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1287
    :pswitch_1b5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28

    move v0, v1

    .line 1289
    :cond_28
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->CameraEnable(Z)I

    move-result p1

    .line 1290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1292
    :pswitch_1b6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-interface {p0}, Landroid/os/IApiManager;->UsbOtgIsEnable()Z

    move-result p1

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1296
    :pswitch_1b7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29

    move v0, v1

    .line 1298
    :cond_29
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->UsbOtgEnable(Z)I

    move-result p1

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1301
    :pswitch_1b8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-interface {p0}, Landroid/os/IApiManager;->ExternalStorageIsEnable()Z

    move-result p1

    .line 1303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1305
    :pswitch_1b9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a

    move v0, v1

    .line 1307
    :cond_2a
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->ExternalStorageEnable(Z)I

    move-result p1

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1310
    :pswitch_1ba
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-interface {p0}, Landroid/os/IApiManager;->UsbStorageIsEnable()Z

    move-result p1

    .line 1312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1314
    :pswitch_1bb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b

    move v0, v1

    .line 1316
    :cond_2b
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->UsbStorageEnable(Z)I

    move-result p1

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1319
    :pswitch_1bc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-interface {p0}, Landroid/os/IApiManager;->SdcardStorageIsEnable()Z

    move-result p1

    .line 1321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1323
    :pswitch_1bd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c

    move v0, v1

    .line 1325
    :cond_2c
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->SdcardStorageEnable(Z)I

    move-result p1

    .line 1326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1328
    :pswitch_1be
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-interface {p0}, Landroid/os/IApiManager;->UsbMtpIsEnable()Z

    move-result p1

    .line 1330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1332
    :pswitch_1bf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d

    move v0, v1

    .line 1334
    :cond_2d
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->UsbMtpEnable(Z)I

    move-result p1

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1337
    :pswitch_1c0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-interface {p0}, Landroid/os/IApiManager;->UsbDebugIsEnable()Z

    move-result p1

    .line 1339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1341
    :pswitch_1c1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2e

    move v0, v1

    .line 1343
    :cond_2e
    invoke-interface {p0, v0}, Landroid/os/IApiManager;->UsbDebugEnable(Z)I

    move-result p1

    .line 1344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1346
    :pswitch_1c2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-interface {p0}, Landroid/os/IApiManager;->FirmwareVersionGet()Ljava/lang/String;

    move-result-object p1

    .line 1348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1350
    :pswitch_1c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-interface {p0}, Landroid/os/IApiManager;->ProjectNameGet()Ljava/lang/String;

    move-result-object p1

    .line 1352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1354
    :pswitch_1c4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-interface {p0}, Landroid/os/IApiManager;->PlatformNameGet()Ljava/lang/String;

    move-result-object p1

    .line 1356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1358
    :pswitch_1c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-interface {p0}, Landroid/os/IApiManager;->ApiVersion()Ljava/lang/String;

    move-result-object p1

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1362
    :cond_2f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c5
        :pswitch_1c4
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1c1
        :pswitch_1c0
        :pswitch_1bf
        :pswitch_1be
        :pswitch_1bd
        :pswitch_1bc
        :pswitch_1bb
        :pswitch_1ba
        :pswitch_1b9
        :pswitch_1b8
        :pswitch_1b7
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1b4
        :pswitch_1b3
        :pswitch_1b2
        :pswitch_1b1
        :pswitch_1b0
        :pswitch_1af
        :pswitch_1ae
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
