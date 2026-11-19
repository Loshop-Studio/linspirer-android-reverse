.class public Lcom/huawei/hem/c8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/huawei/hms/framework/common/PLSharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "c"

    const-string v5, "get pkgname from context is{%s}"

    invoke-static {v4, v5, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/huawei/hms/framework/common/PLSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p2, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    const-string v0, "version"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    const-string p2, "app version changed! old version{%s} and new version{%s}"

    invoke-static {v4, p2, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->clear()V

    .line 5
    iget-object p2, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {p2, v0, p1}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    const-string p1, "get app version failed and catch NameNotFoundException"

    .line 6
    invoke-static {v4, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
