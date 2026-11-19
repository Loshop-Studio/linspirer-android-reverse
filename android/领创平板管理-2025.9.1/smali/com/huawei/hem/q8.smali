.class public Lcom/huawei/hem/q8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hem/j8;


# instance fields
.field public a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public b:Landroid/content/Context;

.field public c:Lcom/huawei/hem/a8;

.field public d:Lcom/huawei/hem/r8;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Lcom/huawei/hem/r8;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hem/r8;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lorg/json/JSONArray;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/huawei/hem/o8;

.field public k:Lcom/huawei/hem/n8;

.field public l:J


# direct methods
.method public constructor <init>(Lcom/huawei/hem/n8;Lcom/huawei/hem/a8;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/q8;->f:Ljava/util/ArrayList;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/q8;->g:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/huawei/hem/q8;->l:J

    iput-object p1, p0, Lcom/huawei/hem/q8;->k:Lcom/huawei/hem/n8;

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/n8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    iput-object v0, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 3
    iget-object p1, p1, Lcom/huawei/hem/n8;->b:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hem/q8;->c:Lcom/huawei/hem/a8;

    .line 5
    const-class p2, Lcom/huawei/hem/y4;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "grs_sdk_server_config.json"

    invoke-static {v0, p1}, Lcom/huawei/hem/y4;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-exit p2

    goto :goto_3

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "grs_server"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "grs_base_url"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/huawei/hem/o8;

    invoke-direct {v0}, Lcom/huawei/hem/o8;-><init>()V

    sput-object v0, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;

    .line 6
    iput-object v2, v0, Lcom/huawei/hem/o8;->a:Ljava/util/List;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v0, "grs_query_endpoint_1.0"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7
    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;

    .line 8
    iput-object v0, v2, Lcom/huawei/hem/o8;->b:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v0, "grs_query_endpoint_2.0"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 9
    :try_start_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;

    .line 10
    iput-object v0, v2, Lcom/huawei/hem/o8;->c:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    const-string v0, "grs_query_timeout"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 11
    :try_start_b
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;

    .line 12
    iput p1, v0, Lcom/huawei/hem/o8;->d:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_c
    const-string v0, "a"

    const-string v2, "getGrsServerBean catch JSONException"

    .line 13
    invoke-static {v0, v2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Lcom/huawei/hem/y4;->d:Lcom/huawei/hem/o8;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_2
    monitor-exit p2

    move-object v2, v0

    :goto_3
    if-nez v2, :cond_3

    const-string p1, "e"

    const-string p2, "g*s***_se****er_conf*** maybe has a big error"

    .line 14
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 15
    :cond_3
    iput-object v2, p0, Lcom/huawei/hem/q8;->j:Lcom/huawei/hem/o8;

    .line 16
    iget-object p1, v2, Lcom/huawei/hem/o8;->a:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0xa

    if-gt p2, v0, :cond_a

    .line 18
    iget-object p2, v2, Lcom/huawei/hem/o8;->b:Ljava/lang/String;

    .line 19
    iget-object v0, v2, Lcom/huawei/hem/o8;->c:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v2, "e"

    const-string v4, "grs server just support https scheme url,please check."

    invoke-static {v2, v4}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/huawei/hem/q8;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v7}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/huawei/hem/q8;->c()Ljava/lang/String;

    move-result-object v7

    :goto_5
    aput-object v7, v6, v1

    invoke-static {v5, p2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v6, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    const-string v7, "1.0"

    invoke-virtual {v5, v1, v1, v7, v6}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsReqParamJoint(ZZLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {p0}, Lcom/huawei/hem/q8;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    invoke-virtual {v2, v1, v1, v5, v6}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsReqParamJoint(ZZLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v2, p0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    const-string p1, "e"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    aput-object v0, p2, v3

    const-string v0, "request to GRS server url is{%s} and {%s}"

    invoke-static {p1, v0, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "grs_base_url\'s count is larger than MAX value 10"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_6
    const-string p1, "e"

    const-string p2, "maybe grs_base_url config with [],please check."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    return-void

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/c8;",
            ")",
            "Lcom/huawei/hem/r8;"
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v13, v10

    move v12, v11

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v14, 0x1

    const-string v15, "e"

    if-ge v12, v0, :cond_b

    move-object/from16 v8, p2

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v5, v9, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    iget-object v7, v9, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 1
    sget-object v0, Lcom/huawei/hem/k8$a;->c:Lcom/huawei/hem/k8$a;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v3, "2.0"

    const-string v4, "1.0"

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/huawei/hem/k8$a;->c:Lcom/huawei/hem/k8$a;

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v1, Lcom/huawei/hem/k8$a;->b:Lcom/huawei/hem/k8$a;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/huawei/hem/k8$a;->a:Lcom/huawei/hem/k8$a;

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v10

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/huawei/hem/k8$a;->b:Lcom/huawei/hem/k8$a;

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/huawei/hem/k8$a;->c:Lcom/huawei/hem/k8$a;

    goto :goto_2

    .line 7
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Lcom/huawei/hem/k8$a;->b:Lcom/huawei/hem/k8$a;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/huawei/hem/k8$a;->a:Lcom/huawei/hem/k8$a;

    .line 9
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/huawei/hem/t8;

    move-object v1, v0

    move v3, v12

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hem/t8;-><init>(Ljava/lang/String;ILcom/huawei/hem/j8;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/huawei/hem/u8;

    move-object v1, v0

    move v3, v12

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/huawei/hem/u8;-><init>(Ljava/lang/String;ILcom/huawei/hem/j8;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/c8;)V

    :goto_3
    move-object/from16 v1, p1

    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v2, v9, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-wide v2, v9, Lcom/huawei/hem/q8;->l:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/huawei/hem/r8;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {v2}, Lcom/huawei/hem/r8;->d()Z

    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_8

    const-string v0, "grs request return body is not null and is OK."

    :try_start_2
    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v14

    goto :goto_4

    :catch_0
    move-object v13, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v13, v2

    goto :goto_7

    :catch_3
    move-object v13, v2

    goto :goto_8

    :cond_8
    move v0, v11

    :goto_4
    move-object v13, v2

    goto :goto_b

    :catch_4
    :goto_5
    const-string v0, "the wait timed out"

    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :catch_5
    move-exception v0

    :goto_6
    const-string v2, "the current thread was interrupted while waiting"

    invoke-static {v15, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_6
    move-exception v0

    :goto_7
    const-string v2, "the computation threw an ExecutionException"

    invoke-static {v15, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_7
    :goto_8
    const-string v0, "{requestServer} the computation was cancelled"

    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    move v0, v14

    goto :goto_b

    :cond_9
    move-object/from16 v1, p1

    :goto_a
    move v0, v11

    :goto_b
    if-eqz v0, :cond_a

    const-string v0, "needBreak is true so need break current circulation"

    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 11
    :cond_b
    :goto_c
    iget-object v0, v9, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_d
    if-ge v11, v1, :cond_e

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/huawei/hem/r8;->d()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    :try_start_3
    iget-object v0, v9, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/r8;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v13, v0

    goto :goto_f

    :catch_8
    const-string v0, "{checkResponse} when check result, find TimeoutException, cancel current request task"

    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v9, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_f

    :catch_9
    move-exception v0

    const-string v2, "{checkResponse} when check result, find InterruptedException, check others"

    goto :goto_e

    :catch_a
    move-exception v0

    const-string v2, "{checkResponse} when check result, find ExecutionException, check others"

    :goto_e
    invoke-static {v15, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_b
    const-string v0, "{checkResponse} when check result, find CancellationException, check others"

    invoke-static {v15, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_e
    return-object v13
.end method

.method public declared-synchronized b(Lcom/huawei/hem/r8;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/q8;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/huawei/hem/q8;->d:Lcom/huawei/hem/r8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hem/r8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "e"

    const-string v0, "grsResponseResult is ok"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/hem/r8;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "e"

    const-string v3, "GRS server open 503 limiting strategy."

    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v3, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/huawei/hem/y8$a;

    .line 1
    iget-wide v2, p1, Lcom/huawei/hem/r8;->k:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hem/y8$a;-><init>(JJ)V

    invoke-static {v0, v1}, Lcom/huawei/hem/y8;->b(Ljava/lang/String;Lcom/huawei/hem/y8$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/hem/r8;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "e"

    const-string v0, "grsResponseResult has exception so need return"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/huawei/hem/q8;->d:Lcom/huawei/hem/r8;

    iget-object v0, p0, Lcom/huawei/hem/q8;->c:Lcom/huawei/hem/a8;

    iget-object v3, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v4, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/hem/q8;->k:Lcom/huawei/hem/n8;

    invoke-virtual {v0, v3, p1, v4, v5}, Lcom/huawei/hem/a8;->b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/r8;Landroid/content/Context;Lcom/huawei/hem/n8;)V

    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/huawei/hem/q8;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/huawei/hem/r8;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hem/q8;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v3, p1, Lcom/huawei/hem/r8;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "e"

    const-string v3, "future cancel"

    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/hem/q8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/huawei/hem/q8;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/q8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v0, v1}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/b9;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "e"

    const-string v3, "get appName from local assets is{%s}"

    .line 4
    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method
