.class public Lcom/huawei/hem/a8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/huawei/hem/c8;

.field public d:Lcom/huawei/hem/c8;

.field public e:Lcom/huawei/hem/v8;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/c8;Lcom/huawei/hem/c8;Lcom/huawei/hem/v8;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/a8;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/huawei/hem/a8;->d:Lcom/huawei/hem/c8;

    iput-object p1, p0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    iput-object p3, p0, Lcom/huawei/hem/a8;->e:Lcom/huawei/hem/v8;

    .line 1
    iput-object p0, p3, Lcom/huawei/hem/v8;->d:Lcom/huawei/hem/a8;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Lcom/huawei/hem/b8;Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/b8;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p4}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hem/a8;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1, v0, v1, p4}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/huawei/hem/y4;->g(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x2

    .line 2
    iput p1, p3, Lcom/huawei/hem/b8;->a:I

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x493e0

    .line 3
    invoke-static {v0, v3, v4}, Lcom/huawei/hem/y4;->h(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/huawei/hem/n8;

    invoke-direct {v0, p1, p4}, Lcom/huawei/hem/n8;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huawei/hem/a8;->e:Lcom/huawei/hem/v8;

    iget-object p4, p0, Lcom/huawei/hem/a8;->d:Lcom/huawei/hem/c8;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p2, p4}, Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V

    .line 4
    :cond_2
    iput v1, p3, Lcom/huawei/hem/b8;->a:I

    .line 5
    :goto_0
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_3
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/r8;Landroid/content/Context;Lcom/huawei/hem/n8;)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/huawei/hem/r8;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "a"

    const-string p2, "update cache from server failed"

    .line 2
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p4, p4, Lcom/huawei/hem/n8;->c:Ljava/util/Set;

    .line 4
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-nez p4, :cond_1

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p4, v0, p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    .line 5
    iget-object p4, p2, Lcom/huawei/hem/r8;->g:Ljava/lang/String;

    .line 6
    iget-object p3, p3, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {p3, p1, p4}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    const-string p4, "time"

    invoke-static {p1, p4}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 8
    iget-object v0, p2, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    .line 9
    iget-object p3, p3, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    invoke-virtual {p3, p4, v0}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/huawei/hem/a8;->a:Ljava/util/Map;

    .line 11
    iget-object p4, p2, Lcom/huawei/hem/r8;->g:Ljava/lang/String;

    .line 12
    invoke-static {p4}, Lcom/huawei/hem/z7;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/huawei/hem/a8;->b:Ljava/util/Map;

    .line 13
    iget-object p2, p2, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    .line 14
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    .line 15
    iget-object p3, p2, Lcom/huawei/hem/r8;->g:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    const-string p4, "geoipCountryCode"

    invoke-virtual {p1, p4, p3}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/huawei/hem/a8;->c:Lcom/huawei/hem/c8;

    .line 18
    iget-object p2, p2, Lcom/huawei/hem/r8;->j:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/huawei/hem/c8;->a:Lcom/huawei/hms/framework/common/PLSharedPreferences;

    const-string p3, "geoipCountryCodetime"

    invoke-virtual {p1, p3, p2}, Lcom/huawei/hms/framework/common/PLSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
