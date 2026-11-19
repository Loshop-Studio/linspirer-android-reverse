.class public Lcom/huawei/hms/framework/network/grs/GrsClient;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public grsClientGlobal:Lcom/huawei/hem/w8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    sget-object v0, Lcom/huawei/hem/z8;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    move-result v1

    sget-object v2, Lcom/huawei/hem/z8;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/w8;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/huawei/hem/w8;

    invoke-direct {v3, p2}, Lcom/huawei/hem/w8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/huawei/hem/w8;

    if-eq v6, v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v3, v3, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v4, v3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->compare(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    .line 3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/huawei/hem/w8;

    invoke-direct {v2, p1, p2}, Lcom/huawei/hem/w8;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    sget-object p2, Lcom/huawei/hem/z8;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/huawei/hem/w8;

    invoke-direct {v2, p1, p2}, Lcom/huawei/hem/w8;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    sget-object p2, Lcom/huawei/hem/z8;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4
    :goto_2
    iput-object v2, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invalid init params for context is null or GrsBaseInfo instance is null Object."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ayncGetGrsUrl(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;)V
    .locals 12

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    if-eqz v0, :cond_6

    if-nez p3, :cond_0

    const-string p1, "d"

    const-string p2, "IQueryUrlCallBack is must not null for process continue."

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/huawei/hem/w8;->i:Lcom/huawei/hem/z7;

    iget-object v7, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/huawei/hem/b8;

    invoke-direct {v0}, Lcom/huawei/hem/b8;-><init>()V

    invoke-virtual {v1, p1, p2, v0, v7}, Lcom/huawei/hem/z7;->b(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/b8;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/huawei/hem/b8;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x5

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v7, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    invoke-interface {p3, v6}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackSuccess(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/huawei/hem/n8;

    iget-object v2, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {v0, v2, v7}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v10, v1, Lcom/huawei/hem/z7;->c:Lcom/huawei/hem/v8;

    new-instance v11, Lcom/huawei/hem/z7$b;

    iget-object v8, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v9, v1, Lcom/huawei/hem/z7;->b:Lcom/huawei/hem/a8;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/huawei/hem/z7$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/a8;)V

    iget-object p2, v1, Lcom/huawei/hem/z7;->d:Lcom/huawei/hem/c8;

    invoke-virtual {v10, v0, v11, p1, p2}, Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x6

    .line 3
    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 p1, 0x0

    throw p1
.end method

.method public ayncGetGrsUrls(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;)V
    .locals 11

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    const-string p1, "d"

    const-string p2, "IQueryUrlsCallBack is must not null for process continue."

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/huawei/hem/w8;->i:Lcom/huawei/hem/z7;

    iget-object v6, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/huawei/hem/b8;

    invoke-direct {v0}, Lcom/huawei/hem/b8;-><init>()V

    invoke-virtual {v1, p1, v0, v6}, Lcom/huawei/hem/z7;->e(Ljava/lang/String;Lcom/huawei/hem/b8;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/hem/b8;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v6, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    invoke-interface {p2, v4}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, -0x5

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    goto :goto_2

    .line 3
    :cond_4
    new-instance v0, Lcom/huawei/hem/n8;

    iget-object v2, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {v0, v2, v6}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v9, v1, Lcom/huawei/hem/z7;->c:Lcom/huawei/hem/v8;

    new-instance v10, Lcom/huawei/hem/z7$a;

    iget-object v7, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v8, v1, Lcom/huawei/hem/z7;->b:Lcom/huawei/hem/a8;

    move-object v2, v10

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hem/z7$a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/a8;)V

    iget-object p2, v1, Lcom/huawei/hem/z7;->d:Lcom/huawei/hem/c8;

    invoke-virtual {v9, v0, v10, p1, p2}, Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, -0x6

    .line 4
    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 p1, 0x0

    throw p1
.end method

.method public clearSp()V
    .locals 5

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    .line 1
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    .line 2
    iget-object v2, v2, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/w8;->g:Lcom/huawei/hem/c8;

    const-string v3, "time"

    invoke-static {v1, v3}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v2, v2, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {v2, v3}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/w8;->e:Lcom/huawei/hem/v8;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/v8;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public forceExpire()Z
    .locals 7

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    .line 1
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/huawei/hem/w8;->f:Lcom/huawei/hem/a8;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 2
    invoke-virtual {v1, v2, v4, v3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    const-string v3, "time"

    invoke-static {v1, v3}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v2, v2, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/huawei/hem/a8;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/huawei/hem/a8;->e:Lcom/huawei/hem/v8;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/v8;->c(Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_0
    return v2
.end method

.method public synGetGrsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/huawei/hem/w8;->i:Lcom/huawei/hem/z7;

    iget-object v3, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/huawei/hem/b8;

    invoke-direct {v0}, Lcom/huawei/hem/b8;-><init>()V

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/huawei/hem/z7;->b(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/b8;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hem/b8;->a()Z

    move-result v0

    const-string v4, "a"

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const-string p2, "get unexpired cache localUrl{%s}"

    invoke-static {v4, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v3, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, p1}, Lcom/huawei/hem/z7;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/huawei/hem/z7;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "get url is from remote server"

    invoke-static {v4, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v3, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "access local config for return a domain."

    invoke-static {v4, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v0, v2}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object v2

    iget-object v4, v1, Lcom/huawei/hem/z7;->b:Lcom/huawei/hem/a8;

    iget-object v5, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v8, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/huawei/hem/e8;->b(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "d"

    const-string p2, "invalid para!"

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v2
.end method

.method public synGetGrsUrls(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsClient;->grsClientGlobal:Lcom/huawei/hem/w8;

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/w8;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/w8;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/huawei/hem/w8;->i:Lcom/huawei/hem/z7;

    iget-object v3, v0, Lcom/huawei/hem/w8;->d:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/huawei/hem/b8;

    invoke-direct {v0}, Lcom/huawei/hem/b8;-><init>()V

    invoke-virtual {v1, p1, v0, v3}, Lcom/huawei/hem/z7;->e(Ljava/lang/String;Lcom/huawei/hem/b8;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hem/b8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v3, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, p1}, Lcom/huawei/hem/z7;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hem/z7;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v3, p1}, Lcom/huawei/hem/e8;->d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "a"

    const-string v2, "access local config for return a domain."

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v0, v2}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object v2

    iget-object v4, v1, Lcom/huawei/hem/z7;->b:Lcom/huawei/hem/a8;

    iget-object v5, v1, Lcom/huawei/hem/z7;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/hem/e8;->c(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 3
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "d"

    const-string v0, "invalid para!"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_5
    :goto_1
    return-object v2
.end method
