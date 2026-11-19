.class public interface abstract Lcom/unionnn/iface/IMDMUniIface;
.super Ljava/lang/Object;
.source "IMDMUniIface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionnn/iface/IMDMUniIface$Stub;
    }
.end annotation


# virtual methods
.method public abstract activeDeviceAdmin(Ljava/lang/String;)V
.end method

.method public abstract appWhiteListRead()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract appWhiteListWrite(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract clearLockedScreenPassword()V
.end method

.method public abstract disableApp(Ljava/lang/String;)V
.end method

.method public abstract disableBack()V
.end method

.method public abstract disableBluetooth()V
.end method

.method public abstract disableCamera()V
.end method

.method public abstract disableFireWall()V
.end method

.method public abstract disableGPS()V
.end method

.method public abstract disableHome()V
.end method

.method public abstract disableLongPressPower()V
.end method

.method public abstract disableMobileData()V
.end method

.method public abstract disableNFC()V
.end method

.method public abstract disableNavigation()V
.end method

.method public abstract disableOTA()V
.end method

.method public abstract disableOTG()V
.end method

.method public abstract disableRecent()V
.end method

.method public abstract disableScreenShot()V
.end method

.method public abstract disableSdCard()V
.end method

.method public abstract disableShortPressPower()V
.end method

.method public abstract disableSpeech()V
.end method

.method public abstract disableUrlWhite()Z
.end method

.method public abstract disableUsb()V
.end method

.method public abstract disableVolume()V
.end method

.method public abstract enableApp(Ljava/lang/String;)V
.end method

.method public abstract enableBack()V
.end method

.method public abstract enableBluetooth()V
.end method

.method public abstract enableCamera()V
.end method

.method public abstract enableFireWall()V
.end method

.method public abstract enableGPS()V
.end method

.method public abstract enableHome()V
.end method

.method public abstract enableLongPressPower()V
.end method

.method public abstract enableMobileData()V
.end method

.method public abstract enableNFC()V
.end method

.method public abstract enableNavigation()V
.end method

.method public abstract enableOTA()V
.end method

.method public abstract enableOTG()V
.end method

.method public abstract enableRecent()V
.end method

.method public abstract enableScreenShot()V
.end method

.method public abstract enableSdCard()V
.end method

.method public abstract enableShortPressPower()V
.end method

.method public abstract enableSpeech()V
.end method

.method public abstract enableUrlWhite()Z
.end method

.method public abstract enableUsb()V
.end method

.method public abstract enableVolume()V
.end method

.method public abstract getBluetoothMacAddress()Ljava/lang/String;
.end method

.method public abstract getWifiMacAddress()Ljava/lang/String;
.end method

.method public abstract hideWifiAdvanced()V
.end method

.method public abstract isMDMServiceActivated()Z
.end method

.method public abstract modifySystemTime(J)V
.end method

.method public abstract resetFactory()V
.end method

.method public abstract restoreSettings()V
.end method

.method public abstract runADBComm(Ljava/lang/String;)V
.end method

.method public abstract showWifiAdvanced()V
.end method

.method public abstract silentInstall(Ljava/lang/String;)V
.end method

.method public abstract silentUnInstall(Ljava/lang/String;)V
.end method

.method public abstract systemInit()V
.end method

.method public abstract urlBlackListRead()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract urlBlackListWrite(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract urlWhiteExceptListRead()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract urlWhiteExceptListWrite(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract urlWhiteListRead()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract urlWhiteListWrite(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
