.class public Lcom/huawei/hem/v9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/huawei/hem/v9;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hem/v9;
    .locals 2

    .line 1
    const-class v0, Lcom/huawei/hem/v9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/v9;->b:Lcom/huawei/hem/v9;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/v9;

    invoke-direct {v1}, Lcom/huawei/hem/v9;-><init>()V

    sput-object v1, Lcom/huawei/hem/v9;->b:Lcom/huawei/hem/v9;

    :cond_0
    sget-object v1, Lcom/huawei/hem/v9;->b:Lcom/huawei/hem/v9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/huawei/hem/v9;->a:Landroid/content/Context;

    const-string v0, ""

    const-string v1, "hmsSdk"

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "getVersion(): The package name is not correct!"

    invoke-static {v1, v2}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    .line 4
    :goto_1
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 6
    iput-object v2, v3, Lcom/huawei/hem/ga;->h:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/huawei/hem/qa;->c:Lcom/huawei/hem/qa;

    .line 8
    invoke-virtual {v3}, Lcom/huawei/hem/qa;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "global_v2"

    const-string v4, "app_ver"

    invoke-static {p1, v3, v4, v0}, Lcom/huawei/hem/l9;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v4, v2}, Lcom/huawei/hem/l9;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    if-eqz p1, :cond_2

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "app ver is first save!"

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "the appVers are different!"

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object p1

    const-string v1, "alltype"

    invoke-virtual {p1, v0, v1, v5}, Lcom/huawei/hem/v9;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1

    :cond_3
    const-string p1, "userManager.isUserUnlocked() == false"

    .line 13
    :goto_2
    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_3
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 16
    invoke-static {}, Lcom/huawei/hem/l9;->d()Ljava/lang/String;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/huawei/hem/ga;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v2, "yyyy-MM-dd"

    .line 1
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "hmsSdk/stringUtil"

    const-string v1, "getMillisOfDate(): Time conversion Exception !"

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    move-wide v7, v0

    .line 2
    new-instance v0, Lcom/huawei/hem/aa;

    invoke-static {p2}, Lcom/huawei/hem/l9;->e(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hem/aa;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3
    sget-object p1, Lcom/huawei/hem/ka;->b:Lcom/huawei/hem/ka;

    .line 4
    invoke-virtual {p1, v0}, Lcom/huawei/hem/ka;->a(Lcom/huawei/hem/ha;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/ea;->n:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "hmsSdk"

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v2, v0, Lcom/huawei/hem/ea;->q:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x7530

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    const-string v0, "begin to call onReport!"

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p2}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iput-wide v4, v0, Lcom/huawei/hem/ea;->q:J

    .line 8
    :cond_2
    invoke-static {}, Lcom/huawei/hem/y4;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hem/v9;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "autoReport timeout. interval < 30s "

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auto report is closed tag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/huawei/hem/v9;->a:Landroid/content/Context;

    const-string v1, "hmsSdk"

    if-nez v0, :cond_0

    const-string p1, "onReport() null context or SDK was not init."

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, ""

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "2G"

    const-string v5, "WIFI"

    if-eqz v3, :cond_1

    const-string v0, "not have network state phone permission!"

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v2, v5

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network getSubtypeName : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "TD-SCDMA"

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CDMA2000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :pswitch_0
    const-string v0, "4G"

    goto :goto_1

    :pswitch_1
    move-object v2, v4

    goto :goto_2

    :cond_3
    :goto_0
    :pswitch_2
    const-string v0, "3G"

    :goto_1
    move-object v2, v0

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    const-string v0, "type name = COMPANION_PROXY"

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "COMPANION_PROXY"

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    const-string v0, "type name = ETHERNET"

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ETHERNET"

    goto :goto_2

    :cond_6
    const-string v2, "type name = "

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OTHER_NETWORK_TYPE"

    .line 4
    :cond_7
    :goto_2
    invoke-static {p1, p2}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, v0, Lcom/huawei/hem/ea;->o:Z

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "strNetworkType is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/huawei/hem/ca;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/hem/ca;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/huawei/hem/ka;->b:Lcom/huawei/hem/ka;

    .line 8
    invoke-virtual {p1, v0}, Lcom/huawei/hem/ka;->a(Lcom/huawei/hem/ha;)V

    goto :goto_4

    :cond_a
    const-string p1, "The network is bad."

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
