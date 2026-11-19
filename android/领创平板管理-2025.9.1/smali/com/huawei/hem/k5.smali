.class public Lcom/huawei/hem/k5;
.super Ljava/lang/Object;
.source "AppUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/k5$a;
    }
.end annotation


# static fields
.field public static j:Lcom/huawei/hem/k5;


# instance fields
.field public a:J

.field public b:I

.field public c:Lcom/huawei/hem/y5;

.field public d:Lcom/huawei/hem/rb;

.field public e:Landroid/app/usage/UsageStatsManager;

.field public f:Landroid/app/AppOpsManager;

.field public g:Landroid/content/pm/PackageManager;

.field public h:Landroid/content/Context;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/huawei/hem/l5;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/k5;->a:J

    const v0, 0x5265c00

    .line 3
    iput v0, p0, Lcom/huawei/hem/k5;->b:I

    .line 4
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/k5;->h:Landroid/content/Context;

    .line 6
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    iput-object v1, p0, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    const-string v1, "usagestats"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/huawei/hem/k5;->e:Landroid/app/usage/UsageStatsManager;

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/k5;->h:Landroid/content/Context;

    const-string v1, "appops"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/huawei/hem/k5;->f:Landroid/app/AppOpsManager;

    .line 11
    iget-object v0, p0, Lcom/huawei/hem/k5;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/k5;->g:Landroid/content/pm/PackageManager;

    .line 12
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/k5;->d:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static a(Lcom/huawei/hem/k5;Ljava/util/List;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "AppUsageHelperno need upload"

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 4
    new-instance v2, Lcom/huawei/hem/m5;

    iget-object v3, p0, Lcom/huawei/hem/k5;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/huawei/hem/m5;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v3, p0, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/huawei/hem/m5;->setLogs(Ljava/util/List;)V

    .line 7
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string v2, "com.linspirer.app.setappdurationlogs"

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/huawei/hem/k5;->d:Lcom/huawei/hem/rb;

    if-eqz v2, :cond_1

    .line 10
    new-instance v0, Lcom/huawei/hem/vb;

    invoke-direct {v0, v2}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    const-string v2, "https://bd.linspirer.com:883/public-interface.php"

    .line 11
    iput-object v2, v0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 14
    new-instance v1, Lcom/huawei/hem/j5;

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/huawei/hem/j5;-><init>(Lcom/huawei/hem/k5;Ljava/lang/Class;Ljava/util/List;I)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    .line 16
    :cond_1
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 18
    :cond_2
    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/k5;->g:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/k5;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUsageHelper -- error msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
