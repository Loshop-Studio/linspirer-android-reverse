.class public Lcom/huawei/hem/hc$d$a;
.super Ljava/lang/Object;
.source "FileLoggerService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/hc$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/hc$d;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/hc$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/hc$d$a;->a:Lcom/huawei/hem/hc$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/hc$d$a;->a:Lcom/huawei/hem/hc$d;

    iget-object p1, p1, Lcom/huawei/hem/hc$d;->d:Lcom/huawei/hem/hc;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, Lcom/huawei/hem/hc;->b:Z

    return-void
.end method
