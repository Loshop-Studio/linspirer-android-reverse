.class public Lcom/huawei/hem/u4;
.super Ljava/lang/Object;
.source "SouGouControlHelper.java"


# static fields
.field public static c:Lcom/huawei/hem/u4;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hem/rb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/u4;->b:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static a(Lcom/huawei/hem/u4;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "true"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "false"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "SouGouControlHelper--set fuzzyAssociative error:"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static b(Lcom/huawei/hem/u4;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "FUNCTION_SWITCH_CLOSE_DISABLE"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "FUNCTION_SWITCH_OPEN"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "FUNCTION_SWITCH_CLOSE_HIND"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "SouGouControlHelper--set fuzzyAssociative error:"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static c(Landroid/content/Context;)Lcom/huawei/hem/u4;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/u4;->c:Lcom/huawei/hem/u4;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/u4;

    invoke-direct {v0, p0}, Lcom/huawei/hem/u4;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/hem/u4;->c:Lcom/huawei/hem/u4;

    .line 3
    :cond_0
    sget-object p0, Lcom/huawei/hem/u4;->c:Lcom/huawei/hem/u4;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SouGouControlHelper----getSougouSetting from server----"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 4
    new-instance v1, Lcom/android/launcher3/network/params/SougouInputParams;

    iget-object v2, p0, Lcom/huawei/hem/u4;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/SougouInputParams;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string v2, "com.linspirer.common.getsetting"

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/huawei/hem/u4;->b:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 10
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 11
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 12
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/huawei/hem/t4;

    const-class v1, Lcom/android/launcher3/db/model/SougouSetting;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hem/t4;-><init>(Lcom/huawei/hem/u4;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "SouGouControlHelper---get sougou setting error:"

    .line 18
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
