.class public final Lcom/huawei/hem/oj;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# instance fields
.field public final a:Lcom/huawei/hem/gl;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lcom/huawei/hem/gl;

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/huawei/hem/gl;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lcom/huawei/hem/oj;->a:Lcom/huawei/hem/gl;

    return-void
.end method
