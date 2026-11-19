.class public Lcom/huawei/hem/cg;
.super Ljava/io/IOException;
.source "FileDownloadOutOfSpaceException.java"


# instance fields
.field public breakpointBytes:J

.field public freeSpaceBytes:J

.field public requiredSpaceBytes:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    .line 7
    invoke-static {v1, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    iput-wide p1, p0, Lcom/huawei/hem/cg;->freeSpaceBytes:J

    .line 9
    iput-wide p3, p0, Lcom/huawei/hem/cg;->requiredSpaceBytes:J

    .line 10
    iput-wide p5, p0, Lcom/huawei/hem/cg;->breakpointBytes:J

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/Throwable;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-wide p1, p0, Lcom/huawei/hem/cg;->freeSpaceBytes:J

    .line 4
    iput-wide p3, p0, Lcom/huawei/hem/cg;->requiredSpaceBytes:J

    .line 5
    iput-wide p5, p0, Lcom/huawei/hem/cg;->breakpointBytes:J

    return-void
.end method


# virtual methods
.method public getBreakpointBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/cg;->breakpointBytes:J

    return-wide v0
.end method

.method public getFreeSpaceBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/cg;->freeSpaceBytes:J

    return-wide v0
.end method

.method public getRequiredSpaceBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/cg;->requiredSpaceBytes:J

    return-wide v0
.end method
