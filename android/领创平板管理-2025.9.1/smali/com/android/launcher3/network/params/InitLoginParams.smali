.class public Lcom/android/launcher3/network/params/InitLoginParams;
.super Lcom/android/launcher3/network/params/Params;
.source "InitLoginParams.java"


# instance fields
.field public appstore_version:Ljava/lang/String;

.field public classname:Ljava/lang/String;

.field public interest_class:Ljava/lang/String;

.field public jdclassid:Ljava/lang/String;

.field public launcher_version:Ljava/lang/String;

.field public rom_version:Ljava/lang/String;

.field public schoolid:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/params/InitLoginParams;->setSn(Ljava/lang/String;)V

    const-string v0, "com.android.launcher3"

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/params/InitLoginParams;->setLauncher_version(Ljava/lang/String;)V

    const-string v0, "com.ndwill.swd.appstore"

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/params/InitLoginParams;->setAppstore_version(Ljava/lang/String;)V

    .line 5
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/params/InitLoginParams;->setRom_version(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppstore_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->appstore_version:Ljava/lang/String;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getInterest_class()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->interest_class:Ljava/lang/String;

    return-object v0
.end method

.method public getJdclassid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->jdclassid:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncher_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->launcher_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->rom_version:Ljava/lang/String;

    return-object v0
.end method

.method public getSchoolid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->schoolid:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/InitLoginParams;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAppstore_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->appstore_version:Ljava/lang/String;

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->classname:Ljava/lang/String;

    return-void
.end method

.method public setInterest_class(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->interest_class:Ljava/lang/String;

    return-void
.end method

.method public setJdclassid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->jdclassid:Ljava/lang/String;

    return-void
.end method

.method public setLauncher_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->launcher_version:Ljava/lang/String;

    return-void
.end method

.method public setRom_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->rom_version:Ljava/lang/String;

    return-void
.end method

.method public setSchoolid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->schoolid:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->sn:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/InitLoginParams;->username:Ljava/lang/String;

    return-void
.end method
