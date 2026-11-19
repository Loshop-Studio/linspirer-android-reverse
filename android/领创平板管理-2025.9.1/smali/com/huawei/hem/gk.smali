.class public final Lcom/huawei/hem/gk;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/gk$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/zj;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/huawei/hem/yj;

.field public final d:Lcom/huawei/hem/jk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/Map;
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

.field public volatile f:Lcom/huawei/hem/jj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hem/gk$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/gk$a;->a:Lcom/huawei/hem/zj;

    iput-object v0, p0, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/gk$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/huawei/hem/gk$a;->c:Lcom/huawei/hem/yj$a;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/huawei/hem/yj;

    invoke-direct {v1, v0}, Lcom/huawei/hem/yj;-><init>(Lcom/huawei/hem/yj$a;)V

    .line 6
    iput-object v1, p0, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    .line 7
    iget-object v0, p1, Lcom/huawei/hem/gk$a;->d:Lcom/huawei/hem/jk;

    iput-object v0, p0, Lcom/huawei/hem/gk;->d:Lcom/huawei/hem/jk;

    .line 8
    iget-object p1, p1, Lcom/huawei/hem/gk$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/huawei/hem/tk;->p(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
.end method


# virtual methods
.method public a()Lcom/huawei/hem/jj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/gk;->f:Lcom/huawei/hem/jj;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/gk;->c:Lcom/huawei/hem/yj;

    invoke-static {v0}, Lcom/huawei/hem/jj;->a(Lcom/huawei/hem/yj;)Lcom/huawei/hem/jj;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/gk;->f:Lcom/huawei/hem/jj;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Request{method="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/gk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
