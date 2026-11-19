.class public Lcom/huawei/hem/w9;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/huawei/hem/ja;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    new-instance p1, Lcom/huawei/hem/ja;

    invoke-direct {p1}, Lcom/huawei/hem/ja;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/huawei/hem/z9;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    const-string v0, "_default_config_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "verifyURL(): type: preins. Only default config can report Pre-install data."

    goto :goto_2

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    iget-object v0, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2
    :cond_3
    throw v2

    .line 3
    :cond_4
    iget-object v0, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 4
    :cond_5
    throw v2

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    .line 6
    iget-object v2, v0, Lcom/huawei/hem/ja;->a:Lcom/huawei/hem/ea;

    goto :goto_0

    .line 7
    :cond_7
    iget-object v0, p0, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    .line 8
    iget-object v2, v0, Lcom/huawei/hem/ja;->b:Lcom/huawei/hem/ea;

    :goto_0
    if-eqz v2, :cond_9

    .line 9
    iget-object v0, v2, Lcom/huawei/hem/ea;->d:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyURL(): URL check failed. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v0, "hmsSdk"

    .line 11
    invoke-static {v0, p1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
