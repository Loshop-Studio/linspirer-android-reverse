.class public interface abstract Landroid/hardware/IApiManager;
.super Ljava/lang/Object;
.source "IApiManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IApiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearAppInstallWhiteList()I
.end method

.method public abstract getApiVersion()Ljava/lang/String;
.end method

.method public abstract getAppInstallWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDDRSize()Ljava/lang/String;
.end method

.method public abstract getFlashSize()Ljava/lang/String;
.end method

.method public abstract getGpsLocation()Ljava/lang/String;
.end method

.method public abstract getManufacturer()Ljava/lang/String;
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getOsVersion()Ljava/lang/String;
.end method

.method public abstract getPhoneImei(I)Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getWifiConnectedSSID()Ljava/lang/String;
.end method

.method public abstract getWifiMacAddress()Ljava/lang/String;
.end method

.method public abstract isBluetoothEnable()Z
.end method

.method public abstract setAdbEnable(Z)I
.end method

.method public abstract setAppFreeze(Ljava/lang/String;)I
.end method

.method public abstract setAppInstallWhiteList(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setAppUnFreeze(Ljava/lang/String;)I
.end method

.method public abstract setBackButtonEnable(Z)I
.end method

.method public abstract setBluetoothEnable(Z)I
.end method

.method public abstract setFactoryRest()I
.end method

.method public abstract setHomeButtonEnable(Z)I
.end method

.method public abstract setMtpEnable(Z)I
.end method

.method public abstract setNetworkAccessRule(Ljava/lang/String;)I
.end method

.method public abstract setPowerKeyEnable(Z)I
.end method

.method public abstract setRecentButtonEnable(Z)I
.end method

.method public abstract setSdcardStorageEnable(Z)I
.end method

.method public abstract setSysTime(J)I
.end method

.method public abstract setUsbStorageEnable(Z)I
.end method

.method public abstract setVolumeDownKeyEnable(Z)I
.end method

.method public abstract setVolumeUpKeyEnable(Z)I
.end method

.method public abstract silentInstall(Ljava/lang/String;Z)I
.end method

.method public abstract silentUninstall(Ljava/lang/String;Z)I
.end method
