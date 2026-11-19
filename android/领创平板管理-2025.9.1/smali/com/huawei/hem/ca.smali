.class public Lcom/huawei/hem/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hem/ha;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/ca;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_default_config_tag"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    aget-object p1, v1, v4

    aget-object v1, v1, v5

    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    :goto_1
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/huawei/hem/pa;

    iget-object v3, p0, Lcom/huawei/hem/ca;->d:Ljava/lang/String;

    invoke-direct {v2, p2, p1, v1, v3}, Lcom/huawei/hem/pa;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, v2, Lcom/huawei/hem/pa;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/huawei/hem/pa;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "diffprivacy"

    const-string v7, "preins"

    const-string v8, "maint"

    const-string v9, "oper"

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/la;

    .line 4
    iget-object v10, v5, Lcom/huawei/hem/la;->a:Ljava/lang/String;

    .line 5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3, v9, v0}, Lcom/huawei/hem/pa;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v8, v0}, Lcom/huawei/hem/pa;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v7, v0}, Lcom/huawei/hem/pa;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v6, v0}, Lcom/huawei/hem/pa;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, v2, Lcom/huawei/hem/pa;->a:Ljava/util/List;

    iget-object p2, v2, Lcom/huawei/hem/pa;->c:Ljava/lang/String;

    iget-object v0, v2, Lcom/huawei/hem/pa;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v0}, Lcom/huawei/hem/pa;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public run()V
    .locals 10

    const-string v0, "cached_v2_1"

    const-string v1, "stat_v2_1"

    const-string v2, "hmsSdk"

    const-string v3, "eventReportTask is running"

    invoke-static {v2, v3}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    const-string v4, "Privacy_MY"

    const-string v5, "flashKeyTime"

    const-wide/16 v6, -0x1

    .line 1
    invoke-static {v3, v4, v5, v6, v7}, Lcom/huawei/hem/l9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x2932e00

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "alltype"

    if-eqz v3, :cond_1

    const-string v7, "workKey is refresh,begin report all data"

    .line 2
    invoke-static {v2, v7}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/huawei/hem/ta;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_3

    const-string v7, "no have events to report: tag:%s : type:%s"

    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 3
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/hem/xa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v5

    invoke-static {v3, v1, v6}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-static {v1, v0, v3}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v9, v8}, Lcom/huawei/hem/ca;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v1, v6}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    iget-object v6, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v5

    invoke-static {v7, v1, v8}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :catch_0
    move-exception v7

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readEventRecords handData Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v4, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v1, v6}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v5

    invoke-static {v7, v1, v8}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readEventRecords handData IllegalArgumentException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v1, v6}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v5

    invoke-static {v7, v1, v8}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    if-eqz v3, :cond_9

    const-string v0, "refresh local key"

    invoke-static {v2, v0}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/m9;->e()Lcom/huawei/hem/m9;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x10

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hem/m9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hem/m9;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v1, v0, Lcom/huawei/hem/m9;->a:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    throw v0

    :cond_9
    :goto_4
    return-void

    .line 6
    :goto_5
    iget-object v3, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/huawei/hem/ca;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hem/ca;->c:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v3, v7, v5

    invoke-static {v6, v1, v7}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hem/ca;->a:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-static {v1, v0, v4}, Lcom/huawei/hem/l9;->n(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_6
    throw v2
.end method
