.class public final Lcom/huawei/hem/lm$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/huawei/hem/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/hn;

.field public final b:Lcom/huawei/hem/hn;

.field public final c:J

.field public d:Lcom/huawei/hem/yj;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lcom/huawei/hem/lm;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/lm;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/huawei/hem/hn;

    invoke-direct {p1}, Lcom/huawei/hem/hn;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/lm$b;->a:Lcom/huawei/hem/hn;

    .line 3
    new-instance p1, Lcom/huawei/hem/hn;

    invoke-direct {p1}, Lcom/huawei/hem/hn;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 4
    iput-wide p2, p0, Lcom/huawei/hem/lm$b;->c:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/am;->j(J)V

    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/huawei/hem/lm$b;->e:Z

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 4
    iget-wide v1, v1, Lcom/huawei/hem/hn;->b:J

    .line 5
    iget-object v3, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    invoke-virtual {v3}, Lcom/huawei/hem/hn;->a()V

    .line 6
    iget-object v3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/lm$b;->a(J)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    invoke-virtual {v0}, Lcom/huawei/hem/lm;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e(Lcom/huawei/hem/hn;J)J
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    :goto_0
    const/4 v2, 0x0

    .line 1
    iget-object v3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v4, v4, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {v4}, Lcom/huawei/hem/fn;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v4, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v4, v4, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    if-eqz v4, :cond_1

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v2, v2, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v2, v2, Lcom/huawei/hem/lm;->l:Ljava/io/IOException;

    goto :goto_1

    .line 6
    :cond_0
    new-instance v2, Lcom/huawei/hem/qm;

    iget-object v4, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v4, v4, Lcom/huawei/hem/lm;->k:Lcom/huawei/hem/wl;

    invoke-direct {v2, v4}, Lcom/huawei/hem/qm;-><init>(Lcom/huawei/hem/wl;)V

    .line 7
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/huawei/hem/lm$b;->e:Z

    if-nez v4, :cond_7

    .line 8
    iget-object v4, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 9
    iget-wide v4, v4, Lcom/huawei/hem/hn;->b:J

    cmp-long v4, v4, v0

    const-wide/16 v5, -0x1

    if-lez v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    iget-object v7, p0, Lcom/huawei/hem/lm$b;->b:Lcom/huawei/hem/hn;

    .line 11
    iget-wide v7, v7, Lcom/huawei/hem/hn;->b:J

    .line 12
    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v4, p1, p2, p3}, Lcom/huawei/hem/hn;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide p1

    .line 13
    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-wide v7, p3, Lcom/huawei/hem/lm;->a:J

    add-long/2addr v7, p1

    iput-wide v7, p3, Lcom/huawei/hem/lm;->a:J

    if-nez v2, :cond_4

    .line 14
    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-wide v7, p3, Lcom/huawei/hem/lm;->a:J

    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object p3, p3, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget-object p3, p3, Lcom/huawei/hem/am;->s:Lcom/huawei/hem/pm;

    .line 15
    invoke-virtual {p3}, Lcom/huawei/hem/pm;->a()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v7, v9

    if-ltz p3, :cond_4

    .line 16
    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object p3, p3, Lcom/huawei/hem/lm;->d:Lcom/huawei/hem/am;

    iget-object v4, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget v4, v4, Lcom/huawei/hem/lm;->c:I

    iget-object v7, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-wide v7, v7, Lcom/huawei/hem/lm;->a:J

    invoke-virtual {p3, v4, v7, v8}, Lcom/huawei/hem/am;->O(IJ)V

    .line 17
    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iput-wide v0, p3, Lcom/huawei/hem/lm;->a:J

    goto :goto_2

    .line 18
    :cond_2
    iget-boolean v4, p0, Lcom/huawei/hem/lm$b;->f:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    invoke-virtual {v2}, Lcom/huawei/hem/lm;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    iget-object v2, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v2, v2, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {v2}, Lcom/huawei/hem/lm$c;->n()V

    monitor-exit v3

    goto/16 :goto_0

    :cond_3
    move-wide p1, v5

    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object p3, p3, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {p3}, Lcom/huawei/hem/lm$c;->n()V

    .line 21
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_5

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/lm$b;->a(J)V

    return-wide p1

    :cond_5
    if-nez v2, :cond_6

    return-wide v5

    .line 23
    :cond_6
    throw v2

    .line 24
    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_4
    iget-object p2, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object p2, p2, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    invoke-virtual {p2}, Lcom/huawei/hem/lm$c;->n()V

    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lm$b;->g:Lcom/huawei/hem/lm;

    iget-object v0, v0, Lcom/huawei/hem/lm;->i:Lcom/huawei/hem/lm$c;

    return-object v0
.end method
