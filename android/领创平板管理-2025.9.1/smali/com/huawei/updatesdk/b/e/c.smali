.class public Lcom/huawei/updatesdk/b/e/c;
.super Lcom/huawei/updatesdk/b/e/a;
.source ""


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/e/a;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 7

    const-string v0, "DefaultTaskInit"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/huawei/hem/i7;

    invoke-direct {v3}, Lcom/huawei/hem/i7;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.appmarket.appmarket.intent.action.AppDetail.withdetailId"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v3, Lcom/huawei/hem/i7;->g:Landroid/content/Context;

    .line 2
    sget-object v2, Lcom/huawei/hem/i7$a;->ACTIVITY:Lcom/huawei/hem/i7$a;

    const-string v5, "ServiceVerifyKit"

    .line 3
    iput-object v4, v3, Lcom/huawei/hem/i7;->i:Landroid/content/Intent;

    if-nez v2, :cond_0

    sget-object v2, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v4, "error input type"

    invoke-virtual {v2, v5, v4}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v2, v3, Lcom/huawei/hem/i7;->j:Lcom/huawei/hem/i7$a;

    .line 4
    :goto_0
    invoke-static {}, Lcom/huawei/updatesdk/b/c/b;->a()Lcom/huawei/updatesdk/b/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/b/c/c;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/huawei/updatesdk/b/c/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/huawei/hem/i7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/i7;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/huawei/hem/i7;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSDK get market packagename from verify kit is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    const-string v3, "UpdateSDK genVerifiedPackageName error: "

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/updatesdk/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/b/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/updatesdk/a/b/c/c/c;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/updatesdk/service/appmgr/bean/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/updatesdk/service/appmgr/bean/a;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/updatesdk/a/b/c/b;

    invoke-direct {v2, v0, v1}, Lcom/huawei/updatesdk/a/b/c/b;-><init>(Lcom/huawei/updatesdk/a/b/c/c/c;Lcom/huawei/updatesdk/a/b/c/c/a;)V

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/c/b;->c()Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/huawei/updatesdk/service/appmgr/bean/b;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/b;->g()Lcom/huawei/updatesdk/service/appmgr/bean/c;

    move-result-object v1

    const-string v2, "DefaultTaskInit"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/b;->g()Lcom/huawei/updatesdk/service/appmgr/bean/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/appmgr/bean/c;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    const-string v0, "getPackageName from store: "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "getPackageName from store: error"

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.updatesdk"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "upsdk_store_url"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/b/h/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/huawei/updatesdk/b/e/c;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/e/c;->f()V

    :cond_1
    const-string v0, "UpdateSDK genVerifiedPackageName is: "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/updatesdk/b/e/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultTaskInit"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
