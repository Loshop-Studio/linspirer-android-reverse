.class public final Lcom/loc/bu;
.super Lcom/loc/bt;
.source "FpsBufferBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/loc/bt;-><init>(I)V

    return-void
.end method

.method private a(JLjava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/loc/de;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p3 .. p3}, Lcom/loc/bu;->b(Ljava/util/List;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/loc/de;

    iget-object v7, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget-object v8, v6, Lcom/loc/de;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v14

    iget-wide v7, v6, Lcom/loc/de;->a:J

    cmp-long v9, v7, p1

    if-nez v9, :cond_0

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v10, v7

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget-wide v11, v6, Lcom/loc/de;->a:J

    iget v7, v6, Lcom/loc/de;->c:I

    int-to-short v13, v7

    iget-short v15, v6, Lcom/loc/de;->g:S

    iget v6, v6, Lcom/loc/de;->d:I

    int-to-short v6, v6

    move/from16 v16, v6

    invoke-static/range {v9 .. v16}, Lcom/loc/cq;->a(Lcom/loc/ey;ZJSISS)I

    move-result v6

    aput v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {v1, v2}, Lcom/loc/cp;->a(Lcom/loc/ey;[I)I

    move-result v1

    iget-object v2, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {v2, v1}, Lcom/loc/cp;->a(Lcom/loc/ey;I)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method private a(Lcom/loc/bx$a;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-static {v2}, Lcom/loc/bu;->a(Ljava/util/List;)V

    iget-object v2, v1, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v2, :cond_7

    iget-object v8, v1, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/loc/cx;

    instance-of v9, v8, Lcom/loc/cz;

    if-eqz v9, :cond_1

    move-object v6, v8

    check-cast v6, Lcom/loc/cz;

    iget-boolean v9, v6, Lcom/loc/cx;->i:Z

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v11, v6, Lcom/loc/cz;->j:I

    iget v12, v6, Lcom/loc/cz;->k:I

    iget v13, v6, Lcom/loc/cx;->c:I

    iget v6, v6, Lcom/loc/cz;->l:I

    invoke-static {v9, v11, v12, v13, v6}, Lcom/loc/ck;->a(Lcom/loc/ey;IIII)I

    move-result v6

    goto :goto_1

    :cond_0
    iget-object v11, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-virtual {v6}, Lcom/loc/cx;->b()I

    move-result v12

    invoke-virtual {v6}, Lcom/loc/cx;->c()I

    move-result v13

    iget v14, v6, Lcom/loc/cz;->j:I

    iget v15, v6, Lcom/loc/cz;->k:I

    iget v9, v6, Lcom/loc/cx;->c:I

    iget v4, v6, Lcom/loc/cz;->m:I

    iget v7, v6, Lcom/loc/cz;->n:I

    iget v10, v6, Lcom/loc/cx;->d:I

    iget v6, v6, Lcom/loc/cz;->l:I

    move/from16 v16, v9

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v6

    invoke-static/range {v11 .. v20}, Lcom/loc/ck;->a(Lcom/loc/ey;IIIIIIIII)I

    move-result v6

    :goto_1
    move v14, v6

    const/4 v4, -0x1

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_1
    instance-of v4, v8, Lcom/loc/da;

    if-eqz v4, :cond_2

    const/4 v6, 0x3

    move-object v4, v8

    check-cast v4, Lcom/loc/da;

    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-virtual {v4}, Lcom/loc/cx;->b()I

    move-result v10

    invoke-virtual {v4}, Lcom/loc/cx;->c()I

    move-result v11

    iget v12, v4, Lcom/loc/da;->j:I

    iget v13, v4, Lcom/loc/da;->k:I

    iget v14, v4, Lcom/loc/da;->l:I

    iget v15, v4, Lcom/loc/cx;->c:I

    iget v7, v4, Lcom/loc/da;->m:I

    iget v4, v4, Lcom/loc/cx;->d:I

    move/from16 v16, v7

    move/from16 v17, v4

    invoke-static/range {v9 .. v17}, Lcom/loc/cl;->a(Lcom/loc/ey;IIIIIIII)I

    move-result v4

    :goto_2
    move v14, v4

    move v13, v6

    const/4 v4, -0x1

    goto :goto_3

    :cond_2
    instance-of v4, v8, Lcom/loc/cy;

    if-eqz v4, :cond_4

    move-object v4, v8

    check-cast v4, Lcom/loc/cy;

    iget-boolean v7, v4, Lcom/loc/cx;->i:Z

    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v10, v4, Lcom/loc/cy;->j:I

    iget v11, v4, Lcom/loc/cy;->k:I

    iget v12, v4, Lcom/loc/cy;->l:I

    iget v13, v4, Lcom/loc/cy;->m:I

    iget v14, v4, Lcom/loc/cy;->n:I

    iget v15, v4, Lcom/loc/cx;->c:I

    if-nez v7, :cond_3

    invoke-static/range {v9 .. v15}, Lcom/loc/ce;->a(Lcom/loc/ey;IIIIII)I

    move-result v4

    goto :goto_2

    :cond_3
    iget v4, v4, Lcom/loc/cx;->d:I

    move/from16 v16, v4

    invoke-static/range {v9 .. v16}, Lcom/loc/ce;->a(Lcom/loc/ey;IIIIIII)I

    move-result v4

    goto :goto_2

    :cond_4
    instance-of v4, v8, Lcom/loc/db;

    if-eqz v4, :cond_5

    const/4 v6, 0x4

    move-object v4, v8

    check-cast v4, Lcom/loc/db;

    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-virtual {v4}, Lcom/loc/cx;->b()I

    move-result v10

    invoke-virtual {v4}, Lcom/loc/cx;->c()I

    move-result v11

    iget v12, v4, Lcom/loc/db;->j:I

    iget v13, v4, Lcom/loc/db;->k:I

    iget v14, v4, Lcom/loc/db;->l:I

    iget v15, v4, Lcom/loc/cx;->c:I

    iget v7, v4, Lcom/loc/db;->m:I

    iget v4, v4, Lcom/loc/cx;->d:I

    move/from16 v16, v7

    move/from16 v17, v4

    invoke-static/range {v9 .. v17}, Lcom/loc/co;->a(Lcom/loc/ey;IIIIIIII)I

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_3
    if-eq v14, v4, :cond_6

    iget-boolean v4, v8, Lcom/loc/cx;->h:Z

    int-to-byte v10, v4

    iget-boolean v4, v8, Lcom/loc/cx;->i:Z

    int-to-byte v11, v4

    iget-object v9, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v4, v8, Lcom/loc/cx;->g:I

    int-to-short v12, v4

    invoke-static/range {v9 .. v14}, Lcom/loc/ch;->a(Lcom/loc/ey;BBSBI)I

    move-result v4

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    return v4

    :cond_7
    iget-object v2, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget-object v4, v1, Lcom/loc/bx$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v4, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {v4, v3}, Lcom/loc/cf;->a(Lcom/loc/ey;[I)I

    move-result v3

    iget-object v4, v1, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_e

    iget-object v8, v1, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/loc/cx;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v8, Lcom/loc/cx;->e:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x7fff

    cmp-long v13, v9, v11

    if-gtz v13, :cond_8

    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-gez v13, :cond_9

    :cond_8
    move-wide v9, v11

    :cond_9
    instance-of v11, v8, Lcom/loc/cz;

    if-eqz v11, :cond_a

    check-cast v8, Lcom/loc/cz;

    iget-object v11, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v12, v8, Lcom/loc/cz;->j:I

    iget v8, v8, Lcom/loc/cz;->k:I

    :goto_5
    long-to-int v9, v9

    int-to-short v9, v9

    invoke-static {v11, v12, v8, v9}, Lcom/loc/cn;->a(Lcom/loc/ey;IIS)I

    move-result v8

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    instance-of v11, v8, Lcom/loc/da;

    if-eqz v11, :cond_b

    check-cast v8, Lcom/loc/da;

    iget-object v11, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v12, v8, Lcom/loc/da;->j:I

    iget v8, v8, Lcom/loc/da;->k:I

    goto :goto_5

    :cond_b
    instance-of v11, v8, Lcom/loc/cy;

    if-eqz v11, :cond_c

    check-cast v8, Lcom/loc/cy;

    iget-object v11, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v12, v8, Lcom/loc/cy;->j:I

    iget v13, v8, Lcom/loc/cy;->k:I

    iget v8, v8, Lcom/loc/cy;->l:I

    long-to-int v9, v9

    int-to-short v9, v9

    invoke-static {v11, v12, v13, v8, v9}, Lcom/loc/cm;->a(Lcom/loc/ey;IIIS)I

    move-result v8

    move v9, v6

    goto :goto_6

    :cond_c
    instance-of v11, v8, Lcom/loc/db;

    if-eqz v11, :cond_d

    check-cast v8, Lcom/loc/db;

    iget-object v11, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget v12, v8, Lcom/loc/db;->j:I

    iget v8, v8, Lcom/loc/db;->k:I

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    iget-object v10, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    int-to-byte v9, v9

    invoke-static {v10, v9, v8}, Lcom/loc/cg;->a(Lcom/loc/ey;BI)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    iget-object v4, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {v4, v5}, Lcom/loc/cf;->b(Lcom/loc/ey;[I)I

    move-result v4

    iget-object v5, v0, Lcom/loc/bt;->a:Lcom/loc/bv;

    iget-byte v1, v1, Lcom/loc/bx$a;->a:B

    invoke-static {v5, v2, v1, v3, v4}, Lcom/loc/cf;->a(Lcom/loc/ey;IBII)I

    move-result v1

    return v1
.end method

.method private a(Lcom/loc/dd;)I
    .locals 12

    iget-wide v3, p1, Lcom/loc/dd;->k:J

    iget-wide v1, p1, Lcom/loc/dc;->c:J

    iget-wide v5, p1, Lcom/loc/dc;->e:D

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget-wide v9, p1, Lcom/loc/dc;->d:D

    mul-double/2addr v9, v7

    double-to-int v6, v9

    iget-wide v7, p1, Lcom/loc/dc;->f:D

    double-to-int v7, v7

    iget v0, p1, Lcom/loc/dc;->i:F

    float-to-int v8, v0

    iget v0, p1, Lcom/loc/dc;->g:F

    float-to-int v9, v0

    iget v0, p1, Lcom/loc/dc;->h:F

    float-to-int v0, v0

    int-to-short v10, v0

    iget-byte v11, p1, Lcom/loc/dd;->l:B

    iget-object v0, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static/range {v0 .. v11}, Lcom/loc/cj;->a(Lcom/loc/ey;JJIIIIISB)I

    move-result p1

    return p1
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/loc/cx;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cx;

    instance-of v1, v0, Lcom/loc/cz;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/loc/cz;

    iget v2, v1, Lcom/loc/cz;->j:I

    iget v1, v1, Lcom/loc/cz;->k:I

    :goto_1
    invoke-static {v2, v1}, Lcom/loc/ct;->a(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/loc/ct;->a(J)S

    move-result v1

    iput v1, v0, Lcom/loc/cx;->g:I

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/loc/da;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/loc/da;

    iget v2, v1, Lcom/loc/da;->j:I

    iget v1, v1, Lcom/loc/da;->k:I

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/loc/db;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/loc/db;

    iget v2, v1, Lcom/loc/db;->j:I

    iget v1, v1, Lcom/loc/db;->k:I

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/loc/cy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/loc/cy;

    iget v2, v1, Lcom/loc/cy;->k:I

    iget v1, v1, Lcom/loc/cy;->l:I

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/loc/de;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/de;

    iget-wide v1, v0, Lcom/loc/de;->a:J

    invoke-static {v1, v2}, Lcom/loc/ct;->b(J)S

    move-result v1

    iput-short v1, v0, Lcom/loc/de;->g:S

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/dd;Lcom/loc/bx$a;JLjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/dd;",
            "Lcom/loc/bx$a;",
            "J",
            "Ljava/util/List<",
            "Lcom/loc/de;",
            ">;)[B"
        }
    .end annotation

    invoke-super {p0}, Lcom/loc/bt;->a()Lcom/loc/bt;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/bu;->a(Lcom/loc/dd;)I

    move-result p1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/loc/bx$a;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/loc/bu;->a(Lcom/loc/bx$a;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p3, p4, p5}, Lcom/loc/bu;->a(JLjava/util/List;)I

    move-result v0

    :cond_1
    iget-object p3, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {p3}, Lcom/loc/cc;->a(Lcom/loc/ey;)V

    iget-object p3, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {p3, p1}, Lcom/loc/cc;->a(Lcom/loc/ey;I)V

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {p1, p2}, Lcom/loc/cc;->c(Lcom/loc/ey;I)V

    :cond_2
    if-lez v0, :cond_3

    iget-object p1, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {p1, v0}, Lcom/loc/cc;->b(Lcom/loc/ey;I)V

    :cond_3
    iget-object p1, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-static {p1}, Lcom/loc/cc;->b(Lcom/loc/ey;)I

    move-result p1

    iget-object p2, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-virtual {p2, p1}, Lcom/loc/ey;->c(I)V

    iget-object p1, p0, Lcom/loc/bt;->a:Lcom/loc/bv;

    invoke-virtual {p1}, Lcom/loc/ey;->c()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/loc/dh;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
