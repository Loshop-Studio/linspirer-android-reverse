.class public Lcom/huawei/hem/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hem/ha;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/aa;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/huawei/hem/aa;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/aa;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/huawei/hem/aa;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/aa;->e:Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/aa;->f:Ljava/lang/String;

    const-string p1, "oper"

    .line 1
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/huawei/hem/z9;->a(Ljava/lang/String;)Lcom/huawei/hem/ja;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/huawei/hem/ja;->a(Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p1, Lcom/huawei/hem/ea;->b:Z

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    if-eqz p1, :cond_d

    .line 3
    sget-object p1, Lcom/huawei/hem/p9;->b:Lcom/huawei/hem/p9;

    if-nez p1, :cond_2

    .line 4
    const-class p1, Lcom/huawei/hem/p9;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/huawei/hem/p9;->b:Lcom/huawei/hem/p9;

    if-nez p2, :cond_1

    new-instance p2, Lcom/huawei/hem/p9;

    invoke-direct {p2}, Lcom/huawei/hem/p9;-><init>()V

    sput-object p2, Lcom/huawei/hem/p9;->b:Lcom/huawei/hem/p9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Lcom/huawei/hem/p9;->b:Lcom/huawei/hem/p9;

    .line 6
    iget-object p2, p1, Lcom/huawei/hem/p9;->a:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/huawei/hem/s9;

    invoke-direct {p2}, Lcom/huawei/hem/s9;-><init>()V

    iget-object v0, p1, Lcom/huawei/hem/p9;->a:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p1, Lcom/huawei/hem/p9;->a:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/s9;

    .line 7
    iget-object p2, p1, Lcom/huawei/hem/s9;->c:Lcom/huawei/hem/s9$a;

    if-nez p2, :cond_4

    const-string p2, "hmsSdk"

    const-string p3, "Session is first flush"

    invoke-static {p2, p3}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/huawei/hem/s9$a;

    invoke-direct {p2, p1, p5, p6}, Lcom/huawei/hem/s9$a;-><init>(Lcom/huawei/hem/s9;J)V

    iput-object p2, p1, Lcom/huawei/hem/s9;->c:Lcom/huawei/hem/s9$a;

    goto :goto_5

    .line 8
    :cond_4
    iget-object p3, p2, Lcom/huawei/hem/s9$a;->d:Lcom/huawei/hem/s9;

    .line 9
    iget-boolean p3, p3, Lcom/huawei/hem/s9;->b:Z

    if-eqz p3, :cond_5

    .line 10
    iget-object p3, p2, Lcom/huawei/hem/s9$a;->d:Lcom/huawei/hem/s9;

    .line 11
    iput-boolean p4, p3, Lcom/huawei/hem/s9;->b:Z

    goto :goto_4

    .line 12
    :cond_5
    iget-wide v0, p2, Lcom/huawei/hem/s9$a;->c:J

    sub-long v0, p5, v0

    .line 13
    iget-object p3, p2, Lcom/huawei/hem/s9$a;->d:Lcom/huawei/hem/s9;

    .line 14
    iget-wide v2, p3, Lcom/huawei/hem/s9;->a:J

    cmp-long p3, v0, v2

    const/4 v0, 0x1

    if-ltz p3, :cond_6

    move p3, v0

    goto :goto_2

    :cond_6
    move p3, p4

    :goto_2
    if-nez p3, :cond_a

    .line 15
    iget-wide v1, p2, Lcom/huawei/hem/s9$a;->c:J

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_8

    const/4 v2, 0x6

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq p3, v1, :cond_7

    goto :goto_3

    :cond_7
    move v0, p4

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    .line 17
    :cond_9
    iput-wide p5, p2, Lcom/huawei/hem/s9$a;->c:J

    iput-boolean p4, p2, Lcom/huawei/hem/s9$a;->b:Z

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {p2, p5, p6}, Lcom/huawei/hem/s9$a;->a(J)V

    .line 18
    :goto_5
    iget-object p2, p1, Lcom/huawei/hem/s9;->c:Lcom/huawei/hem/s9$a;

    if-nez p2, :cond_b

    const-string p2, "hmsSdk"

    const-string p3, "getSessionName(): session not prepared. onEvent() must be called first."

    invoke-static {p2, p3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    goto :goto_6

    :cond_b
    iget-object p2, p2, Lcom/huawei/hem/s9$a;->a:Ljava/lang/String;

    .line 19
    :goto_6
    iput-object p2, p0, Lcom/huawei/hem/aa;->g:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/huawei/hem/s9;->c:Lcom/huawei/hem/s9$a;

    if-nez p1, :cond_c

    const-string p1, "hmsSdk"

    const-string p2, "isFirstEvent(): session not prepared. onEvent() must be called first."

    invoke-static {p1, p2}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iget-boolean p4, p1, Lcom/huawei/hem/s9$a;->b:Z

    .line 21
    :goto_7
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/aa;->h:Ljava/lang/Boolean;

    :cond_d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "hmsSdk"

    const-string v1, "Begin to run EventRecordTask..."

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 3
    iget v1, v1, Lcom/huawei/hem/ga;->g:I

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/aa;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/aa;->e:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget v2, v2, Lcom/huawei/hem/ea;->k:I

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/huawei/hem/aa;->a:Landroid/content/Context;

    const/high16 v4, 0x100000

    mul-int/2addr v1, v4

    const-string v4, "stat_v2_1"

    invoke-static {v3, v4, v1}, Lcom/huawei/hem/l9;->t(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1

    const-string v1, "stat sp file reach max limited size, discard new event"

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object v0

    const-string v1, "alltype"

    invoke-virtual {v0, v3, v1}, Lcom/huawei/hem/v9;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lcom/huawei/hem/la;

    invoke-direct {v1}, Lcom/huawei/hem/la;-><init>()V

    iget-object v5, p0, Lcom/huawei/hem/aa;->b:Ljava/lang/String;

    .line 8
    iput-object v5, v1, Lcom/huawei/hem/la;->b:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/huawei/hem/aa;->c:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    iput-object v5, v1, Lcom/huawei/hem/la;->c:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/huawei/hem/aa;->e:Ljava/lang/String;

    .line 12
    iput-object v5, v1, Lcom/huawei/hem/la;->a:Ljava/lang/String;

    .line 13
    iget-object v5, p0, Lcom/huawei/hem/aa;->f:Ljava/lang/String;

    .line 14
    iput-object v5, v1, Lcom/huawei/hem/la;->d:Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lcom/huawei/hem/aa;->g:Ljava/lang/String;

    .line 16
    iput-object v5, v1, Lcom/huawei/hem/la;->e:Ljava/lang/String;

    .line 17
    iget-object v5, p0, Lcom/huawei/hem/aa;->h:Ljava/lang/Boolean;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 18
    :goto_1
    iput-object v5, v1, Lcom/huawei/hem/la;->f:Ljava/lang/String;

    .line 19
    :try_start_0
    invoke-virtual {v1}, Lcom/huawei/hem/la;->c()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lcom/huawei/hem/aa;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hem/aa;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/huawei/hem/l9;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/hem/aa;->a:Landroid/content/Context;

    invoke-static {v6, v4, v5, v3}, Lcom/huawei/hem/l9;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, "Cached data corrupted: stat_v2_1"

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/huawei/hem/aa;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/huawei/hem/l9;->D(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit16 v2, v2, 0x400

    if-le v0, v2, :cond_4

    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/aa;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hem/aa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/v9;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catch_1
    const-string v1, "eventRecord toJson error! The record failed."

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
