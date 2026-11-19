.class public abstract Lcom/huawei/hem/ne;
.super Ljava/lang/Object;
.source "FileDownloadListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "not handle priority any more"

    .line 3
    invoke-static {p0, v0, p1}, Lcom/huawei/hem/fh;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blockComplete(Lcom/huawei/hem/fe;)V
    .locals 0

    return-void
.end method

.method public abstract completed(Lcom/huawei/hem/fe;)V
.end method

.method public connected(Lcom/huawei/hem/fe;Ljava/lang/String;ZII)V
    .locals 0

    return-void
.end method

.method public abstract error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V
.end method

.method public isInvalid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract paused(Lcom/huawei/hem/fe;II)V
.end method

.method public abstract pending(Lcom/huawei/hem/fe;II)V
.end method

.method public abstract progress(Lcom/huawei/hem/fe;II)V
.end method

.method public retry(Lcom/huawei/hem/fe;Ljava/lang/Throwable;II)V
    .locals 0

    return-void
.end method

.method public started(Lcom/huawei/hem/fe;)V
    .locals 0

    return-void
.end method

.method public abstract warn(Lcom/huawei/hem/fe;)V
.end method
