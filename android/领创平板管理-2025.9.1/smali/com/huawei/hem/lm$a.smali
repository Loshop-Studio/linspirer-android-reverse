.class public final Lcom/huawei/hem/lm$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/huawei/hem/zn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/hn;

.field public b:Z

.field public c:Z

.field public final synthetic d:Lcom/huawei/hem/lm;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/lm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/huawei/hem/hn;

    invoke-direct {p1}, Lcom/huawei/hem/hn;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v1, v1, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/fn;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-wide v1, v1, Lcom/huawei/hem/lm;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/hem/lm$a;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/hem/lm$a;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v1, v1, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    invoke-virtual {v1}, Lcom/huawei/hem/lm;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v1, v1, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/lm$c;->n()V

    .line 6
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    invoke-virtual {v1}, Lcom/huawei/hem/lm;->b()V

    .line 7
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-wide v1, v1, Lcom/huawei/hem/lm;->b:J

    iget-object v3, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 8
    iget-wide v3, v3, Lcom/huawei/hem/hn;->b:J

    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 10
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-wide v2, v1, Lcom/huawei/hem/lm;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/huawei/hem/lm;->b:J

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {v0}, Lcom/huawei/hem/fn;->i()V

    if-eqz p1, :cond_1

    .line 13
    :try_start_3
    iget-object p1, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 14
    iget-wide v0, p1, Lcom/huawei/hem/hn;->b:J

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    .line 15
    iget-object p1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v5, p1, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget-object p1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget v6, p1, Lcom/huawei/hem/lm;->c:I

    iget-object v8, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    invoke-virtual/range {v5 .. v10}, Lcom/huawei/hem/am;->k(IZLcom/huawei/hem/hn;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object p1, p1, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {p1}, Lcom/huawei/hem/lm$c;->n()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {v0}, Lcom/huawei/hem/lm$c;->n()V

    throw p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_4
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v1, v1, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    invoke-virtual {v1}, Lcom/huawei/hem/lm$c;->n()V

    throw p1

    :catchall_2
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/hem/lm$a;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->h:Lcom/huawei/hem/lm$a;

    iget-boolean v0, v0, Lcom/huawei/hem/lm$a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 6
    iget-wide v2, v0, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 8
    iget-wide v2, v0, Lcom/huawei/hem/hn;->b:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lcom/huawei/hem/lm$a;->a(Z)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v2, v0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget v3, v0, Lcom/huawei/hem/lm;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/hem/am;->k(IZLcom/huawei/hem/hn;J)V

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    monitor-enter v2

    .line 12
    :try_start_1
    iput-boolean v1, p0, Lcom/huawei/hem/lm$a;->b:Z

    .line 13
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    .line 15
    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0}, Lcom/huawei/hem/mm;->flush()V

    .line 16
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    invoke-virtual {v0}, Lcom/huawei/hem/lm;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    invoke-virtual {v1}, Lcom/huawei/hem/lm;->b()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 5
    iget-wide v0, v0, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/huawei/hem/lm$a;->a(Z)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0}, Lcom/huawei/hem/mm;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->d:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->j:Lcom/huawei/hem/lm$c;

    return-object v0
.end method

.method public p(Lcom/huawei/hem/hn;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/hn;->p(Lcom/huawei/hem/hn;J)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/huawei/hem/lm$a;->a:Lcom/huawei/hem/hn;

    .line 3
    iget-wide p1, p1, Lcom/huawei/hem/hn;->b:J

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hem/lm$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
