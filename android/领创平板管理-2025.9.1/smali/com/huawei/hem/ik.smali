.class public Lcom/huawei/hem/ik;
.super Lcom/huawei/hem/jk;
.source "RequestBody.java"


# instance fields
.field public final synthetic a:Lcom/huawei/hem/bk;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/bk;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/ik;->a:Lcom/huawei/hem/bk;

    iput-object p2, p0, Lcom/huawei/hem/ik;->b:Ljava/io/File;

    invoke-direct {p0}, Lcom/huawei/hem/jk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ik;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/huawei/hem/bk;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ik;->a:Lcom/huawei/hem/bk;

    return-object v0
.end method

.method public e(Lcom/huawei/hem/in;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ik;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/huawei/hem/rn;->e(Ljava/io/File;)Lcom/huawei/hem/ao;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {p1, v0}, Lcom/huawei/hem/in;->q(Lcom/huawei/hem/ao;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    check-cast v0, Lcom/huawei/hem/rn$a;

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/rn$a;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    :try_start_2
    check-cast v0, Lcom/huawei/hem/rn$a;

    .line 7
    iget-object v0, v0, Lcom/huawei/hem/rn$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
