.class public final Lcom/loc/by;
.super Ljava/lang/Object;
.source "FpsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/by$a;
    }
.end annotation


# static fields
.field public static volatile g:Lcom/loc/by;

.field public static h:Ljava/lang/Object;


# instance fields
.field public a:Lcom/loc/bx;

.field public b:Lcom/loc/bz;

.field public c:J

.field public d:Lcom/loc/dd;

.field public e:Lcom/loc/bu;

.field public f:Lcom/loc/dd;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/by;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/dd;

    invoke-direct {v0}, Lcom/loc/dd;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->f:Lcom/loc/dd;

    new-instance v0, Lcom/loc/bx;

    invoke-direct {v0}, Lcom/loc/bx;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->a:Lcom/loc/bx;

    new-instance v0, Lcom/loc/bz;

    invoke-direct {v0}, Lcom/loc/bz;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->b:Lcom/loc/bz;

    new-instance v0, Lcom/loc/bu;

    invoke-direct {v0}, Lcom/loc/bu;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->e:Lcom/loc/bu;

    return-void
.end method

.method public static a()Lcom/loc/by;
    .locals 2

    sget-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/by;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/loc/by;->g:Lcom/loc/by;

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/by;

    invoke-direct {v1}, Lcom/loc/by;-><init>()V

    sput-object v1, Lcom/loc/by;->g:Lcom/loc/by;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/loc/by$a;)Lcom/loc/ca;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v3, v0, Lcom/loc/by;->d:Lcom/loc/dd;

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/loc/by$a;->a:Lcom/loc/dd;

    invoke-virtual {v4, v3}, Lcom/loc/dc;->a(Lcom/loc/dc;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    :cond_1
    iget-object v4, v0, Lcom/loc/by;->a:Lcom/loc/bx;

    iget-object v5, v1, Lcom/loc/by$a;->a:Lcom/loc/dd;

    iget-boolean v6, v1, Lcom/loc/by$a;->j:Z

    iget-byte v7, v1, Lcom/loc/by$a;->g:B

    iget-object v8, v1, Lcom/loc/by$a;->h:Ljava/lang/String;

    iget-object v9, v1, Lcom/loc/by$a;->i:Ljava/util/List;

    invoke-virtual/range {v4 .. v9}, Lcom/loc/bx;->a(Lcom/loc/dd;ZBLjava/lang/String;Ljava/util/List;)Lcom/loc/bx$a;

    move-result-object v17

    iget-object v3, v0, Lcom/loc/by;->b:Lcom/loc/bz;

    iget-object v4, v1, Lcom/loc/by$a;->a:Lcom/loc/dd;

    iget-object v5, v1, Lcom/loc/by$a;->b:Ljava/util/List;

    iget-boolean v6, v1, Lcom/loc/by$a;->e:Z

    iget-wide v7, v1, Lcom/loc/by$a;->d:J

    move-wide v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/loc/bz;->a(Lcom/loc/dd;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v20

    if-nez v17, :cond_2

    if-eqz v20, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/loc/by;->f:Lcom/loc/dd;

    iget-object v4, v1, Lcom/loc/by$a;->a:Lcom/loc/dd;

    iget-wide v5, v1, Lcom/loc/by$a;->f:J

    move-wide v7, v11

    invoke-static/range {v3 .. v8}, Lcom/loc/cv;->a(Lcom/loc/dd;Lcom/loc/dd;JJ)V

    new-instance v2, Lcom/loc/ca;

    const/4 v3, 0x0

    iget-object v15, v0, Lcom/loc/by;->e:Lcom/loc/bu;

    iget-object v4, v0, Lcom/loc/by;->f:Lcom/loc/dd;

    iget-wide v5, v1, Lcom/loc/by$a;->c:J

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    invoke-virtual/range {v15 .. v20}, Lcom/loc/bu;->a(Lcom/loc/dd;Lcom/loc/bx$a;JLjava/util/List;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/loc/ca;-><init>(I[B)V

    :cond_3
    iget-object v1, v1, Lcom/loc/by$a;->a:Lcom/loc/dd;

    iput-object v1, v0, Lcom/loc/by;->d:Lcom/loc/dd;

    iput-wide v13, v0, Lcom/loc/by;->c:J

    :cond_4
    return-object v2
.end method
