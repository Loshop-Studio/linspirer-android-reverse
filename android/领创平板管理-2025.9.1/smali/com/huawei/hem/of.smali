.class public Lcom/huawei/hem/of;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/of$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(JJJJLcom/huawei/hem/of$a;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 8
    invoke-direct/range {v0 .. v9}, Lcom/huawei/hem/of;-><init>(JJJJZ)V

    return-void
.end method

.method public constructor <init>(JJJJZ)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p9, :cond_2

    .line 10
    :cond_1
    iput-wide p1, p0, Lcom/huawei/hem/of;->a:J

    .line 11
    iput-wide p3, p0, Lcom/huawei/hem/of;->b:J

    .line 12
    iput-wide p5, p0, Lcom/huawei/hem/of;->c:J

    .line 13
    iput-wide p7, p0, Lcom/huawei/hem/of;->d:J

    .line 14
    iput-boolean p9, p0, Lcom/huawei/hem/of;->e:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/huawei/hem/of;->f:Z

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lcom/huawei/hem/of$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/of;->a:J

    .line 3
    iput-wide v0, p0, Lcom/huawei/hem/of;->b:J

    .line 4
    iput-wide v0, p0, Lcom/huawei/hem/of;->c:J

    .line 5
    iput-wide v0, p0, Lcom/huawei/hem/of;->d:J

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/huawei/hem/of;->e:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/huawei/hem/of;->f:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/huawei/hem/of;->a:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/huawei/hem/of;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/huawei/hem/of;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "range[%d, %d) current offset[%d]"

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hem/hh;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
