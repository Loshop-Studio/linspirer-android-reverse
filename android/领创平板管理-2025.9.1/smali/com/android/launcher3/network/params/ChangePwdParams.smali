.class public Lcom/android/launcher3/network/params/ChangePwdParams;
.super Lcom/android/launcher3/network/params/Params;
.source "ChangePwdParams.java"


# instance fields
.field public email:Ljava/lang/String;

.field public oldpassword:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getOldpassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->oldpassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->email:Ljava/lang/String;

    return-void
.end method

.method public setOldpassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->oldpassword:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ChangePwdParams;->password:Ljava/lang/String;

    return-void
.end method
