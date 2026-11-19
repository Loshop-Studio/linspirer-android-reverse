.class public Lcom/huawei/hem/va;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/va$a;
    }
.end annotation


# static fields
.field public static b:Lcom/huawei/hem/va;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hem/va;
    .locals 2

    const-class v0, Lcom/huawei/hem/va;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/va;->b:Lcom/huawei/hem/va;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/va;

    invoke-direct {v1}, Lcom/huawei/hem/va;-><init>()V

    sput-object v1, Lcom/huawei/hem/va;->b:Lcom/huawei/hem/va;

    :cond_0
    sget-object v1, Lcom/huawei/hem/va;->b:Lcom/huawei/hem/va;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b(Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 3
    iget-object p1, p1, Lcom/huawei/hem/ga;->i:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    const-string v1, "global_v2"

    const-string v2, "uuid"

    invoke-static {p1, v1, v2, v0}, Lcom/huawei/hem/l9;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hem/l9;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 7
    iput-object p1, v0, Lcom/huawei/hem/ga;->i:Ljava/lang/String;

    :cond_2
    return-object p1
.end method
