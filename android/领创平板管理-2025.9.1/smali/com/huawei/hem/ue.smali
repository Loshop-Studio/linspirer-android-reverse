.class public Lcom/huawei/hem/ue;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/ue$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public a:Lcom/huawei/hem/ye;

.field public b:Lcom/huawei/hem/xe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hem/ue;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hem/ue;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/huawei/hem/ue;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/ue$a;->a:Lcom/huawei/hem/ue;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    sput-object p0, Lcom/huawei/hem/of$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/je;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/ke$b;->a:Lcom/huawei/hem/ke;

    const-string v1, "event.service.connect.changed"

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, v0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    monitor-enter v3

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/vf;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public c()Lcom/huawei/hem/xe;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ue;->b:Lcom/huawei/hem/xe;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/huawei/hem/ue;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/ue;->b:Lcom/huawei/hem/xe;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hem/bf;

    invoke-direct {v1}, Lcom/huawei/hem/bf;-><init>()V

    iput-object v1, p0, Lcom/huawei/hem/ue;->b:Lcom/huawei/hem/xe;

    .line 5
    check-cast v1, Lcom/huawei/hem/je;

    invoke-virtual {p0, v1}, Lcom/huawei/hem/ue;->a(Lcom/huawei/hem/je;)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/ue;->b:Lcom/huawei/hem/xe;

    return-object v0
.end method

.method public d()Lcom/huawei/hem/ye;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ue;->a:Lcom/huawei/hem/ye;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/huawei/hem/ue;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/ue;->a:Lcom/huawei/hem/ye;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hem/ef;

    invoke-direct {v1}, Lcom/huawei/hem/ef;-><init>()V

    iput-object v1, p0, Lcom/huawei/hem/ue;->a:Lcom/huawei/hem/ye;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/ue;->a:Lcom/huawei/hem/ye;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0}, Lcom/huawei/hem/we;->isConnected()Z

    move-result v0

    return v0
.end method
