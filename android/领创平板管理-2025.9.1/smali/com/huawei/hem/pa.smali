.class public Lcom/huawei/hem/pa;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/pa;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/huawei/hem/pa;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/pa;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/pa;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit16 v1, v1, 0x1f4

    const/4 v9, 0x1

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_4a

    mul-int/lit16 v1, v12, 0x1f4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit16 v3, v1, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v13, p1

    invoke-interface {v13, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2
    iget v5, v5, Lcom/huawei/hem/ea;->l:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    :goto_1
    int-to-long v14, v5

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v9, "hmsSdk"

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/la;

    .line 4
    iget-object v11, v5, Lcom/huawei/hem/la;->d:Ljava/lang/String;

    .line 5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v18, v2, v18

    cmp-long v9, v18, v14

    if-lez v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    :catch_0
    const-string v11, "isTimeExpired(): Data type conversion error : number format !"

    invoke-static {v9, v11}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    if-nez v9, :cond_4

    .line 6
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_49

    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/huawei/hem/pa;->d:Ljava/lang/String;

    .line 7
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 8
    iget-object v2, v2, Lcom/huawei/hem/ea;->d:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v2, v4

    .line 9
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "diffprivacy"

    const-string v14, "maint"

    const-string v15, "oper"

    move/from16 v18, v10

    const/4 v10, 0x2

    if-eqz v3, :cond_7

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "No report address,TAG : %s,TYPE: %s "

    invoke-static {v9, v3, v2}, Lcom/huawei/hem/xa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_8

    :cond_7
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "{url}/common/hmshioperqrt"

    goto :goto_6

    :cond_8
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "{url}/common/hmshimaintqrt"

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "{url}/common/common2"

    :goto_6
    const-string v10, "{url}"

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    move-object v2, v4

    :goto_7
    move-object v3, v2

    .line 10
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v10, "preins"

    if-eqz v2, :cond_b

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v1, "collectUrl is empty"

    move/from16 v20, v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2f

    :cond_b
    const-string v2, "_hms_config_tag"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "_openness_config_tag"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 11
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v2

    const-string v11, "backup_event"

    const/high16 v13, 0x500000

    invoke-static {v2, v11, v13}, Lcom/huawei/hem/l9;->t(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "backup file reach max limited size, discard new event "

    invoke-static {v9, v2}, Lcom/huawei/hem/xa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 12
    :cond_c
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/huawei/hem/la;

    move-object/from16 v21, v13

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/hem/la;->c()Lorg/json/JSONObject;

    move-result-object v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_a
    move-object/from16 v13, v21

    goto :goto_9

    :catch_1
    const-string v13, "handleEvents: json error,Abandon this data"

    invoke-static {v9, v13}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 13
    :cond_d
    invoke-static {v8, v0, v6}, Lcom/huawei/hem/l9;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move/from16 v20, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string v3, "Update data cached into backup,spKey: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v11, v13, v2}, Lcom/huawei/hem/l9;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    :goto_b
    move-object/from16 v21, v3

    move/from16 v20, v12

    :goto_c
    const-string v2, "generate UploadData"

    .line 14
    invoke-static {v9, v2}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "generate UploadData EventModelHandlerBase"

    .line 15
    invoke-static {v9, v2}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v2, Lcom/huawei/hem/ua;->b:Lcom/huawei/hem/ua;

    .line 17
    iget-object v3, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    iget-wide v11, v3, Lcom/huawei/hem/ua$a;->d:J

    const-wide/16 v22, 0x0

    cmp-long v3, v11, v22

    if-nez v3, :cond_10

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 19
    :try_start_2
    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v13, "hianalytics_njjn"

    invoke-virtual {v3, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Lcom/huawei/hem/l9;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_d

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_f

    :catch_2
    const/4 v3, 0x0

    :catch_3
    :try_start_4
    const-string v13, "read pubKey error,the file is corrupted"

    invoke-static {v9, v13}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x0

    :goto_d
    invoke-static {v3}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    .line 20
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v2, "get rsa pubkey config error"

    invoke-static {v9, v2}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v7

    goto :goto_e

    :cond_f
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v7

    invoke-static {v13, v3}, Lcom/huawei/hem/l9;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    .line 21
    iget-object v2, v2, Lcom/huawei/hem/ua$a;->e:Lcom/huawei/hem/ua;

    .line 22
    iget-object v2, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    .line 23
    iput-object v13, v2, Lcom/huawei/hem/ua$a;->a:Ljava/lang/String;

    .line 24
    iput-wide v11, v2, Lcom/huawei/hem/ua$a;->d:J

    .line 25
    iput-object v3, v2, Lcom/huawei/hem/ua$a;->b:Ljava/lang/String;

    .line 26
    iput-object v7, v2, Lcom/huawei/hem/ua$a;->c:Ljava/lang/String;

    :goto_e
    move-object v7, v4

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v13, v3

    .line 27
    :goto_f
    invoke-static {v13}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    throw v0

    :cond_10
    move-object/from16 v24, v7

    move-object v7, v4

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v11, v3, v11

    const-wide/32 v25, 0x2932e00

    cmp-long v11, v11, v25

    if-lez v11, :cond_11

    iget-object v11, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    iget-object v11, v11, Lcom/huawei/hem/ua$a;->a:Ljava/lang/String;

    const/16 v12, 0x10

    invoke-static {v12}, Lcom/huawei/hem/eb;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/hem/l9;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    .line 29
    iget-object v2, v2, Lcom/huawei/hem/ua$a;->e:Lcom/huawei/hem/ua;

    .line 30
    iget-object v2, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    .line 31
    iput-wide v3, v2, Lcom/huawei/hem/ua$a;->d:J

    .line 32
    iput-object v12, v2, Lcom/huawei/hem/ua$a;->b:Ljava/lang/String;

    .line 33
    iput-object v11, v2, Lcom/huawei/hem/ua$a;->c:Ljava/lang/String;

    .line 34
    :cond_11
    :goto_10
    sget-object v2, Lcom/huawei/hem/ua;->b:Lcom/huawei/hem/ua;

    .line 35
    iget-object v2, v2, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    iget-object v2, v2, Lcom/huawei/hem/ua$a;->c:Ljava/lang/String;

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "event chifer is empty"

    invoke-static {v9, v2}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_11

    :cond_12
    new-instance v2, Lcom/huawei/hem/ma;

    .line 37
    sget-object v3, Lcom/huawei/hem/ua;->b:Lcom/huawei/hem/ua;

    .line 38
    iget-object v3, v3, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    iget-object v3, v3, Lcom/huawei/hem/ua$a;->b:Ljava/lang/String;

    .line 39
    invoke-direct {v2, v3}, Lcom/huawei/hem/ma;-><init>(Ljava/lang/String;)V

    :goto_11
    if-nez v2, :cond_13

    move-object/from16 v22, v6

    move-object/from16 v7, v24

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2b

    .line 40
    :cond_13
    sget-object v3, Lcom/huawei/hem/ua;->b:Lcom/huawei/hem/ua;

    .line 41
    iget-object v3, v3, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    iget-object v3, v3, Lcom/huawei/hem/ua$a;->c:Ljava/lang/String;

    .line 42
    new-instance v4, Lcom/huawei/hem/n9;

    invoke-direct {v4}, Lcom/huawei/hem/n9;-><init>()V

    .line 43
    iput-object v3, v4, Lcom/huawei/hem/n9;->f:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/huawei/hem/y4;->p()Ljava/lang/String;

    move-result-object v3

    .line 45
    iput-object v3, v4, Lcom/huawei/hem/n9;->a:Ljava/lang/String;

    .line 46
    iput-object v8, v4, Lcom/huawei/hem/n9;->c:Ljava/lang/String;

    .line 47
    iput-object v6, v4, Lcom/huawei/hem/n9;->e:Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v11, "hmshi"

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "qrt"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    iput-object v3, v4, Lcom/huawei/hem/n9;->d:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v3

    .line 51
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 52
    iget-boolean v11, v11, Lcom/huawei/hem/ea;->m:Z

    goto :goto_12

    :cond_14
    const/4 v11, 0x1

    .line 53
    :goto_12
    invoke-virtual {v3, v11}, Lcom/huawei/hem/va;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    invoke-static {}, Lcom/huawei/hem/y4;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 54
    iput-object v6, v4, Lcom/huawei/hem/n9;->b:Ljava/lang/String;

    .line 55
    iput-object v3, v4, Lcom/huawei/hem/n9;->g:Ljava/lang/String;

    .line 56
    iput-object v4, v2, Lcom/huawei/hem/ma;->b:Lcom/huawei/hem/n9;

    .line 57
    new-instance v3, Lcom/huawei/hem/k9;

    invoke-direct {v3}, Lcom/huawei/hem/k9;-><init>()V

    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 58
    invoke-static {v8, v0}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    goto :goto_13

    :cond_15
    move-object v4, v7

    .line 59
    :goto_13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 60
    invoke-static {v8, v0}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    goto :goto_14

    :cond_16
    const-string v4, "getAndroidId(): to getConfigByType()"

    .line 61
    invoke-static {v9, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v8, v0}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    :cond_17
    move-object v4, v7

    .line 63
    :goto_14
    iput-object v4, v3, Lcom/huawei/hem/k9;->a:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v4

    .line 65
    new-instance v6, Lcom/huawei/hem/va$a;

    invoke-direct {v6, v8, v0}, Lcom/huawei/hem/va$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    .line 66
    iget-object v11, v6, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v12, v6, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 67
    invoke-static {v11, v12}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v11

    if-eqz v11, :cond_18

    const/4 v11, 0x0

    goto :goto_15

    :cond_18
    move-object v11, v7

    .line 68
    :goto_15
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v11}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_19

    .line 69
    :cond_19
    iget-object v11, v6, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v12, v6, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 70
    invoke-static {v11, v12}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v11

    if-eqz v11, :cond_1a

    const/4 v11, 0x0

    goto :goto_16

    :cond_1a
    move-object v11, v7

    .line 71
    :goto_16
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1b

    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->a:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v11}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_19

    .line 72
    :cond_1b
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v11

    .line 73
    iget-object v11, v11, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 74
    iget-object v12, v11, Lcom/huawei/hem/ga;->a:Ljava/lang/String;

    .line 75
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-static {}, Lcom/huawei/hem/l9;->d()Ljava/lang/String;

    move-result-object v12

    .line 76
    iput-object v12, v11, Lcom/huawei/hem/ga;->a:Ljava/lang/String;

    .line 77
    :cond_1c
    iget-object v11, v11, Lcom/huawei/hem/ga;->a:Ljava/lang/String;

    .line 78
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    .line 79
    iget-object v12, v6, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v13, v6, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 80
    invoke-static {v12, v13}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v12

    if-eqz v12, :cond_1d

    const/4 v12, 0x0

    goto :goto_17

    :cond_1d
    move-object v12, v7

    .line 81
    :goto_17
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1f

    new-instance v4, Lcom/huawei/hem/ra;

    if-eqz v11, :cond_1e

    sget-object v6, Lcom/huawei/hem/sa;->c:Lcom/huawei/hem/sa;

    goto :goto_18

    :cond_1e
    sget-object v6, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    .line 82
    invoke-static {v12}, Lcom/huawei/hem/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    :goto_18
    invoke-direct {v4, v6, v12}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    :goto_19
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    goto/16 :goto_1e

    :cond_1f
    invoke-virtual {v6}, Lcom/huawei/hem/wa;->c()I

    move-result v12

    if-eqz v11, :cond_25

    if-eqz v12, :cond_21

    .line 84
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v11

    .line 85
    iget-object v11, v11, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 86
    iget-object v13, v11, Lcom/huawei/hem/ga;->c:Ljava/lang/String;

    .line 87
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_20

    const-string v13, "com.huawei.android.os.BuildEx"

    .line 88
    :try_start_5
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Landroid/util/AndroidRuntimeException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v25, v7

    const-string v7, "getUDID"

    move-object/from16 v27, v5

    move-object/from16 v26, v10

    const/4 v10, 0x0

    :try_start_6
    new-array v5, v10, [Ljava/lang/Class;

    invoke-virtual {v13, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Landroid/util/AndroidRuntimeException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    const-string v7, "getUDID success"

    invoke-static {v9, v7}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Landroid/util/AndroidRuntimeException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1b

    :catch_4
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_5
    move-object/from16 v5, v25

    :catch_6
    const-string v7, "getUDID method invoke failed : InvocationTargetException"

    goto :goto_1a

    :catch_7
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_8
    move-object/from16 v5, v25

    :catch_9
    const-string v7, "getUDID method invoke failed : Illegal ArgumentException"

    goto :goto_1a

    :catch_a
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_b
    move-object/from16 v5, v25

    :catch_c
    const-string v7, "getUDID method invoke failed : Illegal AccessException"

    goto :goto_1a

    :catch_d
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_e
    move-object/from16 v5, v25

    :catch_f
    const-string v7, "getUDID method invoke failed : NoSuchMethodException"

    goto :goto_1a

    :catch_10
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_11
    move-object/from16 v5, v25

    :catch_12
    const-string v7, "getUDID getudid failed, RuntimeException is AndroidRuntimeException"

    goto :goto_1a

    :catch_13
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    :catch_14
    move-object/from16 v5, v25

    :catch_15
    const-string v7, "getUDID method invoke failed"

    :goto_1a
    invoke-static {v9, v7}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_1b
    iput-object v5, v11, Lcom/huawei/hem/ga;->c:Ljava/lang/String;

    goto :goto_1c

    :cond_20
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    .line 90
    :goto_1c
    iget-object v5, v11, Lcom/huawei/hem/ga;->c:Ljava/lang/String;

    .line 91
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22

    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v5}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_21
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    move-object/from16 v5, v25

    :cond_22
    and-int/lit8 v7, v12, 0x2

    if-eqz v7, :cond_23

    invoke-virtual {v6, v4}, Lcom/huawei/hem/wa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->a:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v5}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_1e

    :cond_23
    and-int/lit8 v7, v12, 0x1

    if-eqz v7, :cond_24

    invoke-virtual {v6, v4}, Lcom/huawei/hem/wa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->c:Lcom/huawei/hem/sa;

    invoke-direct {v5, v6, v4}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_1d

    :cond_24
    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->d:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v5}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_1e

    :cond_25
    move-object/from16 v27, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_26

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_26

    .line 92
    new-instance v5, Lcom/huawei/hem/ra;

    sget-object v7, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    invoke-virtual {v6, v4}, Lcom/huawei/hem/wa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Lcom/huawei/hem/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-direct {v5, v7, v4}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    :goto_1d
    move-object v4, v5

    goto :goto_1e

    :cond_26
    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_27

    invoke-virtual {v6, v4}, Lcom/huawei/hem/wa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->c:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v5}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_1e

    :cond_27
    move-object/from16 v5, v25

    :cond_28
    and-int/lit8 v7, v12, 0x2

    if-eqz v7, :cond_29

    invoke-virtual {v6, v4}, Lcom/huawei/hem/wa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->a:Lcom/huawei/hem/sa;

    invoke-direct {v5, v6, v4}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    goto :goto_1d

    :cond_29
    new-instance v4, Lcom/huawei/hem/ra;

    sget-object v6, Lcom/huawei/hem/sa;->d:Lcom/huawei/hem/sa;

    invoke-direct {v4, v6, v5}, Lcom/huawei/hem/ra;-><init>(Lcom/huawei/hem/sa;Ljava/lang/String;)V

    .line 95
    :goto_1e
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v5

    .line 96
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v6

    if-eqz v6, :cond_2a

    .line 97
    iget-boolean v6, v6, Lcom/huawei/hem/ea;->m:Z

    goto :goto_1f

    :cond_2a
    const/4 v6, 0x1

    .line 98
    :goto_1f
    invoke-virtual {v5, v6}, Lcom/huawei/hem/va;->b(Z)Ljava/lang/String;

    move-result-object v5

    .line 99
    iput-object v5, v3, Lcom/huawei/hem/k9;->f:Ljava/lang/String;

    .line 100
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 101
    iget-object v5, v5, Lcom/huawei/hem/ea;->j:Ljava/lang/String;

    goto :goto_20

    :cond_2b
    move-object/from16 v5, v25

    .line 102
    :goto_20
    iput-object v5, v3, Lcom/huawei/hem/k9;->e:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 104
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 105
    iget-object v5, v5, Lcom/huawei/hem/ea;->e:Ljava/lang/String;

    goto :goto_21

    :cond_2c
    move-object/from16 v5, v25

    .line 106
    :goto_21
    iput-object v5, v3, Lcom/huawei/hem/k9;->g:Ljava/lang/String;

    .line 107
    iget-object v5, v4, Lcom/huawei/hem/ra;->a:Lcom/huawei/hem/sa;

    .line 108
    sget-object v6, Lcom/huawei/hem/i9;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x3

    const/4 v10, 0x1

    if-eq v5, v10, :cond_2f

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    if-eq v5, v6, :cond_2d

    goto :goto_22

    .line 109
    :cond_2d
    iget-object v4, v4, Lcom/huawei/hem/ra;->b:Ljava/lang/String;

    .line 110
    iput-object v4, v3, Lcom/huawei/hem/k9;->d:Ljava/lang/String;

    goto :goto_22

    .line 111
    :cond_2e
    iget-object v4, v4, Lcom/huawei/hem/ra;->b:Ljava/lang/String;

    .line 112
    iput-object v4, v3, Lcom/huawei/hem/k9;->b:Ljava/lang/String;

    goto :goto_22

    .line 113
    :cond_2f
    iget-object v4, v4, Lcom/huawei/hem/ra;->b:Ljava/lang/String;

    .line 114
    iput-object v4, v3, Lcom/huawei/hem/k9;->c:Ljava/lang/String;

    .line 115
    :goto_22
    iput-object v3, v2, Lcom/huawei/hem/ma;->d:Lcom/huawei/hem/na;

    .line 116
    new-instance v3, Lcom/huawei/hem/q9;

    invoke-direct {v3}, Lcom/huawei/hem/q9;-><init>()V

    .line 117
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v4

    .line 118
    iget-object v4, v4, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 119
    iget-object v4, v4, Lcom/huawei/hem/ga;->a:Ljava/lang/String;

    .line 120
    iput-object v4, v3, Lcom/huawei/hem/q9;->a:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v4

    .line 122
    iget-object v4, v4, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 123
    iget-object v4, v4, Lcom/huawei/hem/ga;->e:Ljava/lang/String;

    .line 124
    iput-object v4, v3, Lcom/huawei/hem/q9;->b:Ljava/lang/String;

    .line 125
    iput-object v1, v3, Lcom/huawei/hem/q9;->c:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v1

    .line 127
    iget-object v1, v1, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    .line 128
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_23

    :cond_30
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_23

    :cond_31
    move-object/from16 v4, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_23

    :cond_32
    move-object/from16 v4, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :goto_23
    invoke-static {v1, v8, v0}, Lcom/huawei/hem/l9;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannel(): Invalid type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v25

    .line 129
    :goto_24
    iput-object v1, v3, Lcom/huawei/hem/q9;->d:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 131
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/huawei/hem/z9;->a(Ljava/lang/String;)Lcom/huawei/hem/ja;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual {v4, v0}, Lcom/huawei/hem/ja;->a(Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 132
    iget-boolean v4, v4, Lcom/huawei/hem/ea;->a:Z

    goto :goto_25

    :cond_34
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_3d

    .line 133
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v4

    .line 134
    iget-object v4, v4, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 135
    iget-object v4, v4, Lcom/huawei/hem/ga;->j:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v5

    .line 137
    iget-object v5, v5, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 138
    iget-object v5, v5, Lcom/huawei/hem/ga;->k:Ljava/lang/String;

    .line 139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_36

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_26

    :cond_35
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, v25

    goto/16 :goto_29

    :cond_36
    :goto_26
    iget-object v1, v1, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 140
    invoke-static {v1, v4}, Lcom/huawei/hem/l9;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v1, "getMccAndMnc() Pair value is empty"

    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v4, v25

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_37
    move-object/from16 v4, v25

    const-string v5, "phone"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_38

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_38
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_39

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_39
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-string v5, "null"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_27

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3b

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v5

    goto :goto_28

    :cond_3b
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_3c
    :goto_27
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :goto_28
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v5

    .line 142
    iget-object v5, v5, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 143
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 144
    iput-object v6, v5, Lcom/huawei/hem/ga;->j:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v5

    .line 146
    iget-object v5, v5, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 147
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 148
    iput-object v6, v5, Lcom/huawei/hem/ga;->k:Ljava/lang/String;

    goto :goto_29

    :cond_3d
    move-object/from16 v4, v25

    .line 149
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :goto_29
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 151
    iput-object v5, v3, Lcom/huawei/hem/q9;->f:Ljava/lang/String;

    .line 152
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 153
    iput-object v1, v3, Lcom/huawei/hem/q9;->g:Ljava/lang/String;

    const-string v1, "com.huawei.android.os.SystemPropertiesEx"

    const-string v5, "ro.huawei.build.display.id"

    .line 154
    invoke-static {v1, v5, v4}, Lcom/huawei/hem/l9;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemPropertiesEx: get rom_ver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemProperties: get rom_ver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_3e
    iput-object v1, v3, Lcom/huawei/hem/q9;->h:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 157
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 158
    iget-object v1, v1, Lcom/huawei/hem/ea;->f:Ljava/lang/String;

    goto :goto_2a

    :cond_3f
    move-object v1, v4

    .line 159
    :goto_2a
    iput-object v1, v3, Lcom/huawei/hem/q9;->e:Ljava/lang/String;

    .line 160
    iput-object v3, v2, Lcom/huawei/hem/ma;->c:Lcom/huawei/hem/q9;

    .line 161
    invoke-static {v8, v0}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 162
    iget-object v4, v1, Lcom/huawei/hem/ea;->h:Ljava/lang/String;

    :cond_40
    if-eqz v4, :cond_41

    .line 163
    iput-object v4, v2, Lcom/huawei/hem/ma;->e:Ljava/lang/String;

    :cond_41
    move-object/from16 v7, v24

    .line 164
    iput-object v7, v2, Lcom/huawei/hem/ma;->a:Ljava/util/List;

    move-object v13, v2

    :goto_2b
    if-eqz v13, :cond_44

    .line 165
    :try_start_8
    invoke-virtual {v13}, Lcom/huawei/hem/ma;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_42

    const-string v1, "uploadEvents is null"

    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [B

    :goto_2c
    const/4 v11, 0x0

    goto :goto_2e

    :cond_42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/l9;->w([B)[B

    move-result-object v1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_16

    move-object v2, v1

    goto :goto_2c

    :catch_16
    const-string v1, "sendData(): getBytes - Unsupported coding format!!"

    goto :goto_2d

    :catch_17
    const-string v1, "uploadEvents to json error"

    :goto_2d
    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    new-array v1, v11, [B

    move-object v2, v1

    .line 166
    :goto_2e
    array-length v1, v2

    if-nez v1, :cond_43

    const-string v1, "request body is empty"

    :goto_2f
    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_43
    new-instance v9, Lcom/huawei/hem/x9;

    move-object v1, v9

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hem/x9;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 167
    sget-object v1, Lcom/huawei/hem/ka;->c:Lcom/huawei/hem/ka;

    goto :goto_30

    :cond_44
    const/4 v11, 0x0

    .line 168
    new-instance v9, Lcom/huawei/hem/fa;

    move-object/from16 v1, v22

    invoke-direct {v9, v7, v8, v1, v0}, Lcom/huawei/hem/fa;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/huawei/hem/ka;->b:Lcom/huawei/hem/ka;

    .line 170
    :goto_30
    invoke-virtual {v1, v9}, Lcom/huawei/hem/ka;->a(Lcom/huawei/hem/ha;)V

    goto :goto_31

    :cond_45
    const/4 v1, 0x0

    .line 171
    throw v1

    :cond_46
    const/4 v1, 0x0

    .line 172
    throw v1

    :cond_47
    const/4 v1, 0x0

    .line 173
    throw v1

    :cond_48
    const/4 v1, 0x0

    .line 174
    throw v1

    :cond_49
    move/from16 v18, v10

    move/from16 v20, v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v1, "No data to report handler"

    .line 175
    invoke-static {v9, v1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    add-int/lit8 v12, v20, 0x1

    move v9, v10

    move/from16 v10, v18

    goto/16 :goto_0

    :cond_4a
    return-void
.end method
