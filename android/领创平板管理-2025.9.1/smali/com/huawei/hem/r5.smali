.class public Lcom/huawei/hem/r5;
.super Ljava/lang/Object;
.source "ComponentHelper.java"


# static fields
.field public static volatile c:Lcom/huawei/hem/r5;

.field public static d:Lcom/huawei/hem/rb;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/r5;->a:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/r5;->b:Lcom/huawei/hem/y5;

    .line 5
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    sput-object p1, Lcom/huawei/hem/r5;->d:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static a()Lcom/huawei/hem/r5;
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hem/r5;->c:Lcom/huawei/hem/r5;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/huawei/hem/r5;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/r5;->c:Lcom/huawei/hem/r5;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hem/r5;

    .line 5
    sget-object v2, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    invoke-direct {v1, v2}, Lcom/huawei/hem/r5;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/hem/r5;->c:Lcom/huawei/hem/r5;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hem/r5;->c:Lcom/huawei/hem/r5;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ComponentHelper--device is in offline or not logined or releaseControl"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 4
    new-instance v1, Lcom/android/launcher3/network/params/ComponentParams;

    iget-object v2, p0, Lcom/huawei/hem/r5;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/ComponentParams;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/r5;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string v2, "com.linspirer.component.getsetting"

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/huawei/hem/r5;->d:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 10
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 11
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/huawei/hem/r5$a;

    const-class v1, Lcom/android/launcher3/model/ComponentInfo;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hem/r5$a;-><init>(Lcom/huawei/hem/r5;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ComponentHelper--JSONException:"

    .line 17
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/ComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/ComponentInfo;

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    iget-object v1, p0, Lcom/huawei/hem/r5;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/android/launcher3/model/ComponentInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher3/model/ComponentInfo;->getComponent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/huawei/hem/jc;

    if-eqz v0, :cond_0

    const-string p2, "AndroidImpl--enableComponent start"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v2, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "AndroidImpl--enableComponent error:"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/ComponentInfo;

    .line 8
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    iget-object v1, p0, Lcom/huawei/hem/r5;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/android/launcher3/model/ComponentInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher3/model/ComponentInfo;->getComponent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_2
    return-void
.end method
