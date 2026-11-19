.class public final Lanet/channel/util/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lanet/channel/statist/NetTypeStat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanet/channel/statist/NetTypeStat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lanet/channel/util/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lanet/channel/util/e;

    invoke-direct {v0, p0}, Lanet/channel/util/e;-><init>(Lanet/channel/util/d;)V

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method
