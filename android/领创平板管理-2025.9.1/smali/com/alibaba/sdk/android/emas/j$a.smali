.class public Lcom/alibaba/sdk/android/emas/j$a;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/sdk/android/emas/j$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/alibaba/sdk/android/emas/j$b;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/alibaba/sdk/android/emas/j$b;

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/j$b;->f()V

    :cond_0
    return-void
.end method
