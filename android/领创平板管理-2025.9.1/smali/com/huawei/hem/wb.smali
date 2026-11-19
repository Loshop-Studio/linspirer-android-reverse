.class public Lcom/huawei/hem/wb;
.super Lcom/huawei/hem/ub;
.source "UploadBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hem/ub<",
        "Lcom/huawei/hem/wb;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hem/rb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hem/ub;-><init>(Lcom/huawei/hem/rb;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/huawei/hem/ck$a;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/ck$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v4

    .line 6
    invoke-interface {v4, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "application/octet-stream"

    .line 7
    :cond_0
    invoke-static {v4}, Lcom/huawei/hem/bk;->b(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/huawei/hem/ik;

    invoke-direct {v5, v4, v2}, Lcom/huawei/hem/ik;-><init>(Lcom/huawei/hem/bk;Ljava/io/File;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "Content-Disposition"

    aput-object v6, v2, v4

    const/4 v4, 0x1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"; filename=\""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/huawei/hem/yj;->f([Ljava/lang/String;)Lcom/huawei/hem/yj;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Lcom/huawei/hem/ck$a;->a(Lcom/huawei/hem/yj;Lcom/huawei/hem/jk;)Lcom/huawei/hem/ck$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/huawei/hem/yb;)V
    .locals 7

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
    new-instance v2, Lcom/huawei/hem/ck$a;

    invoke-direct {v2}, Lcom/huawei/hem/ck$a;-><init>()V

    sget-object v3, Lcom/huawei/hem/ck;->f:Lcom/huawei/hem/bk;

    invoke-virtual {v2, v3}, Lcom/huawei/hem/ck$a;->b(Lcom/huawei/hem/bk;)Lcom/huawei/hem/ck$a;

    .line 7
    iget-object v3, p0, Lcom/huawei/hem/wb;->e:Ljava/util/Map;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/hem/wb;->b(Lcom/huawei/hem/ck$a;Ljava/util/Map;)V

    .line 8
    new-instance v3, Lcom/huawei/hem/zb;

    .line 9
    iget-object v4, v2, Lcom/huawei/hem/ck$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    new-instance v4, Lcom/huawei/hem/ck;

    iget-object v5, v2, Lcom/huawei/hem/ck$a;->a:Lcom/huawei/hem/kn;

    iget-object v6, v2, Lcom/huawei/hem/ck$a;->b:Lcom/huawei/hem/bk;

    iget-object v2, v2, Lcom/huawei/hem/ck$a;->c:Ljava/util/List;

    invoke-direct {v4, v5, v6, v2}, Lcom/huawei/hem/ck;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/bk;Ljava/util/List;)V

    .line 11
    invoke-direct {v3, v4, p1}, Lcom/huawei/hem/zb;-><init>(Lcom/huawei/hem/jk;Lcom/huawei/hem/yb;)V

    const-string v2, "POST"

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/huawei/hem/gk$a;->c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;

    .line 13
    invoke-virtual {v0}, Lcom/huawei/hem/gk$a;->a()Lcom/huawei/hem/gk;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/huawei/hem/tb;->c:Lcom/huawei/hem/rb;

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    if-eqz v2, :cond_1

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

    invoke-direct {v0, p1, v3}, Lcom/huawei/hem/xb;-><init>(Lcom/huawei/hem/yb;Z)V

    invoke-virtual {v1, v0}, Lcom/huawei/hem/fk;->a(Lcom/huawei/hem/lj;)V

    goto :goto_0

    .line 19
    :cond_1
    throw v1

    .line 20
    :cond_2
    throw v1

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Upload enqueue error:"

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

    :goto_0
    return-void
.end method
