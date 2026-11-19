.class public Lcom/huawei/hem/lb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/lb;->a:Ljava/util/regex/Pattern;

    const-string v1, "ac"

    const-string v2, "co"

    const-string v3, "com"

    const-string v4, "ed"

    const-string v5, "edu"

    const-string v6, "go"

    const-string v7, "gouv"

    const-string v8, "gov"

    const-string v9, "info"

    const-string v10, "lg"

    const-string v11, "ne"

    const-string v12, "net"

    const-string v13, "or"

    const-string v14, "org"

    .line 2
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/lb;->b:[Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/huawei/hem/kb;

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hem/kb;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/huawei/hem/kb;->c:I

    .line 4
    iput v2, v0, Lcom/huawei/hem/kb;->d:I

    .line 5
    iput v2, v0, Lcom/huawei/hem/kb;->e:I

    .line 6
    iput v2, v0, Lcom/huawei/hem/kb;->f:I

    .line 7
    iget-object v2, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/kb;->g:[C

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/huawei/hem/kb;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v3, :cond_0

    goto/16 :goto_c

    .line 10
    :cond_0
    :goto_0
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-ge v6, v7, :cond_1e

    .line 11
    iget-object v8, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v8, v6

    const/16 v9, 0x5c

    const-string v10, "Unexpected end of DN: "

    const/16 v11, 0x22

    const/16 v12, 0x20

    const/16 v13, 0x3b

    const/16 v14, 0x2c

    const/16 v15, 0x2b

    if-eq v8, v11, :cond_12

    const/16 v11, 0x23

    if-eq v8, v11, :cond_9

    if-eq v8, v15, :cond_8

    if-eq v8, v14, :cond_8

    if-eq v8, v13, :cond_8

    .line 12
    iput v6, v0, Lcom/huawei/hem/kb;->d:I

    .line 13
    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    .line 14
    :cond_1
    :goto_1
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-lt v6, v7, :cond_2

    .line 15
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    iget v8, v0, Lcom/huawei/hem/kb;->d:I

    iget v9, v0, Lcom/huawei/hem/kb;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    .line 16
    :cond_2
    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v12, :cond_5

    if-eq v8, v13, :cond_4

    if-eq v8, v9, :cond_3

    if-eq v8, v15, :cond_4

    if-eq v8, v14, :cond_4

    .line 17
    iget v8, v0, Lcom/huawei/hem/kb;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/huawei/hem/kb;->e:I

    aget-char v10, v7, v6

    aput-char v10, v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 18
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_1

    .line 19
    :cond_3
    iget v6, v0, Lcom/huawei/hem/kb;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/huawei/hem/kb;->e:I

    invoke-virtual {v0}, Lcom/huawei/hem/kb;->b()C

    move-result v8

    aput-char v8, v7, v6

    .line 20
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_1

    .line 21
    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    iget v8, v0, Lcom/huawei/hem/kb;->d:I

    iget v9, v0, Lcom/huawei/hem/kb;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    .line 22
    :cond_5
    iget v8, v0, Lcom/huawei/hem/kb;->e:I

    iput v8, v0, Lcom/huawei/hem/kb;->f:I

    add-int/lit8 v6, v6, 0x1

    .line 23
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    add-int/lit8 v6, v8, 0x1

    .line 24
    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    aput-char v12, v7, v8

    .line 25
    :goto_2
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-ge v6, v7, :cond_6

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v7, v6

    if-ne v8, v12, :cond_6

    .line 26
    iget v8, v0, Lcom/huawei/hem/kb;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/huawei/hem/kb;->e:I

    aput-char v12, v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 27
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_2

    .line 28
    :cond_6
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-eq v6, v7, :cond_7

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_7

    aget-char v8, v7, v6

    if-eq v8, v15, :cond_7

    aget-char v6, v7, v6

    if-ne v6, v13, :cond_1

    .line 29
    :cond_7
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    iget v8, v0, Lcom/huawei/hem/kb;->d:I

    iget v9, v0, Lcom/huawei/hem/kb;->f:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_9

    :cond_8
    move-object v6, v5

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v8, v6, 0x4

    if-ge v8, v7, :cond_11

    .line 30
    iput v6, v0, Lcom/huawei/hem/kb;->d:I

    add-int/lit8 v6, v6, 0x1

    .line 31
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    .line 32
    :goto_3
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-eq v6, v7, :cond_d

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v15, :cond_d

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_d

    aget-char v8, v7, v6

    if-ne v8, v13, :cond_a

    goto :goto_5

    .line 33
    :cond_a
    aget-char v8, v7, v6

    if-ne v8, v12, :cond_b

    .line 34
    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    add-int/lit8 v6, v6, 0x1

    .line 35
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    .line 36
    :goto_4
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-ge v6, v7, :cond_e

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v7, v7, v6

    if-ne v7, v12, :cond_e

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_4

    .line 37
    :cond_b
    aget-char v8, v7, v6

    const/16 v9, 0x41

    if-lt v8, v9, :cond_c

    aget-char v8, v7, v6

    const/16 v9, 0x46

    if-gt v8, v9, :cond_c

    .line 38
    aget-char v8, v7, v6

    add-int/2addr v8, v12

    int-to-char v8, v8

    aput-char v8, v7, v6

    .line 39
    :cond_c
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_3

    .line 40
    :cond_d
    :goto_5
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    .line 41
    :cond_e
    iget v6, v0, Lcom/huawei/hem/kb;->e:I

    iget v7, v0, Lcom/huawei/hem/kb;->d:I

    sub-int/2addr v6, v7

    const/4 v8, 0x5

    if-lt v6, v8, :cond_10

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_10

    .line 42
    div-int/lit8 v8, v6, 0x2

    new-array v9, v8, [B

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_f

    .line 43
    invoke-virtual {v0, v7}, Lcom/huawei/hem/kb;->a(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 44
    :cond_f
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/huawei/hem/kb;->g:[C

    iget v9, v0, Lcom/huawei/hem/kb;->d:I

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v7

    goto :goto_9

    .line 45
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 47
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    .line 48
    iput v6, v0, Lcom/huawei/hem/kb;->d:I

    .line 49
    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    .line 50
    :goto_7
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-eq v6, v7, :cond_1d

    .line 51
    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v8, v7, v6

    if-ne v8, v11, :cond_1b

    add-int/lit8 v6, v6, 0x1

    .line 52
    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    .line 53
    :goto_8
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    iget v7, v0, Lcom/huawei/hem/kb;->b:I

    if-ge v6, v7, :cond_13

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v7, v7, v6

    if-ne v7, v12, :cond_13

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    goto :goto_8

    .line 54
    :cond_13
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/huawei/hem/kb;->g:[C

    iget v8, v0, Lcom/huawei/hem/kb;->d:I

    iget v9, v0, Lcom/huawei/hem/kb;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    :goto_9
    const-string v7, "cn"

    .line 55
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 56
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :cond_14
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_15
    iget v3, v0, Lcom/huawei/hem/kb;->c:I

    iget v6, v0, Lcom/huawei/hem/kb;->b:I

    if-lt v3, v6, :cond_16

    goto/16 :goto_c

    .line 60
    :cond_16
    iget-object v6, v0, Lcom/huawei/hem/kb;->g:[C

    aget-char v7, v6, v3

    const-string v8, "Malformed DN: "

    if-eq v7, v14, :cond_19

    aget-char v7, v6, v3

    if-ne v7, v13, :cond_17

    goto :goto_a

    .line 61
    :cond_17
    aget-char v3, v6, v3

    if-ne v3, v15, :cond_18

    goto :goto_a

    .line 62
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_19
    :goto_a
    iget v3, v0, Lcom/huawei/hem/kb;->c:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/huawei/hem/kb;->c:I

    .line 64
    invoke-virtual {v0}, Lcom/huawei/hem/kb;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto/16 :goto_0

    .line 65
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1b
    aget-char v8, v7, v6

    if-ne v8, v9, :cond_1c

    .line 67
    iget v6, v0, Lcom/huawei/hem/kb;->e:I

    invoke-virtual {v0}, Lcom/huawei/hem/kb;->b()C

    move-result v8

    aput-char v8, v7, v6

    goto :goto_b

    .line 68
    :cond_1c
    iget v8, v0, Lcom/huawei/hem/kb;->e:I

    aget-char v6, v7, v6

    aput-char v6, v7, v8

    .line 69
    :goto_b
    iget v6, v0, Lcom/huawei/hem/kb;->c:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/huawei/hem/kb;->c:I

    .line 70
    iget v6, v0, Lcom/huawei/hem/kb;->e:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/huawei/hem/kb;->e:I

    goto/16 :goto_7

    .line 71
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1e
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v2, v0

    goto :goto_d

    :cond_1f
    move-object v2, v3

    .line 75
    :goto_d
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 76
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 77
    invoke-static {v5}, Lcom/huawei/hem/l9;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Error parsing certificate."

    invoke-static {v0, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    :goto_e
    if-eqz v0, :cond_21

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v7, 0x0

    .line 79
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    .line 80
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 82
    :cond_21
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 83
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 84
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    :cond_22
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz v2, :cond_23

    .line 88
    array-length v5, v2

    if-lez v5, :cond_23

    const/4 v5, 0x0

    aget-object v6, v2, v5

    if-eqz v6, :cond_24

    .line 89
    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    :cond_24
    :goto_10
    if-eqz v3, :cond_26

    .line 90
    array-length v2, v3

    move v6, v5

    :goto_11
    if-ge v6, v2, :cond_26

    aget-object v7, v3, v6

    if-eqz v7, :cond_25

    .line 91
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 92
    :cond_26
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 93
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v5

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 97
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " <"

    .line 98
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x3e

    .line 100
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    const-string v7, " OR"

    .line 102
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    const-string v7, "*."

    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/16 v7, 0x2e

    const/4 v8, 0x2

    .line 104
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2b

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_2a

    const/16 v9, 0x9

    if-gt v8, v9, :cond_2a

    add-int/lit8 v8, v8, -0x3

    .line 106
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_2a

    const/4 v7, 0x2

    .line 107
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 108
    sget-object v8, Lcom/huawei/hem/lb;->b:[Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_29

    goto :goto_12

    :cond_29
    move v7, v5

    goto :goto_13

    :cond_2a
    :goto_12
    move v7, v4

    :goto_13
    if-eqz v7, :cond_2b

    .line 109
    sget-object v7, Lcom/huawei/hem/lb;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_2b

    move v7, v4

    goto :goto_14

    :cond_2b
    move v7, v5

    :goto_14
    if-eqz v7, :cond_2e

    .line 110
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    if-eqz p2, :cond_2d

    .line 111
    invoke-static {v3}, Lcom/huawei/hem/lb;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Lcom/huawei/hem/lb;->b(Ljava/lang/String;)I

    move-result v6

    if-ne v7, v6, :cond_2c

    move v6, v4

    goto :goto_15

    :cond_2c
    move v6, v5

    goto :goto_15

    :cond_2d
    move v6, v7

    goto :goto_15

    .line 112
    :cond_2e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_15
    if-eqz v6, :cond_27

    :cond_2f
    if-eqz v6, :cond_30

    return-void

    .line 113
    :cond_30
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname in certificate didn\'t match: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> !="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const-string v0, "Certificate for <"

    const-string v2, "> doesn\'t contain CN or DNS subjectAlt"

    .line 114
    invoke-static {v0, v1, v2}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
