.class public Lcom/alibaba/sdk/android/emas/j$1;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/emas/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/emas/j;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/j$1;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$1;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/e;->clear()V

    .line 2
    invoke-static {}, Lcom/alibaba/sdk/android/emas/j;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$1;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v1}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$1;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/e;->a()Lcom/alibaba/sdk/android/emas/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$1;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;Lcom/alibaba/sdk/android/emas/f;)V

    :cond_0
    return-void
.end method
