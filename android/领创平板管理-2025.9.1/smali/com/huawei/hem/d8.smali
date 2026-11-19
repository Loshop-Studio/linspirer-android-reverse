.class public abstract Lcom/huawei/hem/d8;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/huawei/hem/b9;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/c9;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/d8;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hem/d8;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/d8;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)I
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;Z)I
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hem/d8;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/huawei/hem/d8;->e(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/d8;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/hem/d8;->h(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const-string p1, "AbstractLocalManager"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "load APP_CONFIG_FILE success."

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    return v1

    .line 4
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    array-length v0, p3

    if-lez v0, :cond_6

    array-length v0, p3

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v3, p3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "^grs_sdk_global_route_config_[a-zA-Z]+\\.json$"

    :try_start_1
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3, p2}, Lcom/huawei/hem/y4;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/hem/d8;->i(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_5

    const-string v3, "load SDK_CONFIG_FILE sucess."

    :try_start_2
    invoke-static {p1, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    const-string p2, "list assets files fail,please check if according to our standard config json files."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return v2
.end method

.method public c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hem/c9;",
            ">;"
        }
    .end annotation

    const-string v0, "countriesOrAreas"

    const-string v1, "AbstractLocalManager"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/huawei/hem/c9;

    invoke-direct {v7}, Lcom/huawei/hem/c9;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "id"

    :try_start_1
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1
    iput-object v8, v7, Lcom/huawei/hem/c9;->a:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "name"

    .line 2
    :try_start_2
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "description"

    :try_start_3
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "countries"

    if-eqz v9, :cond_1

    move-object v10, v0

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_1
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_2
    const-string v6, "current country or area group has not config countries or areas."

    :try_start_5
    invoke-static {v1, v6}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    move v9, v4

    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3
    :cond_4
    iput-object v6, v7, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return-object p1

    :cond_6
    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "parse countrygroup failed maybe json style is wrong."

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_7
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public d(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hem/a8;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/huawei/hem/d8;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    const-string v2, "AbstractLocalManager"

    if-nez v0, :cond_1

    const-string p1, "application data is null."

    invoke-static {v2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1
    :cond_1
    iget-object v0, v0, Lcom/huawei/hem/b9;->b:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/d9;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p4, p1, v3

    const-string p2, "service not found in local config{%s}"

    .line 2
    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 3
    :cond_2
    iget-object p4, v0, Lcom/huawei/hem/d9;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2, p4, p3, p5}, Lcom/huawei/hem/h8;->a(Landroid/content/Context;Lcom/huawei/hem/a8;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    .line 5
    iget-object p2, v0, Lcom/huawei/hem/d9;->a:Ljava/lang/String;

    aput-object p2, p1, v3

    const-string p2, "country not found by routeby in local config{%s}"

    .line 6
    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 7
    :cond_3
    iget-object p2, v0, Lcom/huawei/hem/d9;->c:Ljava/util/List;

    if-eqz p2, :cond_9

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-eqz p4, :cond_9

    .line 9
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p5, 0x10

    invoke-direct {p4, p5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const-string p5, "no_route_country"

    const-string v3, "no-country"

    invoke-virtual {p4, p5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/huawei/hem/c9;

    .line 10
    iget-object v3, p5, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 11
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p5, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p4, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    iget-object v3, p5, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 15
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v3

    .line 16
    iget-object v4, p5, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p4, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_6
    iget-object v3, p5, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 19
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v3

    .line 20
    iget-object v4, p5, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p4, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    iget-object v3, p5, Lcom/huawei/hem/c9;->b:Ljava/util/Set;

    .line 23
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "get countryGroupID from geoIp"

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object p5, p5, Lcom/huawei/hem/c9;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p4, p1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_8
    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_9
    iget-object p2, p0, Lcom/huawei/hem/d8;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 27
    iget-object p2, v0, Lcom/huawei/hem/d9;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/e9;

    if-nez p1, :cond_a

    return-object v1

    .line 28
    :cond_a
    iget-object p1, p1, Lcom/huawei/hem/e9;->b:Ljava/util/Map;

    return-object p1
.end method

.method public abstract e(Ljava/lang/String;)I
.end method

.method public f(Lorg/json/JSONArray;)V
    .locals 13

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/huawei/hem/d9;

    invoke-direct {v3}, Lcom/huawei/hem/d9;-><init>()V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hem/d8;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/huawei/hem/d8;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/huawei/hem/d8;->e:Z

    if-eqz v5, :cond_8

    const-string v5, "routeBy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1
    iput-object v5, v3, Lcom/huawei/hem/d9;->a:Ljava/lang/String;

    const-string v5, "servings"

    .line 2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "AbstractLocalManager"

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    new-instance v9, Lcom/huawei/hem/e9;

    invoke-direct {v9}, Lcom/huawei/hem/e9;-><init>()V

    const-string v10, "countryOrAreaGroup"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    const-string v10, "countryGroup"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    const-string v10, "maybe this service routeBy is unconditional."

    invoke-static {v8, v10}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "no-country"

    .line 3
    :goto_3
    iput-object v8, v9, Lcom/huawei/hem/e9;->a:Ljava/lang/String;

    const-string v8, "addresses"

    .line 4
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    const/16 v10, 0x10

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 5
    :cond_3
    iput-object v8, v9, Lcom/huawei/hem/e9;->b:Ljava/util/Map;

    .line 6
    iget-object v7, v9, Lcom/huawei/hem/e9;->a:Ljava/lang/String;

    .line 7
    iget-object v8, v3, Lcom/huawei/hem/d9;->b:Ljava/util/Map;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    const-string v6, "countryOrAreaGroups"

    .line 8
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    const-string v6, "countryGroups"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_5
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/hem/d8;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    :cond_6
    const-string v2, "service use default countryOrAreaGroup"

    invoke-static {v8, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :goto_6
    iput-object v5, v3, Lcom/huawei/hem/d9;->c:Ljava/util/List;

    .line 10
    iget-object v2, p0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    if-nez v2, :cond_7

    new-instance v2, Lcom/huawei/hem/b9;

    invoke-direct {v2}, Lcom/huawei/hem/b9;-><init>()V

    iput-object v2, p0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    :cond_7
    iget-object v2, p0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    .line 11
    iget-object v2, v2, Lcom/huawei/hem/b9;->b:Ljava/util/Map;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_7
    return-void
.end method

.method public g(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "services"

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hem/d8;->f(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "AbstractLocalManager"

    const-string v1, "parse 2.0 services failed maybe because of json style.please check!"

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public abstract h(Ljava/lang/String;)I
.end method

.method public final i(Ljava/lang/String;)I
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hem/d8;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "countryOrAreaGroups"

    const-string v2, "AbstractLocalManager"

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "countryGroups"

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    const-string v0, "maybe local config json is wrong because the default countryOrAreaGroups isn\'t config."

    :try_start_2
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/huawei/hem/d8;->b:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/huawei/hem/d8;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "parse countrygroup failed maybe json style is wrong."

    invoke-static {v2, v3, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v1, :cond_5

    return v1

    .line 2
    :cond_5
    invoke-virtual {p0, p1}, Lcom/huawei/hem/d8;->g(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
