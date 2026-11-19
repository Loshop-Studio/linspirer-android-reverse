.class public Lcom/android/launcher3/network/params/LoginParams;
.super Lcom/android/launcher3/network/params/Params;
.source "LoginParams.java"


# instance fields
.field public android_id:Ljava/lang/String;

.field public appstore_version:Ljava/lang/String;

.field public launcher_version:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public rom_version:Ljava/lang/String;

.field public sn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppstore_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->appstore_version:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncher_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->launcher_version:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->rom_version:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/LoginParams;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->android_id:Ljava/lang/String;

    return-void
.end method

.method public setAppstore_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->appstore_version:Ljava/lang/String;

    return-void
.end method

.method public setLauncher_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->launcher_version:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->password:Ljava/lang/String;

    return-void
.end method

.method public setRom_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->rom_version:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/LoginParams;->sn:Ljava/lang/String;

    return-void
.end method
