.class public final Lcom/huawei/hem/zb$a;
.super Lcom/huawei/hem/ln;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:J

.field public c:J

.field public final synthetic d:Lcom/huawei/hem/zb;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/zb;Lcom/huawei/hem/zn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/zb$a;->d:Lcom/huawei/hem/zb;

    .line 2
    invoke-direct {p0, p2}, Lcom/huawei/hem/ln;-><init>(Lcom/huawei/hem/zn;)V

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/huawei/hem/zb$a;->b:J

    .line 4
    iput-wide p1, p0, Lcom/huawei/hem/zb$a;->c:J

    return-void
.end method


# virtual methods
.method public p(Lcom/huawei/hem/hn;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ln;->a:Lcom/huawei/hem/zn;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hem/zn;->p(Lcom/huawei/hem/hn;J)V

    .line 2
    iget-wide v0, p0, Lcom/huawei/hem/zb$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/zb$a;->d:Lcom/huawei/hem/zb;

    invoke-virtual {p1}, Lcom/huawei/hem/zb;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/zb$a;->c:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/huawei/hem/zb$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/huawei/hem/zb$a;->b:J

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/zb$a;->d:Lcom/huawei/hem/zb;

    .line 6
    iget-object p1, p1, Lcom/huawei/hem/zb;->a:Lcom/huawei/hem/yb;

    .line 7
    iget-wide p2, p0, Lcom/huawei/hem/zb$a;->c:J

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/huawei/hem/yb;->onProgress(JJ)V

    return-void
.end method
