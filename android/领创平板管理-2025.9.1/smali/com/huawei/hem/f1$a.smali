.class public final Lcom/huawei/hem/f1$a;
.super Lcom/loc/bq;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/f1;->j(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hem/f1$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/f1$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/f1$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/f1$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v2, v1, Lcom/huawei/hem/f1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/f1$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/huawei/hem/f1$e;->c:Lcom/huawei/hem/f1$b;

    iget-object v10, v0, Lcom/huawei/hem/f1$e;->a:Lcom/huawei/hem/k1;

    iget-object v3, v0, Lcom/huawei/hem/f1$e;->b:Ljava/lang/String;

    sget-object v11, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    iget-object v7, v1, Lcom/huawei/hem/f1$a;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/huawei/hem/f1$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/huawei/hem/f1$a;->d:Ljava/lang/String;

    const-string v12, "infocode"

    const-string v13, "info"

    const-string v14, "result"

    const-string v15, "ver"

    const-string v6, "status"

    const-string v5, "lct"

    const-string v4, "lc"

    const-string v1, "at"

    move-object/from16 v16, v2

    .line 3
    new-instance v2, Lcom/huawei/hem/f1$c;

    invoke-direct {v2}, Lcom/huawei/hem/f1$c;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v2, Lcom/huawei/hem/f1$c;->b:Lorg/json/JSONObject;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    :cond_1
    invoke-static {}, Lcom/huawei/hem/f1;->G()V

    const/16 v17, 0x0

    move-object/from16 v18, v14

    :try_start_0
    invoke-static {v10}, Lcom/huawei/hem/f1;->h(Lcom/huawei/hem/k1;)V

    new-instance v0, Lcom/loc/am;

    invoke-direct {v0}, Lcom/loc/am;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v0, :cond_2

    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/huawei/hem/d1; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v3

    :try_start_2
    const-string v3, ";15K;16H;17I;17S;183"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lcom/huawei/hem/d1; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-object/from16 v19, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_1

    :catchall_1
    :goto_0
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object/from16 v3, v19

    move-object v15, v4

    move-object v13, v6

    goto/16 :goto_4

    :goto_1
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object/from16 v3, v19

    move-object v15, v4

    move-object v13, v6

    goto/16 :goto_5

    :cond_2
    :goto_2
    move-object/from16 v19, v3

    :try_start_3
    invoke-static {v11}, Lcom/huawei/hem/f1;->E(Landroid/content/Context;)V

    new-instance v14, Lcom/huawei/hem/f1$d;
    :try_end_3
    .catch Lcom/huawei/hem/d1; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v3, v14

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v4, v11

    move-object/from16 v21, v12

    move-object v12, v5

    move-object v5, v10

    move-object/from16 v22, v13

    move-object v13, v6

    move-object/from16 v6, v19

    :try_start_4
    invoke-direct/range {v3 .. v9}, Lcom/huawei/hem/f1$d;-><init>(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/loc/am;->a(Lcom/loc/ar;)Lcom/loc/as;

    move-result-object v3
    :try_end_4
    .catch Lcom/huawei/hem/d1; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v0, :cond_3

    goto/16 :goto_11

    :cond_3
    if-eqz v3, :cond_4

    :try_start_5
    iget-object v4, v3, Lcom/loc/as;->a:[B
    :try_end_5
    .catch Lcom/huawei/hem/d1; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, v3, Lcom/loc/as;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/huawei/hem/f1$c;->a:J

    if-eqz v10, :cond_5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Lcom/huawei/hem/k1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-wide v5, v2, Lcom/huawei/hem/f1$c;->a:J

    invoke-static {v0, v5, v6}, Lcom/huawei/hem/f1;->w(Ljava/lang/String;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {v0, v1, v12}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v4, v17

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v4, v17

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v4, v17

    goto/16 :goto_c

    :cond_4
    move-object/from16 v4, v17

    :cond_5
    :goto_3
    const/16 v0, 0x10

    new-array v5, v0, [B

    array-length v6, v4

    sub-int/2addr v6, v0

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v4

    sub-int/2addr v8, v0

    invoke-static {v4, v0, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "EQUVT"

    invoke-static {v7}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "CQUVTL0NCQy9QS0NTNVBhZGRpbmc"

    invoke-static {v5}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/huawei/hem/l1;->u()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object v17
    :try_end_7
    .catch Lcom/huawei/hem/d1; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto :goto_6

    :catchall_5
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v13, v6

    move-object/from16 v3, v19

    :goto_4
    move-object/from16 v19, v3

    :catchall_6
    :try_start_8
    new-instance v0, Lcom/huawei/hem/d1;

    const-string v3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v3}, Lcom/huawei/hem/d1;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v13, v6

    move-object/from16 v3, v19

    :goto_5
    move-object/from16 v19, v3

    :goto_6
    throw v0
    :try_end_8
    .catch Lcom/huawei/hem/d1; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catch_a
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v13, v6

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v13, v6

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v20, v15

    move-object v15, v4

    move-object v13, v6

    :goto_7
    move-object/from16 v3, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object v4, v3

    :goto_8
    invoke-static {v0, v1, v15}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    move-object/from16 v3, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object v4, v3

    .line 4
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v10, v0}, Lcom/huawei/hem/f1;->c(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;)V

    goto :goto_d

    :goto_b
    move-object/from16 v3, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object v4, v3

    .line 5
    :goto_c
    invoke-virtual {v0}, Lcom/huawei/hem/d1;->a()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/huawei/hem/d1;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v10, v5}, Lcom/huawei/hem/f1;->c(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;)V

    const-string v5, "/v3/iasdkauth"

    invoke-static {v10, v5, v0}, Lcom/loc/w;->a(Lcom/huawei/hem/k1;Ljava/lang/String;Lcom/huawei/hem/d1;)V

    :goto_d
    move-object/from16 v9, v19

    if-nez v4, :cond_6

    goto/16 :goto_11

    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v4}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object v17

    :cond_7
    move-object/from16 v0, v17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "result is null"

    invoke-static {v11, v10, v4}, Lcom/huawei/hem/f1;->c(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;)V

    :cond_8
    :try_start_9
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_9

    sput v13, Lcom/huawei/hem/f1;->a:I

    goto :goto_f

    :cond_9
    if-nez v0, :cond_d

    const-string v0, "authcsid"

    const-string v4, "authgsid"

    if-eqz v3, :cond_a

    iget-object v0, v3, Lcom/loc/as;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/loc/as;->d:Ljava/lang/String;

    move-object v7, v0

    move-object v6, v3

    goto :goto_e

    :cond_a
    move-object v7, v0

    move-object v6, v4

    :goto_e
    invoke-static {v11, v7, v6, v12}, Lcom/huawei/hem/l1;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v3, 0x0

    sput v3, Lcom/huawei/hem/f1;->a:I

    move-object/from16 v3, v22

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/f1;->b:Ljava/lang/String;

    :cond_b
    const-string v0, ""

    move-object/from16 v3, v21

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    move-object v8, v0

    const-string v4, "/v3/iasdkauth"

    sget-object v5, Lcom/huawei/hem/f1;->b:Ljava/lang/String;

    move-object v3, v10

    invoke-static/range {v3 .. v8}, Lcom/loc/w;->a(Lcom/huawei/hem/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/huawei/hem/f1;->a:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    :goto_f
    move-object/from16 v3, v20

    :try_start_a
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception v0

    :try_start_b
    invoke-static {v0, v1, v15}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_10
    move-object/from16 v3, v18

    invoke-static {v12, v3}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v11, v10, v9, v2, v0}, Lcom/huawei/hem/f1;->e(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;Lcom/huawei/hem/f1$c;Lorg/json/JSONObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :try_start_c
    const-string v1, "15K"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isTargetAble"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "able"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const-string v3, "a3"

    const-string v4, "open_common"

    if-nez v0, :cond_f

    .line 6
    :try_start_d
    sget-object v0, Lcom/huawei/hem/i1$a;->a:Lcom/huawei/hem/i1;

    .line 7
    invoke-static {v11, v4}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0, v3, v13}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_11

    .line 8
    :cond_f
    sget-object v0, Lcom/huawei/hem/i1$a;->a:Lcom/huawei/hem/i1;

    .line 9
    iget-object v5, v0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    if-nez v5, :cond_10

    new-instance v5, Lcom/huawei/hem/i1$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/huawei/hem/i1$b;-><init>(B)V

    iput-object v5, v0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    .line 10
    :cond_10
    invoke-static {v11, v4}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v4, v3, v1}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    .line 12
    iput-boolean v1, v0, Lcom/huawei/hem/i1$b;->b:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_11

    :catchall_a
    move-exception v0

    .line 13
    invoke-static {v0, v1, v15}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catchall_b
    :cond_11
    :goto_11
    if-eqz v16, :cond_12

    move-object/from16 v1, v16

    .line 14
    invoke-interface {v1, v2}, Lcom/huawei/hem/f1$b;->a(Lcom/huawei/hem/f1$c;)V

    :cond_12
    return-void
.end method
