.class public Lcom/huawei/hem/w8$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/w8;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/huawei/hem/w8;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/w8;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    iput-object p2, p0, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p4, p0, Lcom/huawei/hem/w8$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    new-instance v2, Lcom/huawei/hem/v8;

    invoke-direct {v2}, Lcom/huawei/hem/v8;-><init>()V

    .line 2
    iput-object v2, v0, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    .line 3
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    new-instance v2, Lcom/huawei/hem/c8;

    iget-object v3, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    const-string v4, "share_pre_grs_conf_"

    invoke-direct {v2, v3, v4}, Lcom/huawei/hem/c8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iput-object v2, v0, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 5
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    new-instance v2, Lcom/huawei/hem/c8;

    iget-object v3, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    const-string v4, "share_pre_grs_services_"

    invoke-direct {v2, v3, v4}, Lcom/huawei/hem/c8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    iput-object v2, v0, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 7
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    new-instance v2, Lcom/huawei/hem/a8;

    .line 8
    iget-object v3, v0, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 9
    iget-object v4, v0, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 10
    iget-object v5, v0, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    .line 11
    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/hem/a8;-><init>(Lcom/huawei/hem/c8;Lcom/huawei/hem/c8;Lcom/huawei/hem/v8;)V

    .line 12
    iput-object v2, v0, Lcom/huawei/hem/w8;->f:Lcom/huawei/hem/a8;

    .line 13
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    new-instance v2, Lcom/huawei/hem/z7;

    .line 14
    iget-object v3, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 15
    iget-object v4, v0, Lcom/huawei/hem/w8;->f:Lcom/huawei/hem/a8;

    .line 16
    iget-object v5, v0, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    .line 17
    iget-object v6, v0, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 18
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/huawei/hem/z7;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/a8;Lcom/huawei/hem/v8;Lcom/huawei/hem/c8;)V

    .line 19
    iput-object v2, v0, Lcom/huawei/hem/w8;->i:Lcom/huawei/hem/z7;

    .line 20
    new-instance v0, Lcom/huawei/hem/e8;

    iget-object v2, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/huawei/hem/e8;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)V

    iget-object v2, v1, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 21
    iget-object v0, v0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    .line 22
    iget-object v3, v0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    const-string v5, "no_route_country"

    const-string v6, "no-country"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hem/c9;

    .line 23
    iget-object v7, v6, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 24
    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v8

    .line 25
    iget-object v9, v6, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 26
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_2
    iget-object v7, v6, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 28
    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v8

    .line 29
    iget-object v9, v6, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 30
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_3
    iget-object v7, v6, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 32
    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v8

    .line 33
    iget-object v6, v6, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 34
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iput-object v5, v0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    .line 35
    :cond_5
    :goto_1
    new-instance v0, Lcom/huawei/hem/n8;

    iget-object v2, v1, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v3, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hem/n8;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan serviceSet is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "d"

    invoke-static {v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 36
    iget-object v2, v2, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 37
    iget-object v2, v2, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    const-string v6, "services"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2, v0}, Lcom/huawei/hem/y4;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_6

    iget-object v8, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 39
    iget-object v8, v8, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 40
    iget-object v8, v8, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v8, v6, v0}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "postList is:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " currentServices:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 42
    iget-object v0, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 43
    iget-object v2, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v9, v4, v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 44
    iget-object v2, v2, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    .line 45
    invoke-virtual {v2, v0}, Lcom/huawei/hem/v8;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 46
    iget-object v0, v0, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    .line 47
    new-instance v2, Lcom/huawei/hem/n8;

    iget-object v6, v1, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v8, v1, Lcom/huawei/hem/w8$a;->c:Landroid/content/Context;

    invoke-direct {v2, v6, v8}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v6, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 48
    iget-object v6, v6, Lcom/huawei/hem/w8;->h:Lcom/huawei/hem/c8;

    .line 49
    invoke-virtual {v0, v2, v5, v5, v6}, Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    :cond_6
    iget-object v2, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 50
    iget-object v0, v2, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 51
    iget-object v0, v0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v6, "\\d+"

    const-wide/16 v10, 0x0

    const-string v8, "time"

    if-eqz v0, :cond_b

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 53
    iget-object v0, v0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v0, v13, v7}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v14, v0

    const-string v0, "convert expire time from String to Long catch NumberFormatException."

    invoke-static {v3, v0, v14}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-wide v14, v10

    .line 55
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/32 v14, 0x240c8400

    cmp-long v0, v16, v14

    if-gtz v0, :cond_a

    move v0, v4

    goto :goto_4

    :cond_a
    move v0, v9

    :goto_4
    if-nez v0, :cond_8

    const-string v0, "init interface auto clear some invalid sp\'s data."

    .line 56
    invoke-static {v3, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v13, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v14, v2, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 57
    iget-object v14, v14, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v14, v0}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->remove(Ljava/lang/String;)V

    .line 58
    iget-object v0, v2, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 59
    iget-object v0, v0, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v0, v13}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_5
    const-string v0, "sp\'s content is empty."

    .line 60
    invoke-static {v3, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_c
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 62
    iget-object v2, v0, Lcom/huawei/hem/w8;->f:Lcom/huawei/hem/a8;

    .line 63
    iget-object v3, v1, Lcom/huawei/hem/w8$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v12, v1, Lcom/huawei/hem/w8$a;->a:Landroid/content/Context;

    if-eqz v2, :cond_f

    .line 64
    invoke-virtual {v3, v9, v4, v12}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    invoke-virtual {v0, v9, v7}, Lcom/huawei/hem/c8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "0"

    invoke-virtual {v0, v8, v13}, Lcom/huawei/hem/c8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v0, "a"

    const-string v8, "convert urlParamKey from String to Long catch NumberFormatException."

    invoke-static {v0, v8, v6}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    iget-object v0, v2, Lcom/huawei/hem/a8;->a:Ljava/util/Map;

    invoke-static {v7}, Lcom/huawei/hem/z7;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, v2, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/32 v6, 0x493e0

    invoke-static {v0, v6, v7}, Lcom/huawei/hem/y4;->h(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/huawei/hem/n8;

    invoke-direct {v0, v3, v12}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v3, v2, Lcom/huawei/hem/a8;->e:Lcom/huawei/hem/v8;

    iget-object v2, v2, Lcom/huawei/hem/a8;->d:Lcom/huawei/hem/c8;

    invoke-virtual {v3, v0, v5, v5, v2}, Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    .line 66
    :cond_e
    iget-object v0, v1, Lcom/huawei/hem/w8$a;->d:Lcom/huawei/hem/w8;

    .line 67
    iput-boolean v4, v0, Lcom/huawei/hem/w8;->b:Z

    .line 68
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 69
    :cond_f
    throw v5
.end method
