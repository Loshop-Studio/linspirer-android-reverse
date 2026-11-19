.class public abstract Lcom/huawei/hem/wa;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/ga;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 4
    invoke-static {p1, v1}, Lcom/huawei/hem/l9;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "hmsSdk"

    const-string v1, "getDeviceID Incorrect permissions!"

    invoke-static {p1, v1}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, ""

    .line 5
    :goto_1
    iput-object p1, v0, Lcom/huawei/hem/ga;->b:Ljava/lang/String;

    .line 6
    :cond_2
    iget-object p1, v0, Lcom/huawei/hem/ga;->b:Ljava/lang/String;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/ga;->d:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string v1, "hmsSdk"

    const-string v2, "getSerial : is executed."

    .line 5
    invoke-static {v1, v2}, Lcom/huawei/hem/xa;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Lcom/huawei/hem/l9;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_3

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "getSerial() Incorrect permissions!"

    invoke-static {v1, p1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p1, ""

    :goto_1
    move-object v1, p1

    .line 6
    :cond_4
    iput-object v1, v0, Lcom/huawei/hem/ga;->d:Ljava/lang/String;

    .line 7
    :cond_5
    iget-object p1, v0, Lcom/huawei/hem/ga;->d:Ljava/lang/String;

    return-object p1
.end method

.method public abstract c()I
.end method
