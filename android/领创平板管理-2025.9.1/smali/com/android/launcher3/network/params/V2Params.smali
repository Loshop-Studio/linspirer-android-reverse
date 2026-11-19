.class public Lcom/android/launcher3/network/params/V2Params;
.super Ljava/lang/Object;
.source "V2Params.java"


# instance fields
.field public client_version:Ljava/lang/String;

.field public id:I

.field public jsonrpc:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/network/params/V2Params;->id:I

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/android/launcher3/network/params/V2Params;->version:I

    const-string v0, "2.0"

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/params/V2Params;->jsonrpc:Ljava/lang/String;

    return-void
.end method

.method private getOwnVersionName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.launcher3"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getClient_version()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/params/V2Params;->getOwnVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/V2Params;->id:I

    return v0
.end method

.method public getJsonrpc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/V2Params;->jsonrpc:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "method"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/V2Params;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/V2Params;->params:Ljava/lang/String;

    const-string v1, "1191ADF1-8489-D8DA-5E9B-755A8B674394"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/huawei/hem/bc;->l(I)Ljavax/crypto/Cipher;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/hem/eo;->f([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "logoutold throwable:"

    .line 6
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "logoutold exception:"

    .line 7
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "login two:"

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "login one:"

    .line 9
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "!version"
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/V2Params;->version:I

    return v0
.end method

.method public setClient_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/V2Params;->client_version:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/V2Params;->id:I

    return-void
.end method

.method public setJsonrpc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/V2Params;->jsonrpc:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/V2Params;->method:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/V2Params;->params:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/V2Params;->version:I

    return-void
.end method
