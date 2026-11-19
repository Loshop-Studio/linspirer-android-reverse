.class public Lcom/huawei/hem/y4;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static a:Ljava/util/Timer;

.field public static b:Ljava/io/File;

.field public static c:Landroid/mdmcom/ICtEmmManager;

.field public static d:Lcom/huawei/hem/o8;


# direct methods
.method public static A(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v2}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method public static B(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "send  logout user broadcast"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fromOwner"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.linspirer.launcher3.user_logout"

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.launcher3"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static C()Landroid/mdmcom/ICtEmmManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/y4;->c:Landroid/mdmcom/ICtEmmManager;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/mdmcom/MdmComConst;->SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/mdmcom/ICtEmmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/mdmcom/ICtEmmManager;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/y4;->c:Landroid/mdmcom/ICtEmmManager;

    const-string v0, "mICtEmmManager = "

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/hem/y4;->c:Landroid/mdmcom/ICtEmmManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmmUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/y4;->c:Landroid/mdmcom/ICtEmmManager;

    return-object v0
.end method

.method public static D()Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "unknown"

    if-nez v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "40E06F51-30D0-D6AD-7F7D-008AD0ADC570"

    .line 7
    invoke-static {v1, v0, v3}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 9
    iget-object v3, v1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, v1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 11
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v5, "student_id"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iput-object v3, v1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    const-string v1, "AdminEnterUtil  -- exchangeToMd5 is start"

    .line 17
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "md5"

    .line 19
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 21
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    array-length v5, v0

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v4

    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x8

    if-le v1, v5, :cond_5

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdminEnterUtil  -- hexToLong is start "

    .line 33
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 38
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    .line 39
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v2
.end method

.method public static E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/g3;)V
    .locals 4

    const v0, 0x7f0c012f

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v3, ".apk"

    invoke-static {v1, v2, p1, v3}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hem/y4;->b:Ljava/io/File;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DownLoadUtil"

    if-eqz v0, :cond_0

    const-string p1, "dest.exists() install"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v1, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/huawei/hem/y4;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p3}, Lcom/huawei/hem/y4;->w(Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hem/g3;)V

    goto :goto_0

    :cond_0
    const-string v0, "download"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/huawei/hem/y4;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huawei/hem/y4;->b:Ljava/io/File;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownLoadUtildownload app packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Lcom/huawei/hem/he;

    invoke-direct {p1, p2}, Lcom/huawei/hem/he;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/huawei/hem/he;->z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;

    new-instance p2, Lcom/huawei/hem/u5;

    invoke-direct {p2, p0, p3, v0, v1}, Lcom/huawei/hem/u5;-><init>(Landroid/content/Context;Lcom/huawei/hem/g3;Ljava/lang/String;Ljava/io/File;)V

    .line 15
    iput-object p2, p1, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    .line 16
    invoke-virtual {p1}, Lcom/huawei/hem/he;->start()I

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static F(Landroid/content/Context;)V
    .locals 1

    const-string v0, "send  refresh desktop broadcast"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "com.linspirer.launcher3.refresh_desktop"

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->I(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->H(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "huawei and honor no need handle wifi config"

    .line 5
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static H(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v0, "read wifi ssid"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "wifi"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 7
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not in wifi white list "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.launcher3"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static J(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.laucher3.mdm.obtaindevicesn"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/de;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_sn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "unknown"

    :cond_1
    :goto_0
    const-string v2, "device_imei"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {p0}, Lcom/huawei/hem/de;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "return isv sn"

    .line 11
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static K(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.linspirer.edu.return_gesture_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hem/t3;->e()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/GesturePassword;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/GesturePassword;->getGesture_password()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastSenderUtil  -- get gesture password : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "gesture_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static L(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.linspirer.edu.returnlicensestatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {v1}, Lcom/huawei/hem/y5;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "activate_status"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x64

    const-string v2, "isv_code"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static M(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.linspirer.edu.return.login.state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    invoke-virtual {v1}, Lcom/huawei/hem/y5;->N()I

    move-result v1

    const-string v2, "login_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static N(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.logoutstatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "logoutstatus"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static O(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.phone.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1}, Lcom/huawei/hem/ic;->j()Z

    move-result v1

    const-string v2, "phone_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static P(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.sms.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1}, Lcom/huawei/hem/ic;->p0()Z

    move-result v1

    const-string v2, "sms_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static Q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.SCREEN_SHOT_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "path"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.ndwill.swd.appstore"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static S(Z)V
    .locals 56

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/huawei/hem/y4;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-static {}, Lcom/huawei/hem/ce;->a()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/huawei/hem/ce;->x()Z

    move-result v2

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    if-nez v2, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_3

    :cond_0
    const-string v5, "accessibility"

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/huawei/hem/bc;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v16, v0

    :goto_0
    move-object v0, v3

    move-object/from16 v17, v5

    goto/16 :goto_1

    :cond_1
    const-string v2, "com.android.settings.Settings$StorageSettingsActivity"

    const-string v6, "com.android.settings.Settings$SecurityAndPrivacySettingsActivity"

    const-string v7, "com.android.settings.Settings$BluetoothSettingsActivity"

    const-string v8, "call_settings"

    const-string v9, "tether_settings"

    const-string v10, "mobile_network_settings"

    const-string v11, "font_size"

    const-string v12, "wifi_display"

    const-string v13, "com.huawei.systemmanager.power.ui.HwPowerManagerActivity"

    const-string v14, "com.android.settings.Settings$AppCloneActivity"

    const-string v15, "com.android.settings.Settings$MoreAssistanceSettingsActivity"

    if-eq v1, v4, :cond_2

    const-string v4, "com.android.settings.wallpaper.WallpaperSuggestionActivity"

    move-object/from16 v16, v0

    const-string v0, " com.android.settings.facechecker.unlock.FaceUnLockSettingsActivity$FaceUnLockSuggestionActivity"

    move-object/from16 v17, v2

    const-string v2, "com.android.settings.Settings$ZenModeAutomationSuggestionActivity"

    move-object/from16 v18, v6

    const-string v6, "com.android.settings.Settings$FingerprintEnrollSuggestionActivity"

    move-object/from16 v19, v8

    const-string v8, "com.google.android.gms.app.settings.GoogleSettingsIALink"

    move-object/from16 v20, v9

    const-string v9, "com.huawei.hwid.cloudsettings.ui.HuaweiIDForSettingsActivity"

    move-object/from16 v21, v10

    const-string v10, "com.android.settings.Settings$UserAndAccountDashboardActivity"

    move-object/from16 v22, v11

    const-string v11, "com.android.settings.Settings$AppAndNotificationDashboardActivity"

    move-object/from16 v23, v12

    const-string v12, "backup_settings"

    move-object/from16 v24, v0

    const-string v0, "system_navigation"

    move-object/from16 v25, v2

    const-string v2, "print_settings"

    move-object/from16 v26, v2

    const-string v2, "usb_mode"

    move-object/from16 v27, v2

    const-string v2, "air_sharing"

    move-object/from16 v28, v2

    const-string v2, "authentication_info"

    move-object/from16 v29, v2

    const-string v2, "user_experience_improve_plan"

    move-object/from16 v30, v2

    const-string v2, "reset_settings"

    move-object/from16 v31, v2

    const-string v2, "data_transmission"

    move-object/from16 v32, v2

    const-string v2, "language_settings"

    move-object/from16 v33, v2

    const-string v2, "vpn_settings"

    move-object/from16 v34, v2

    const-string v2, "title_traffic_management"

    move-object/from16 v35, v2

    const-string v2, "toggle_airplane"

    move-object/from16 v36, v2

    const-string v2, "com.huawei.android.FloatTasks.settings.FloatTaskSuggestionSettings"

    move-object/from16 v37, v2

    const-string v2, "com.huawei.android.hicloud.ui.activity.BackupMainforSettingActivity"

    move-object/from16 v38, v2

    const-string v2, "com.huawei.android.remotecontrol.ui.PhoneFinderForSettingActivity"

    packed-switch v1, :pswitch_data_0

    move-object v8, v3

    move-object/from16 v17, v5

    .line 8
    invoke-static {}, Lcom/huawei/hem/bc;->n()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "network"

    const-string v2, "more_connections"

    const-string v4, "screen_wallpaper"

    const-string v6, "notifications"

    const-string v7, "biometrics_password"

    .line 10
    invoke-static {v1, v2, v4, v6, v7}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "battery"

    const-string v4, "storage"

    const-string v6, "security"

    const-string v7, "privacy"

    .line 11
    invoke-static {v1, v2, v4, v6, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "digital_balance"

    const-string v4, "smart_assistant"

    const-string v6, "users_accounts"

    .line 12
    invoke-static {v1, v2, v4, v5, v6}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "apps"

    const-string v4, "display_font_style"

    const-string v6, "time_zone_location"

    const-string v7, "input_and_language"

    .line 13
    invoke-static {v1, v2, v4, v6, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pengine_settings"

    const-string v4, "user_experience"

    const-string v6, "apps_assistant"

    .line 14
    invoke-static {v1, v12, v2, v4, v6}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "apps_clone"

    const-string v4, "apps_startup_management"

    const-string v6, "display_font_size"

    const-string v7, "system_other_menu"

    .line 15
    invoke-static {v1, v2, v4, v6, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "com.android.settings.Settings$HomeAndUnlockSettingsActivity"

    move-object/from16 v17, v5

    const-string v5, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    move-object/from16 v18, v3

    const-string v3, "com.android.settings.Settings$StorageDashboardActivity"

    move-object/from16 v39, v12

    const-string v12, "com.huawei.parentcontrol.ui.activity.HomeActivity"

    .line 18
    invoke-static {v11, v1, v5, v3, v12}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "com.android.settings.Settings$SecurityDashboardActivity"

    .line 19
    invoke-static {v1, v3, v7, v13, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v1, v15, v14, v9, v8}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    .line 21
    invoke-static {v1, v6, v5, v3, v4}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v36

    move-object/from16 v12, v37

    move-object/from16 v3, v38

    .line 22
    invoke-static {v1, v2, v3, v12, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    .line 23
    invoke-static {v1, v4, v3, v0, v2}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v0, v39

    .line 24
    invoke-static {v1, v4, v0, v3, v2}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    .line 25
    invoke-static {v1, v4, v3, v2, v0}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    .line 26
    invoke-static {v1, v4, v3, v2, v0}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object v8, v0

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v45, v12

    move-object/from16 v1, v17

    move-object/from16 v40, v19

    move-object/from16 v41, v20

    move-object/from16 v42, v21

    move-object/from16 v43, v22

    move-object/from16 v44, v23

    move-object/from16 v46, v26

    move-object/from16 v47, v27

    move-object/from16 v48, v28

    move-object/from16 v49, v29

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v52, v32

    move-object/from16 v53, v33

    move-object/from16 v54, v34

    move-object/from16 v55, v35

    move-object/from16 v7, v36

    move-object/from16 v12, v37

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v17, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v25

    move-object/from16 v2, v38

    move-object/from16 v18, v3

    move-object/from16 v3, v24

    .line 29
    invoke-static {v11, v13, v1, v0, v10}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 30
    invoke-static {v0, v15, v14, v9, v8}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v0, v6, v5, v3, v4}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v20

    .line 32
    invoke-static {v0, v1, v2, v12, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v19

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move-object/from16 v4, v55

    .line 33
    invoke-static {v0, v4, v3, v1, v2}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v45

    move-object/from16 v2, v50

    move-object/from16 v3, v51

    move-object/from16 v4, v52

    .line 34
    invoke-static {v0, v4, v1, v3, v2}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    move-object/from16 v4, v49

    .line 35
    invoke-static {v0, v4, v3, v2, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    .line 36
    invoke-static {v0, v5, v4, v3, v2}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v40

    .line 37
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v18

    .line 38
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    move-object v1, v2

    move-object/from16 v17, v5

    move-object v0, v6

    move-object v6, v8

    move-object v2, v9

    move-object v4, v11

    move-object v5, v12

    move-object v8, v3

    move-object v3, v10

    const-string v9, "com.huawei.netassistant.ui.NetAssistantMainActivity"

    const-string v10, "com.android.settings.Settings$WirelessSettingsActivity"

    const-string v11, "com.android.settings.LauncherModeSettingsActivity"

    const-string v12, "com.android.settings.NotificationAndStatusSettingsActivity"

    .line 39
    invoke-static {v7, v9, v10, v11, v12}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v9, "com.android.settings.Settings$VirtualKeySettingsActivity"

    const-string v10, "com.android.settings.Settings$ZenModeAutomationSettingsActivity"

    .line 40
    invoke-static {v7, v9, v0, v15, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.huawei.android.hicloud.ui.activity.NewHiSyncSettingActivity"

    const-string v9, "com.android.settings.Settings$AccountSettingsActivity"

    const-string v10, "com.android.settings.Settings$ManageApplicationsActivity"

    .line 41
    invoke-static {v7, v14, v0, v9, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.settings.Settings$AdvancedSettingsActivity"

    const-string v9, "com.huawei.permissionmanager.ui.JumpActvity"

    .line 42
    invoke-static {v7, v1, v13, v0, v9}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.settings.navigation.NavigationSettingsActivity"

    const-string v1, "com.android.settings.fingerprint.FingerprintMainSettingsActivity"

    .line 43
    invoke-static {v7, v0, v1, v5, v4}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.settings.Settings$ScreenLockSettingsActivity"

    .line 44
    invoke-static {v7, v3, v2, v6, v0}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 48
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_3
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "BTKZ-W00"

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, v17

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_4
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 54
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v3, v8

    move-object/from16 v0, v16

    .line 55
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-eqz p0, :cond_7

    .line 56
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->b0(Ljava/util/List;)V

    goto :goto_4

    .line 57
    :cond_7
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->r(Ljava/util/List;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static W(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static X(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "start activity exception:"

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static Z(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "start activity exception:"

    .line 4
    invoke-static {p0, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 p0, 0x1000

    new-array p0, p0, [C

    .line 1
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/Reader;->read([C)I

    move-result p1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "UTF-8"

    :try_start_1
    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    return-object p1

    :catch_0
    :try_start_2
    const-string p1, "c"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "local config file is not exist.filename is {%s}"

    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {p1, v4, v5}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "hmsSdk"

    if-eqz v0, :cond_0

    const-string p0, "CreateConnection: invalid urlPath."

    invoke-static {v2, p0}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :try_start_0
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/gb;->b(Landroid/content/Context;)Lcom/huawei/hem/gb;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "getSocketFactory(): Illegal Access Exception "

    goto :goto_0

    :catch_1
    const-string v3, "getSocketFactory(): IO Exception!"

    goto :goto_0

    :catch_2
    const-string v3, "getSocketFactory(): General Security Exception"

    goto :goto_0

    :catch_3
    const-string v3, "getSocketFactory(): Key Store exception"

    goto :goto_0

    :catch_4
    const-string v3, "getSocketFactory(): Algorithm Exception!"

    :goto_0
    invoke-static {v2, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v1, Lcom/huawei/hem/jb;

    invoke-direct {v1}, Lcom/huawei/hem/jb;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/huawei/hem/g9;

    const-string p1, "No ssl socket factory set"

    invoke-direct {p0, p1}, Lcom/huawei/hem/g9;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_2
    :goto_2
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p3, 0x3a98

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p3, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-object p0
.end method

.method public static d(Lcom/huawei/hem/r8;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    new-instance v0, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-direct {v0}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/r8;->l:Ljava/lang/Exception;

    const-string v2, "exception_name"

    const-string v3, "error_code"

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeFromException(Ljava/lang/Exception;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/huawei/hem/r8;->c:I

    int-to-long v4, v1

    .line 5
    invoke-virtual {v0, v3, v4, v5}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    .line 6
    iget v1, p0, Lcom/huawei/hem/r8;->i:I

    int-to-long v3, v1

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    :goto_0
    const-string v1, "domain"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 8
    iget-object v3, p0, Lcom/huawei/hem/r8;->m:Ljava/lang/String;

    .line 9
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "HaReportHelper"

    const-string v3, "report host MalformedURLException"

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_1
    iget-wide v1, p0, Lcom/huawei/hem/r8;->e:J

    const-string v3, "req_start_time"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    .line 12
    iget-wide v1, p0, Lcom/huawei/hem/r8;->f:J

    const-string v3, "req_end_time"

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    .line 14
    iget-wide v1, p0, Lcom/huawei/hem/r8;->d:J

    const-string p0, "req_total_time"

    .line 15
    invoke-virtual {v0, p0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->getAll()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static e([B[B[B[B)Ljavax/crypto/SecretKey;
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x4

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->j([BI)[B

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->k([B[B)[B

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->j([BI)[B

    invoke-static {p0, p2}, Lcom/huawei/hem/y4;->k([B[B)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/y6;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v0, 0x1388

    const/16 v1, 0x80

    invoke-direct {p2, p0, p3, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {p1, p2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid data for generating the key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 9

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "URLConnectionHelper"

    if-eqz v1, :cond_3

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "grs_sp.bks"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/huawei/hem/ib;

    invoke-direct {v2, v1, v0}, Lcom/huawei/hem/ib;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hem/gb;

    invoke-direct {v1, v2}, Lcom/huawei/hem/gb;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2
    :try_start_3
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 3
    new-instance v1, Lcom/huawei/hem/jb;

    invoke-direct {v1}, Lcom/huawei/hem/jb;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string v1, "init https ssl socket failed."

    .line 6
    invoke-static {v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v1, "4.0.20.301"

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v1, p2, v4

    const-string v0, "NetworkKit-grs/%s"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v7, 0x4000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    const-string v6, "AgentUtil"

    invoke-static {v6, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_2
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v4

    aput-object v0, v8, v2

    const/4 v0, 0x2

    aput-object p1, v8, v0

    const/4 p1, 0x3

    aput-object v6, v8, p1

    const/4 p1, 0x4

    aput-object v1, v8, p1

    const/4 p1, 0x5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "no_service_name"

    :cond_2
    aput-object p2, v8, p1

    const-string p1, "%s/%s (Linux; Android %s; %s) NetworkKit-grs/%s %s"

    invoke-static {v7, p1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request to grs server with a User-Agent header is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "User-Agent"

    invoke-virtual {p0, p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string p0, "urlConnection is not an instance of HttpsURLConnection"

    invoke-static {v3, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static g(Ljava/lang/Long;)Z
    .locals 6

    const/4 v0, 0x1

    const-string v1, "e"

    if-nez p0, :cond_0

    const-string p0, "Method isTimeExpire input param expireTime is null."

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v4, v2

    if-ltz p0, :cond_1

    const-string p0, "isSpExpire false."

    :try_start_1
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string p0, "isSpExpire true."

    :try_start_2
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "isSpExpire spValue NumberFormatException."

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public static h(Ljava/lang/Long;J)Z
    .locals 6

    const/4 v0, 0x1

    const-string v1, "e"

    if-nez p0, :cond_0

    const-string p0, "Method isTimeWillExpire input param expireTime is null."

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, p1

    sub-long/2addr v4, v2

    const-wide/16 p0, 0x0

    cmp-long p0, v4, p0

    if-ltz p0, :cond_1

    const-string p0, "isSpExpire false."

    :try_start_1
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const-string p0, "isSpExpire spValue NumberFormatException."

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public static i(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, ","

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j([BI)[B
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    if-gez p1, :cond_0

    aget-byte v1, p0, v0

    neg-int v2, p1

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_1

    :cond_0
    aget-byte v1, p0, v0

    shr-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k([B[B)[B
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left and right must be the same length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left or right must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "services"

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v2, p1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    goto :goto_3

    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_3
    return-object p0
.end method

.method public static m(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/l9;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "hmsSdk"

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When Response Content From Connection inputStream operation exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0

    :goto_0
    invoke-static {v0}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static n([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;
    .locals 1

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/hem/z9;->a(Ljava/lang/String;)Lcom/huawei/hem/ja;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/hem/ja;->a(Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/ga;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/huawei/hem/ga;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/huawei/hem/ga;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    const-string v0, "send  close lock activity broadcast"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "com.linspirer.close.violation"

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->I(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/ga;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/ga;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static t([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ApkHashUtils generateSHA1 exception:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/huawei/hem/y4;->t([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/y4;->n([B)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkHashUtils "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getSingInfo hash "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p1, p0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ApkHashUtils  get app hash exception:"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "ApkHashUtils  get app hash name not found exception:"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Landroid/app/Activity;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1
    new-instance v1, Lcom/huawei/hem/j2;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hem/j2;-><init>(Landroid/app/Activity;Z)V

    .line 2
    instance-of v2, p0, Lcom/android/launcher3/activity/LoginActivity;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, p0}, Lcom/huawei/hem/j2;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/huawei/hem/j2;

    .line 5
    sget-object p0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    invoke-direct {v1, p0}, Lcom/huawei/hem/j2;-><init>(Landroid/content/Context;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p0, v1, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object p0, v1, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v1, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const-string p0, "check has no storage permission "

    .line 10
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    .line 11
    sget-object p0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 12
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    const-string v0, "GuardSecure"

    if-lt p0, p1, :cond_6

    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    :cond_5
    sget-object p0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 14
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    goto :goto_3

    .line 16
    :cond_6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_7

    const-string p0, "/storage/emulated/0/Download"

    .line 17
    invoke-static {p0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    goto :goto_3

    .line 18
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mounted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    const-string p0, "/sdcard"

    .line 21
    :goto_2
    invoke-static {p0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    .line 22
    :goto_3
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_b

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    .line 25
    sget-object p0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    const p1, 0x7f0c00f0

    .line 26
    invoke-static {p0, p1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_4

    :cond_a
    const-string p0, "has no permission granted"

    .line 27
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static w(Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hem/g3;)V
    .locals 4

    const-string v0, "DownLoadUtil"

    const-string v1, "install"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/huawei/hem/y4;->a:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/huawei/hem/y4;->a:Ljava/util/Timer;

    :cond_0
    const-string v1, " startTimer "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/y4;->a:Ljava/util/Timer;

    new-instance v1, Lcom/huawei/hem/v5;

    invoke-direct {v1, p2}, Lcom/huawei/hem/v5;-><init>(Lcom/huawei/hem/g3;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 8
    invoke-static {}, Lcom/huawei/hem/y4;->x()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.launcher3.myfileprovider"

    invoke-static {p1, v0, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "android"

    .line 10
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 11
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hem/ic;->F(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, p0}, Lcom/huawei/hem/ic;->F(Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DownLoadUtil installing packageName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static x()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/huawei/hem/ce;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/ce;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static y()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v2}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->O()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v3
.end method

.method public static z()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v2}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->O()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v3
.end method
