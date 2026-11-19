.class public final Lcom/huawei/hem/ql;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/huawei/hem/ak$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/huawei/hem/kl;

.field public final c:Lcom/huawei/hem/dl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Lcom/huawei/hem/gk;

.field public final f:Lcom/huawei/hem/kj;

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;ILcom/huawei/hem/gk;Lcom/huawei/hem/kj;III)V
    .locals 0
    .param p3    # Lcom/huawei/hem/dl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;",
            "Lcom/huawei/hem/kl;",
            "Lcom/huawei/hem/dl;",
            "I",
            "Lcom/huawei/hem/gk;",
            "Lcom/huawei/hem/kj;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/ql;->b:Lcom/huawei/hem/kl;

    .line 4
    iput-object p3, p0, Lcom/huawei/hem/ql;->c:Lcom/huawei/hem/dl;

    .line 5
    iput p4, p0, Lcom/huawei/hem/ql;->d:I

    .line 6
    iput-object p5, p0, Lcom/huawei/hem/ql;->e:Lcom/huawei/hem/gk;

    .line 7
    iput-object p6, p0, Lcom/huawei/hem/ql;->f:Lcom/huawei/hem/kj;

    .line 8
    iput p7, p0, Lcom/huawei/hem/ql;->g:I

    .line 9
    iput p8, p0, Lcom/huawei/hem/ql;->h:I

    .line 10
    iput p9, p0, Lcom/huawei/hem/ql;->i:I

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/gk;)Lcom/huawei/hem/kk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ql;->b:Lcom/huawei/hem/kl;

    iget-object v1, p0, Lcom/huawei/hem/ql;->c:Lcom/huawei/hem/dl;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/hem/ql;->b(Lcom/huawei/hem/gk;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;)Lcom/huawei/hem/kk;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/huawei/hem/gk;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;)Lcom/huawei/hem/kk;
    .locals 15
    .param p3    # Lcom/huawei/hem/dl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/huawei/hem/ql;->d:I

    iget-object v2, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    iget v1, v0, Lcom/huawei/hem/ql;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/huawei/hem/ql;->j:I

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/ql;->c:Lcom/huawei/hem/dl;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/huawei/hem/dl;->b()Lcom/huawei/hem/fl;

    move-result-object v1

    move-object/from16 v9, p1

    .line 4
    iget-object v4, v9, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 5
    invoke-virtual {v1, v4}, Lcom/huawei/hem/fl;->k(Lcom/huawei/hem/zj;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    iget v5, v0, Lcom/huawei/hem/ql;->d:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v9, p1

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/huawei/hem/ql;->c:Lcom/huawei/hem/dl;

    const-string v14, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/huawei/hem/ql;->j:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    iget v5, v0, Lcom/huawei/hem/ql;->d:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    :goto_1
    new-instance v1, Lcom/huawei/hem/ql;

    iget-object v5, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    iget v4, v0, Lcom/huawei/hem/ql;->d:I

    add-int/lit8 v8, v4, 0x1

    iget-object v10, v0, Lcom/huawei/hem/ql;->f:Lcom/huawei/hem/kj;

    iget v11, v0, Lcom/huawei/hem/ql;->g:I

    iget v12, v0, Lcom/huawei/hem/ql;->h:I

    iget v13, v0, Lcom/huawei/hem/ql;->i:I

    move-object v4, v1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v13}, Lcom/huawei/hem/ql;-><init>(Ljava/util/List;Lcom/huawei/hem/kl;Lcom/huawei/hem/dl;ILcom/huawei/hem/gk;Lcom/huawei/hem/kj;III)V

    .line 10
    iget-object v4, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    iget v5, v0, Lcom/huawei/hem/ql;->d:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/ak;

    .line 11
    invoke-interface {v4, v1}, Lcom/huawei/hem/ak;->a(Lcom/huawei/hem/ak$a;)Lcom/huawei/hem/kk;

    move-result-object v5

    if-eqz p3, :cond_5

    .line 12
    iget v6, v0, Lcom/huawei/hem/ql;->d:I

    add-int/2addr v6, v2

    iget-object v7, v0, Lcom/huawei/hem/ql;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget v1, v1, Lcom/huawei/hem/ql;->j:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v5, :cond_7

    .line 14
    iget-object v2, v5, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    if-eqz v2, :cond_6

    return-object v5

    .line 15
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
