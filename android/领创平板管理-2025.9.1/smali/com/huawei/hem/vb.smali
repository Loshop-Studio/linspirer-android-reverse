.class public Lcom/huawei/hem/vb;
.super Lcom/huawei/hem/ub;
.source "PostBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hem/ub<",
        "Lcom/huawei/hem/vb;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/rb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hem/ub;-><init>(Lcom/huawei/hem/rb;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/huawei/hem/yb;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lcom/huawei/hem/gk$a;

    invoke-direct {v0}, Lcom/huawei/hem/gk$a;-><init>()V

    iget-object v1, p0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/gk$a;->e(Ljava/lang/String;)Lcom/huawei/hem/gk$a;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/tb;->a(Lcom/huawei/hem/gk$a;Ljava/util/Map;)V

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/tb;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/tb;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/gk$a;->d(Ljava/lang/Object;)Lcom/huawei/hem/gk$a;

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "POST"

    if-lez v2, :cond_1

    :try_start_1
    const-string v2, "application/json; charset=utf-8"

    .line 7
    invoke-static {v2}, Lcom/huawei/hem/bk;->b(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/huawei/hem/jk;->c(Lcom/huawei/hem/bk;Ljava/lang/String;)Lcom/huawei/hem/jk;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v5, Lcom/huawei/hem/wj;

    invoke-direct {v5, v2, v4}, Lcom/huawei/hem/wj;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 12
    invoke-virtual {v0, v3, v5}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hem/gk$a;->a()Lcom/huawei/hem/gk;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/huawei/hem/tb;->c:Lcom/huawei/hem/rb;

    if-eqz v2, :cond_3

    .line 15
    sget-object v2, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    if-eqz v2, :cond_2

    .line 16
    new-instance v1, Lcom/huawei/hem/fk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/hem/fk;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/gk;Z)V

    .line 17
    new-instance v0, Lcom/huawei/hem/kl;

    invoke-direct {v0, v2, v1}, Lcom/huawei/hem/kl;-><init>(Lcom/huawei/hem/dk;Lcom/huawei/hem/kj;)V

    iput-object v0, v1, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    .line 18
    new-instance v0, Lcom/huawei/hem/xb;

    iget-boolean v2, p0, Lcom/huawei/hem/tb;->d:Z

    invoke-direct {v0, p1, v2}, Lcom/huawei/hem/xb;-><init>(Lcom/huawei/hem/yb;Z)V

    .line 19
    invoke-virtual {v1, v0}, Lcom/huawei/hem/fk;->a(Lcom/huawei/hem/lj;)V

    goto :goto_1

    .line 20
    :cond_2
    throw v1

    .line 21
    :cond_3
    throw v1

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Post enqueue error:"

    .line 23
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTKLog2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/huawei/hem/sb;

    const/16 v1, -0x12c

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/sb;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/huawei/hem/yb;->onFailure(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
