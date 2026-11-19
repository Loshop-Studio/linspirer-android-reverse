.class public Lcom/huawei/hem/i7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/i7$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/content/Context;

.field public h:I

.field public i:Landroid/content/Intent;

.field public j:Lcom/huawei/hem/i7$a;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppGallery Verification"

    iput-object v0, p0, Lcom/huawei/hem/i7;->a:Ljava/lang/String;

    const-string v0, "Huawei CBG Cloud Security Signer"

    iput-object v0, p0, Lcom/huawei/hem/i7;->b:Ljava/lang/String;

    const-string v0, "com.huawei.appgallery.fingerprint_signature"

    iput-object v0, p0, Lcom/huawei/hem/i7;->c:Ljava/lang/String;

    const-string v0, "com.huawei.appgallery.sign_certchain"

    iput-object v0, p0, Lcom/huawei/hem/i7;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/i7;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/i7;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hem/i7;->h:I

    const-string v0, "verify_match_property"

    iput-object v0, p0, Lcom/huawei/hem/i7;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/i7;
    .locals 5

    iget-object v0, p0, Lcom/huawei/hem/i7;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    goto :goto_1

    .line 1
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v3, v2

    move-object v0, v3

    .line 2
    :goto_1
    iget-object p2, p0, Lcom/huawei/hem/i7;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/huawei/hem/i7;->f:Ljava/util/Map;

    iget v0, p0, Lcom/huawei/hem/i7;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 31

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v4, v1, Lcom/huawei/hem/i7;->g:Landroid/content/Context;

    iget-object v5, v1, Lcom/huawei/hem/i7;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/huawei/hem/i7;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/huawei/hem/i7;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, v1, Lcom/huawei/hem/i7;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v7, v1, Lcom/huawei/hem/i7;->k:Ljava/lang/String;

    iget-object v0, v1, Lcom/huawei/hem/i7;->i:Landroid/content/Intent;

    iget-object v8, v1, Lcom/huawei/hem/i7;->j:Lcom/huawei/hem/i7$a;

    iget-object v9, v1, Lcom/huawei/hem/i7;->d:Ljava/lang/String;

    iget-object v10, v1, Lcom/huawei/hem/i7;->c:Ljava/lang/String;

    const-string v11, "skip package "

    .line 3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez v8, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v15, Lcom/huawei/hem/i7$a;->ACTIVITY:Lcom/huawei/hem/i7$a;

    if-ne v8, v15, :cond_1

    invoke-virtual {v12, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v15, Lcom/huawei/hem/i7$a;->BROADCAST:Lcom/huawei/hem/i7$a;

    if-ne v8, v15, :cond_2

    invoke-virtual {v12, v0, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v12, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_3

    goto/16 :goto_3c

    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ""

    const-string v15, "ServiceVerifyKit"

    const/4 v1, 0x1

    if-eqz v13, :cond_4

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v17, v6

    move-object/from16 v16, v14

    goto :goto_3

    :cond_4
    const-string v13, "android.os.SystemProperties"

    .line 6
    :try_start_0
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v14

    const-string v14, "get"

    move-object/from16 v17, v6

    :try_start_1
    new-array v6, v1, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v18, v6, v19

    invoke-virtual {v13, v14, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v13, v1, v19

    invoke-virtual {v6, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-object/from16 v17, v6

    move-object/from16 v16, v14

    :catch_1
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v6, "getSystemProperties Exception while getting system property"

    goto :goto_2

    :catch_2
    move-object/from16 v17, v6

    move-object/from16 v16, v14

    :catch_3
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v6, "getSystemProperties ClassNotFoundException"

    :goto_2
    invoke-virtual {v1, v15, v6}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 7
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    or-int/lit16 v13, v13, 0x80

    or-int/lit8 v13, v13, 0x40

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v14

    .line 8
    sget-object v14, Lcom/huawei/hem/i7$a;->ACTIVITY:Lcom/huawei/hem/i7$a;

    if-eq v8, v14, :cond_6

    sget-object v14, Lcom/huawei/hem/i7$a;->BROADCAST:Lcom/huawei/hem/i7$a;

    if-ne v8, v14, :cond_5

    goto :goto_5

    :cond_5
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_6

    :cond_6
    :goto_5
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_6
    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v8

    .line 9
    :try_start_2
    invoke-virtual {v12, v14, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1e

    move-object/from16 v21, v12

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v12, :cond_7

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for ApplicationInfo is null"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v15, v8}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    goto :goto_4

    :cond_7
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v12, :cond_34

    move/from16 v22, v13

    array-length v13, v12

    if-gtz v13, :cond_8

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object v1, v6

    goto/16 :goto_35

    :cond_8
    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    array-length v13, v12

    if-nez v13, :cond_9

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for sign is empty"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v15, v8}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object v1, v6

    move-object/from16 v13, v17

    goto/16 :goto_37

    :cond_9
    :try_start_3
    const-string v13, "SHA-256"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1d

    .line 10
    new-instance v13, Ljava/lang/String;

    .line 11
    sget-object v23, Lcom/huawei/hem/k7;->b:[C

    move-object/from16 v24, v6

    .line 12
    array-length v6, v12

    move-object/from16 v25, v5

    shl-int/lit8 v5, v6, 0x1

    new-array v5, v5, [C

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v4

    move/from16 v4, v26

    :goto_7
    if-ge v4, v6, :cond_a

    add-int/lit8 v26, v27, 0x1

    move/from16 v29, v6

    aget-byte v6, v12, v4

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v23, v6

    aput-char v6, v5, v27

    add-int/lit8 v27, v26, 0x1

    aget-byte v6, v12, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v23, v6

    aput-char v6, v5, v26

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v29

    goto :goto_7

    .line 13
    :cond_a
    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([C)V

    .line 14
    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 15
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_b

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-static {v11, v14}, Lcom/huawei/hem/f6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " for metadata is null"

    goto :goto_b

    .line 16
    :cond_b
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v5, -0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 17
    :goto_8
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_c

    .line 18
    :cond_e
    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_10

    array-length v4, v0

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v4, :cond_10

    aget-object v8, v0, v6

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_11

    .line 19
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x1

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v13, v17

    goto/16 :goto_33

    :cond_11
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v4, "Legacy is false, packageName is "

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_b
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v13, v17

    goto/16 :goto_34

    .line 20
    :cond_12
    :goto_c
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    goto/16 :goto_31

    :cond_13
    const-string v6, "&"

    invoke-static {v14, v6, v13}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "X509CertUtil"

    .line 21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14

    goto/16 :goto_2e

    .line 22
    :cond_14
    :try_start_4
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v23, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_15

    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v26, v2

    goto :goto_10

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v1, 0x0

    move-object/from16 v26, v2

    :goto_d
    :try_start_6
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    :goto_e
    move-object/from16 v26, v2

    goto :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v23, v1

    goto :goto_e

    :goto_f
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v2, "Failed to getCertChain: "

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_16
    :goto_10
    const-string v1, "X.509"

    if-nez v0, :cond_18

    .line 23
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v2, "base64 CertChain is null."

    invoke-virtual {v0, v12, v2}, Lcom/huawei/hem/m7;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    :cond_17
    move-object/from16 v27, v3

    move/from16 v29, v4

    goto/16 :goto_17

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v27, v3

    goto :goto_12

    :cond_19
    invoke-static {v0}, Lcom/huawei/hem/j7;->a(Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v27, v3

    .line 25
    array-length v3, v0

    if-nez v3, :cond_1a

    :goto_12
    move/from16 v29, v4

    goto :goto_14

    :cond_1a
    :try_start_7
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_8

    move/from16 v29, v4

    :try_start_8
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1b

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    move/from16 v29, v4

    :goto_13
    sget-object v3, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v4, "Failed to get cert: "

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1c

    .line 26
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v3, "Failed to get cert from CertChain"

    invoke-virtual {v0, v12, v3}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_1c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    move-object/from16 v3, v27

    move/from16 v4, v29

    goto :goto_11

    .line 27
    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "certChain is empty"

    const/4 v2, 0x1

    goto/16 :goto_25

    :cond_1d
    const-string v3, "close stream failed"

    .line 28
    :try_start_9
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "ag_sdk_cbg_root.cer"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_1f

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_1a

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_2c

    :catch_9
    const/4 v4, 0x0

    :catch_a
    :try_start_c
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "CertificateException"

    invoke-virtual {v0, v12, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1e

    goto :goto_18

    :catch_b
    const/4 v4, 0x0

    :catch_c
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "can not open cbg root cer"

    invoke-virtual {v0, v12, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1e

    goto :goto_18

    :catch_d
    const/4 v4, 0x0

    :catch_e
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "can not found cbg root cer"

    invoke-virtual {v0, v12, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_1e

    :goto_18
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    goto :goto_19

    :catch_f
    const/4 v0, 0x0

    :catch_10
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-virtual {v1, v12, v3}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_1e
    :goto_19
    const/4 v0, 0x0

    .line 29
    :cond_1f
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1b

    :cond_20
    if-nez v0, :cond_21

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "rootCert is null,verify failed "

    invoke-virtual {v0, v12, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const/4 v0, 0x1

    goto/16 :goto_23

    :cond_21
    :try_start_e
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_e
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_e .. :try_end_e} :catch_16

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1c
    if-ltz v1, :cond_22

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_25

    :try_start_f
    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/security/NoSuchProviderException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_11

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :catch_11
    move-exception v0

    goto :goto_1d

    :catch_12
    move-exception v0

    goto :goto_1d

    :catch_13
    move-exception v0

    goto :goto_1d

    :catch_14
    move-exception v0

    goto :goto_1d

    :catch_15
    move-exception v0

    :goto_1d
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v4, "verify failed "

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move/from16 v30, v3

    move-object v3, v1

    move/from16 v1, v30

    goto :goto_22

    :cond_22
    move v0, v3

    .line 30
    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_23

    goto :goto_1f

    .line 31
    :cond_23
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v4

    const/4 v13, -0x1

    if-ne v4, v13, :cond_24

    :goto_1f
    const/4 v1, 0x0

    goto :goto_20

    :cond_24
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v1

    const/4 v4, 0x5

    aget-boolean v1, v1, v4

    :goto_20
    if-nez v1, :cond_26

    :cond_25
    move v0, v3

    goto :goto_23

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_27
    move v0, v3

    goto :goto_24

    :catch_16
    move-exception v0

    goto :goto_21

    :catch_17
    move-exception v0

    :goto_21
    const/4 v1, 0x1

    .line 32
    sget-object v3, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v4, "verifyCertChain Exception:"

    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_23
    const/4 v3, 0x0

    move/from16 v30, v3

    move v3, v0

    move/from16 v0, v30

    :goto_24
    if-nez v0, :cond_28

    .line 33
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "failed to verify cert chain"

    move v2, v3

    :goto_25
    move v3, v2

    :goto_26
    move-object/from16 v13, v17

    goto/16 :goto_2f

    :cond_28
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    const-string v0, "CN"

    move-object/from16 v2, v25

    .line 34
    invoke-static {v1, v0, v2}, Lcom/huawei/hem/y4;->i(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 35
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "CN is invalid"

    move-object/from16 v25, v2

    goto :goto_26

    :cond_29
    const-string v0, "OU"

    move-object/from16 v13, v17

    .line 36
    invoke-static {v1, v0, v13}, Lcom/huawei/hem/y4;->i(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 37
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "OU is invalid"

    move-object/from16 v25, v2

    goto/16 :goto_2f

    :cond_2a
    :try_start_10
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_18

    move-object/from16 v25, v2

    goto :goto_27

    :catch_18
    move-exception v0

    sget-object v4, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    move-object/from16 v25, v2

    const-string v2, "checkCertChain UnsupportedEncodingException:"

    invoke-virtual {v4, v15, v2, v0}, Lcom/huawei/hem/m7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_27
    invoke-static {v8}, Lcom/huawei/hem/j7;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    .line 38
    array-length v4, v2

    if-nez v4, :cond_2b

    goto :goto_29

    :cond_2b
    :try_start_11
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v4, v0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v4, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_11} :catch_1b
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_11} :catch_19

    goto :goto_2b

    :catch_19
    move-exception v0

    goto :goto_28

    :catch_1a
    move-exception v0

    goto :goto_28

    :catch_1b
    move-exception v0

    :goto_28
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v2, "failed checkSignature,Exception:"

    invoke-virtual {v1, v12, v2, v0}, Lcom/huawei/hem/m7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    :cond_2c
    :goto_29
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "checkSignature parameter is null"

    invoke-virtual {v0, v12, v1}, Lcom/huawei/hem/m7;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    if-nez v0, :cond_2d

    .line 39
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "signature is invalid: "

    invoke-static {v1, v6}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    move v0, v3

    goto :goto_30

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_2c
    if-eqz v1, :cond_2e

    .line 40
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1c

    goto :goto_2d

    :catch_1c
    sget-object v1, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-virtual {v1, v12, v3}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2d
    throw v0

    :cond_2f
    :goto_2e
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v29, v4

    move-object/from16 v13, v17

    const/4 v3, 0x1

    .line 41
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "args is invalid"

    :goto_2f
    invoke-virtual {v0, v15, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move/from16 v30, v3

    move v3, v0

    move/from16 v0, v30

    :goto_30
    if-nez v3, :cond_31

    .line 42
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, "checkSinger failed"

    goto :goto_32

    :cond_30
    :goto_31
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v29, v4

    move-object/from16 v13, v17

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    const-string v1, " for no signer or no certChain"

    invoke-static {v11, v14, v1}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v0, v15, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_31
    if-nez v0, :cond_32

    .line 43
    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSinger failed, packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_34

    :cond_32
    move/from16 v0, v18

    move/from16 v4, v29

    :goto_33
    new-instance v1, Lcom/huawei/hem/h7;

    invoke-direct {v1, v14, v4, v0, v5}, Lcom/huawei/hem/h7;-><init>(Ljava/lang/String;III)V

    move/from16 v18, v0

    move-object v0, v1

    :goto_34
    if-nez v0, :cond_33

    move-object/from16 v1, v24

    goto :goto_37

    :cond_33
    move-object/from16 v1, v24

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :catch_1d
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object v1, v6

    move-object/from16 v13, v17

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-static {v11, v14}, Lcom/huawei/hem/f6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for AlgorithmException"

    goto :goto_36

    :cond_34
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object v1, v6

    move/from16 v22, v13

    :goto_35
    move-object/from16 v13, v17

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-static {v11, v14}, Lcom/huawei/hem/f6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for no sign"

    goto :goto_36

    :catch_1e
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object v1, v6

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v13, v17

    sget-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    invoke-static {v11, v14}, Lcom/huawei/hem/f6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for PackageInfo is null"

    :goto_36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/huawei/hem/m7;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    move-object v6, v1

    move-object/from16 v17, v13

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v1, v23

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto/16 :goto_4

    :cond_35
    move-object v1, v6

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/h7;

    .line 46
    iget v4, v3, Lcom/huawei/hem/h7;->d:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_36

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    move-object v6, v0

    goto :goto_39

    :cond_38
    move-object v6, v1

    .line 48
    :goto_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/h7;

    .line 49
    iget v3, v2, Lcom/huawei/hem/h7;->c:I

    if-nez v3, :cond_39

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    move-object v6, v0

    .line 51
    :cond_3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v13, v16

    :cond_3c
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/h7;

    .line 52
    iget v3, v2, Lcom/huawei/hem/h7;->b:I

    if-lt v3, v1, :cond_3c

    .line 53
    iget-object v13, v2, Lcom/huawei/hem/h7;->a:Ljava/lang/String;

    move v1, v3

    goto :goto_3b

    :cond_3d
    move-object/from16 v13, v16

    :cond_3e
    :goto_3c
    return-object v13
.end method
