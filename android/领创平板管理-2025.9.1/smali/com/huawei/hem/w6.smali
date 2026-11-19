.class public Lcom/huawei/hem/w6;
.super Lcom/huawei/hem/s6;
.source ""


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/String;

.field public e:Lcom/huawei/hem/t6;

.field public volatile f:Lcom/huawei/hem/x6;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hem/s6;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/w6;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/w6;->h:Ljava/util/Map;

    iput-object p1, p0, Lcom/huawei/hem/w6;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hem/w6;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/w6;->f:Lcom/huawei/hem/x6;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/huawei/hem/w6;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/w6;->f:Lcom/huawei/hem/x6;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/huawei/hem/w6;->e:Lcom/huawei/hem/t6;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/hem/w6;->e:Lcom/huawei/hem/t6;

    .line 2
    iget-object v3, v2, Lcom/huawei/hem/t6;->b:Ljava/io/InputStream;

    if-nez v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/huawei/hem/v6;

    .line 3
    iget-object v3, v3, Lcom/huawei/hem/v6;->c:Ljava/io/InputStream;

    .line 4
    iput-object v3, v2, Lcom/huawei/hem/t6;->b:Ljava/io/InputStream;

    :cond_0
    iget-object v2, v2, Lcom/huawei/hem/t6;->b:Ljava/io/InputStream;

    .line 5
    new-instance v3, Lcom/huawei/hem/z6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/z6;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/huawei/hem/w6;->f:Lcom/huawei/hem/x6;

    iget-object v2, p0, Lcom/huawei/hem/w6;->e:Lcom/huawei/hem/t6;

    .line 6
    iget-object v2, v2, Lcom/huawei/hem/t6;->b:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    :try_start_1
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "Utils"

    const-string v3, "Exception when closing the \'Closeable\'."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/huawei/hem/w6;->e:Lcom/huawei/hem/t6;

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/huawei/hem/b7;

    iget-object v3, p0, Lcom/huawei/hem/w6;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/hem/w6;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/huawei/hem/b7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hem/w6;->f:Lcom/huawei/hem/x6;

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    if-lez v0, :cond_5

    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/huawei/hem/w6;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hem/w6;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/huawei/hem/w6;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/huawei/hem/w6;->f:Lcom/huawei/hem/x6;

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/x6;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_4
    return-object v1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "path must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
