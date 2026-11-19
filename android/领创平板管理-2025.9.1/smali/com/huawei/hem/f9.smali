.class public Lcom/huawei/hem/f9;
.super Ljava/lang/Object;
.source "HmsHiAnalyticsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hem/xa;->a:Lcom/huawei/hem/ya;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "=======================================\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HiAnalyticsSDK_2.2.0.308"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/huawei/hem/y9;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    const-string v3, "-dev"

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n======================================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HiAnalyticsSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, v0, Lcom/huawei/hem/ya;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huawei/hem/ya;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/ia;->b:Lcom/huawei/hem/ia;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/ia;->a:Lcom/huawei/hem/w9;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/huawei/hem/l9;->b()Lcom/huawei/hem/w9;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Lcom/huawei/hem/qa;->c:Lcom/huawei/hem/qa;

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hem/qa;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "hmsSdk"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data type no longer collects range.type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hem/xa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    sget-object v2, Lcom/huawei/hem/l9;->a:Lcom/huawei/hem/w9;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object v4, v2, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "HiAnalyticsInstance.onEvent(int type, String eventId, Map<String, String> mapValue) is execute.TAG: %s,TYPE: %d"

    invoke-static {v0, v4, v3}, Lcom/huawei/hem/xa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x100

    const-string v4, "eventId"

    .line 5
    invoke-static {v4, p1, v3}, Lcom/huawei/hem/l9;->u(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, ", TYPE: "

    if-nez v3, :cond_c

    .line 6
    invoke-virtual {v2, p0}, Lcom/huawei/hem/w9;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p2, :cond_7

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v3, v1, :cond_5

    const-string v3, "constants"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "_constants"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v1, "checkMap() the key can\'t be constants or _constants"

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v6, 0x800

    if-gt v3, v6, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v6, 0x32000

    if-le v3, v6, :cond_8

    :cond_6
    const-string v1, "checkMap Map data is too big! size: "

    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    const-string v1, "onEvent() mapValue has not data.so,The data will be empty"

    :goto_2
    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :cond_8
    const/4 v3, 0x0

    if-nez v1, :cond_9

    const-string p2, "onEvent() parameter mapValue will be cleared.TAG: "

    .line 8
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v2, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v3

    :cond_9
    invoke-static {}, Lcom/huawei/hem/u9;->a()Lcom/huawei/hem/u9;

    move-result-object v1

    iget-object v2, v2, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_a

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p2, "Exception occured when transferring bundle to json"

    invoke-static {v0, p2}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_a
    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object p2

    invoke-virtual {p2, v2, p0, p1, v1}, Lcom/huawei/hem/v9;->c(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 11
    :cond_b
    throw v3

    :cond_c
    :goto_4
    const-string p1, "onEvent() parameters check fail. Nothing will be recorded.TAG: "

    .line 12
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v2, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public static d()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/huawei/hem/l9;->b()Lcom/huawei/hem/w9;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/huawei/hem/qa;->c:Lcom/huawei/hem/qa;

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hem/qa;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/hem/l9;->a:Lcom/huawei/hem/w9;

    const/4 v1, -0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "hmsSdk"

    const-string v4, "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d"

    invoke-static {v3, v4, v2}, Lcom/huawei/hem/xa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/huawei/hem/u9;->a()Lcom/huawei/hem/u9;

    move-result-object v2

    iget-object v0, v0, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object v2

    .line 6
    iget-object v4, v2, Lcom/huawei/hem/v9;->a:Landroid/content/Context;

    if-nez v4, :cond_0

    const-string v0, "onReport() null context or SDK was not init."

    invoke-static {v3, v0}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "onReport: Before calling runtaskhandler()"

    invoke-static {v3, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hem/l9;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hem/y4;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/huawei/hem/v9;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_2
    :goto_0
    return-void
.end method
