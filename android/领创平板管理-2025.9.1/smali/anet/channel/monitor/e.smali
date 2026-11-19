.class public Lanet/channel/monitor/e;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:J

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lanet/channel/monitor/e;->i:D

    iput-wide v0, p0, Lanet/channel/monitor/e;->j:D

    .line 4
    iput-wide v0, p0, Lanet/channel/monitor/e;->k:D

    return-void
.end method


# virtual methods
.method public a(DD)D
    .locals 17

    move-object/from16 v0, p0

    div-double v1, p1, p3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    cmpg-double v3, v1, v3

    const-wide/16 v4, 0x0

    if-gez v3, :cond_1

    .line 1
    iget-wide v6, v0, Lanet/channel/monitor/e;->a:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 2
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1

    .line 3
    :cond_0
    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1

    .line 4
    :cond_1
    iget-wide v6, v0, Lanet/channel/monitor/e;->a:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    .line 5
    iput-wide v1, v0, Lanet/channel/monitor/e;->i:D

    .line 6
    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v5, v1, v3

    .line 7
    iput-wide v5, v0, Lanet/channel/monitor/e;->d:D

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v5, v1

    .line 8
    iput-wide v5, v0, Lanet/channel/monitor/e;->c:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v1

    .line 9
    iput-wide v3, v0, Lanet/channel/monitor/e;->e:D

    goto/16 :goto_2

    :cond_2
    const-wide/16 v3, 0x1

    cmp-long v3, v6, v3

    if-nez v3, :cond_3

    .line 10
    iput-wide v1, v0, Lanet/channel/monitor/e;->j:D

    .line 11
    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-wide v3, v0, Lanet/channel/monitor/e;->j:D

    sub-double v5, v1, v3

    .line 13
    iput-wide v3, v0, Lanet/channel/monitor/e;->i:D

    .line 14
    iput-wide v1, v0, Lanet/channel/monitor/e;->j:D

    const-wide v3, 0x3fee666666666666L    # 0.95

    div-double/2addr v1, v3

    .line 15
    iput-wide v1, v0, Lanet/channel/monitor/e;->b:D

    .line 16
    iget-wide v7, v0, Lanet/channel/monitor/e;->h:D

    mul-double/2addr v7, v3

    sub-double/2addr v1, v7

    iput-wide v1, v0, Lanet/channel/monitor/e;->g:D

    const/4 v1, 0x0

    .line 17
    iget-wide v7, v0, Lanet/channel/monitor/e;->d:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 18
    iget-wide v9, v0, Lanet/channel/monitor/e;->g:D

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double/2addr v11, v7

    cmpl-double v2, v9, v11

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const/4 v14, 0x1

    if-ltz v2, :cond_4

    mul-double/2addr v9, v12

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v1

    add-double/2addr v7, v9

    .line 19
    iput-wide v7, v0, Lanet/channel/monitor/e;->g:D

    move v1, v14

    goto :goto_0

    :cond_4
    const-wide/high16 v15, -0x3ff0000000000000L    # -4.0

    mul-double/2addr v15, v7

    cmpg-double v2, v9, v15

    if-gtz v2, :cond_5

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    mul-double/2addr v7, v1

    mul-double/2addr v9, v12

    add-double/2addr v9, v7

    .line 20
    iput-wide v9, v0, Lanet/channel/monitor/e;->g:D

    move v1, v11

    :cond_5
    :goto_0
    const-wide v7, 0x3ff0cccccccccccdL    # 1.05

    .line 21
    iget-wide v9, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v9, v7

    const-wide v7, 0x3f647ae147ae147bL    # 0.0025

    iget-wide v12, v0, Lanet/channel/monitor/e;->g:D

    mul-double/2addr v7, v12

    mul-double/2addr v7, v12

    sub-double/2addr v9, v7

    .line 22
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL    # 0.8

    iget-wide v12, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v12, v9

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    .line 23
    iget-wide v12, v0, Lanet/channel/monitor/e;->d:D

    mul-double/2addr v12, v9

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lanet/channel/monitor/e;->d:D

    .line 24
    iget-wide v9, v0, Lanet/channel/monitor/e;->e:D

    const-wide v12, 0x3fece147ae147ae1L    # 0.9025

    mul-double/2addr v12, v9

    add-double/2addr v12, v7

    div-double/2addr v9, v12

    iput-wide v9, v0, Lanet/channel/monitor/e;->f:D

    .line 25
    iget-wide v7, v0, Lanet/channel/monitor/e;->h:D

    const-wide v12, 0x3ff0d79435e50d79L    # 1.0526315789473684

    mul-double/2addr v12, v5

    add-double/2addr v12, v7

    iget-wide v5, v0, Lanet/channel/monitor/e;->g:D

    mul-double/2addr v9, v5

    add-double/2addr v9, v12

    iput-wide v9, v0, Lanet/channel/monitor/e;->h:D

    if-ne v1, v14, :cond_6

    .line 26
    iget-wide v1, v0, Lanet/channel/monitor/e;->b:D

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto :goto_1

    :cond_6
    if-ne v1, v11, :cond_7

    .line 27
    iget-wide v1, v0, Lanet/channel/monitor/e;->b:D

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    :cond_7
    :goto_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 28
    iget-wide v5, v0, Lanet/channel/monitor/e;->f:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, v0, Lanet/channel/monitor/e;->e:D

    iget-wide v5, v0, Lanet/channel/monitor/e;->c:D

    add-double/2addr v3, v5

    mul-double/2addr v3, v1

    iput-wide v3, v0, Lanet/channel/monitor/e;->e:D

    .line 29
    :goto_2
    iget-wide v1, v0, Lanet/channel/monitor/e;->h:D

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_8

    .line 30
    iget-wide v1, v0, Lanet/channel/monitor/e;->j:D

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    .line 31
    iput-wide v1, v0, Lanet/channel/monitor/e;->h:D

    goto :goto_3

    .line 32
    :cond_8
    iput-wide v1, v0, Lanet/channel/monitor/e;->k:D

    .line 33
    :goto_3
    iget-wide v1, v0, Lanet/channel/monitor/e;->k:D

    return-wide v1
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lanet/channel/monitor/e;->a:J

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lanet/channel/monitor/e;->k:D

    return-void
.end method
