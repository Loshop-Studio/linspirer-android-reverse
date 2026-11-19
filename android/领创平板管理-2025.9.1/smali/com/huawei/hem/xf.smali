.class public abstract Lcom/huawei/hem/xf;
.super Ljava/lang/Object;
.source "IDownloadEvent.java"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hem/xf;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/xf;->b:Ljava/lang/String;

    return-void
.end method
