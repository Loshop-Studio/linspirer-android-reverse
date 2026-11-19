.class public Lcom/huawei/hem/gk$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/zj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Lcom/huawei/hem/yj$a;

.field public d:Lcom/huawei/hem/jk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/gk$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/huawei/hem/yj$a;

    invoke-direct {v0}, Lcom/huawei/hem/yj$a;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/gk;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->a:Lcom/huawei/hem/zj;

    .line 8
    iget-object v0, p1, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    iput-object v0, p0, Lcom/huawei/hem/gk$a;->d:Lcom/huawei/hem/jk;

    .line 10
    iget-object v0, p1, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    invoke-virtual {p1}, Lcom/huawei/hem/yj;->e()Lcom/huawei/hem/yj$a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hem/gk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/gk$a;->a:Lcom/huawei/hem/zj;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/gk;

    invoke-direct {v0, p0}, Lcom/huawei/hem/gk;-><init>(Lcom/huawei/hem/gk$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/gk$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/yj;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p2, p1}, Lcom/huawei/hem/yj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/huawei/hem/yj$a;->b(Ljava/lang/String;)Lcom/huawei/hem/yj$a;

    .line 5
    iget-object v1, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v0, Lcom/huawei/hem/yj$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/huawei/hem/jk;)Lcom/huawei/hem/gk$a;
    .locals 2
    .param p2    # Lcom/huawei/hem/jk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/uk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must not have a request body."

    invoke-static {v0, p1, v1}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    const-string v1, "POST"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PUT"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PATCH"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PROPPATCH"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "REPORT"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must have a request body."

    invoke-static {v0, p1, v1}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/huawei/hem/gk$a;->b:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/huawei/hem/gk$a;->d:Lcom/huawei/hem/jk;

    return-object p0

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;)Lcom/huawei/hem/gk$a;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/huawei/hem/gk$a;
    .locals 6

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/huawei/hem/zj$a;

    invoke-direct {v0}, Lcom/huawei/hem/zj$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hem/zj$a;->d(Lcom/huawei/hem/zj;Ljava/lang/String;)Lcom/huawei/hem/zj$a;

    invoke-virtual {v0}, Lcom/huawei/hem/zj$a;->a()Lcom/huawei/hem/zj;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/huawei/hem/gk$a;->f(Lcom/huawei/hem/zj;)Lcom/huawei/hem/gk$a;

    return-object p0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/huawei/hem/zj;)Lcom/huawei/hem/gk$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/gk$a;->a:Lcom/huawei/hem/zj;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
