.class public Lcom/android/launcher3/network/params/LicenseParmas;
.super Lcom/android/launcher3/network/params/Params;
.source "LicenseParmas.java"


# instance fields
.field public deviceid:Ljava/lang/String;

.field public devicesn:Ljava/lang/String;

.field public licenseserial:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LicenseParmas;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicesn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LicenseParmas;->devicesn:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseserial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LicenseParmas;->licenseserial:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LicenseParmas;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setDevicesn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LicenseParmas;->devicesn:Ljava/lang/String;

    return-void
.end method

.method public setLicenseserial(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LicenseParmas;->licenseserial:Ljava/lang/String;

    return-void
.end method
