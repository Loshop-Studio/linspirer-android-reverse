.class public Lcom/huawei/hem/a;
.super Lcom/huawei/hem/c;
.source "ArchTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/huawei/hem/a;


# instance fields
.field public a:Lcom/huawei/hem/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:Lcom/huawei/hem/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/c;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/b;

    invoke-direct {v0}, Lcom/huawei/hem/b;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/a;->b:Lcom/huawei/hem/c;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/a;->a:Lcom/huawei/hem/c;

    return-void
.end method

.method public static c()Lcom/huawei/hem/a;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hem/a;->c:Lcom/huawei/hem/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hem/a;->c:Lcom/huawei/hem/a;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/huawei/hem/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/a;->c:Lcom/huawei/hem/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/huawei/hem/a;

    invoke-direct {v1}, Lcom/huawei/hem/a;-><init>()V

    sput-object v1, Lcom/huawei/hem/a;->c:Lcom/huawei/hem/a;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/huawei/hem/a;->c:Lcom/huawei/hem/a;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/a;->a:Lcom/huawei/hem/c;

    invoke-virtual {v0}, Lcom/huawei/hem/c;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/a;->a:Lcom/huawei/hem/c;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method
