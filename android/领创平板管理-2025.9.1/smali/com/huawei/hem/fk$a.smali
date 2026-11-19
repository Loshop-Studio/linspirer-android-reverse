.class public final Lcom/huawei/hem/fk$a;
.super Lcom/huawei/hem/sk;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/huawei/hem/lj;

.field public volatile c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Lcom/huawei/hem/fk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/fk;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/fk;Lcom/huawei/hem/lj;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    .line 3
    iget-object p1, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hem/zj;->o()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hem/fk$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-object p2, p0, Lcom/huawei/hem/fk$a;->b:Lcom/huawei/hem/lj;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/kl;->e:Lcom/huawei/hem/fn;

    invoke-virtual {v0}, Lcom/huawei/hem/fn;->i()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    invoke-virtual {v1}, Lcom/huawei/hem/fk;->b()Lcom/huawei/hem/kk;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/huawei/hem/fk$a;->b:Lcom/huawei/hem/lj;

    check-cast v2, Lcom/huawei/hem/xb;

    .line 6
    iget-object v3, v2, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    if-nez v3, :cond_0

    const-string v0, "LTKLog2"

    const-string v2, "response back but callback is empty"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-boolean v3, v2, Lcom/huawei/hem/xb;->b:Z

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2, v0}, Lcom/huawei/hem/xb;->a(Lcom/huawei/hem/kk;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-virtual {v2, v0}, Lcom/huawei/hem/xb;->a(Lcom/huawei/hem/kk;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 11
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 12
    iget-object v2, v2, Lcom/huawei/hem/fk;->b:Lcom/huawei/hem/kl;

    invoke-virtual {v2}, Lcom/huawei/hem/kl;->b()V

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 15
    iget-object v2, p0, Lcom/huawei/hem/fk$a;->b:Lcom/huawei/hem/lj;

    iget-object v3, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    check-cast v2, Lcom/huawei/hem/xb;

    :try_start_3
    invoke-virtual {v2, v3, v0}, Lcom/huawei/hem/xb;->b(Lcom/huawei/hem/kj;Ljava/io/IOException;)V

    .line 16
    :cond_2
    throw v1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    sget-object v0, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    const/4 v2, 0x4

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    invoke-virtual {v4}, Lcom/huawei/hem/fk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hem/wm;->n(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/huawei/hem/fk$a;->b:Lcom/huawei/hem/lj;

    iget-object v2, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    check-cast v0, Lcom/huawei/hem/xb;

    :try_start_4
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hem/xb;->b(Lcom/huawei/hem/kj;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    iget-object v0, v0, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 21
    iget-object v0, v0, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 22
    invoke-virtual {v0, p0}, Lcom/huawei/hem/sj;->a(Lcom/huawei/hem/fk$a;)V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    iget-object v1, v1, Lcom/huawei/hem/fk;->a:Lcom/huawei/hem/dk;

    .line 23
    iget-object v1, v1, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 24
    invoke-virtual {v1, p0}, Lcom/huawei/hem/sj;->a(Lcom/huawei/hem/fk$a;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    iget-object v0, v0, Lcom/huawei/hem/fk;->c:Lcom/huawei/hem/gk;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/zj;->d:Ljava/lang/String;

    return-object v0
.end method
