.class public Lcom/huawei/hem/z7$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hem/i8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/z7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

.field public d:Landroid/content/Context;

.field public e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public f:Lcom/huawei/hem/a8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/a8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Lcom/huawei/hem/a8;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/z7$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iput-object p4, p0, Lcom/huawei/hem/z7$a;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/huawei/hem/z7$a;->e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p6, p0, Lcom/huawei/hem/z7$a;->f:Lcom/huawei/hem/a8;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iget-object v1, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    const-string v0, "a"

    const-string v1, "access local config for return a domain."

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/hem/z7$a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/z7$a;->e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {v0, v1}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hem/z7$a;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/hem/z7$a;->f:Lcom/huawei/hem/a8;

    iget-object v5, p0, Lcom/huawei/hem/z7$a;->e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v6, p0, Lcom/huawei/hem/z7$a;->a:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/hem/e8;->c(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    invoke-interface {v1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/huawei/hem/r8;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcom/huawei/hem/r8;->g:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/z7$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/huawei/hem/z7;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    iget-object v0, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/z7$a;->b:Ljava/util/Map;

    if-nez p1, :cond_2

    const-string p1, "a"

    const-string v0, "access local config for return a domain."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/huawei/hem/z7$a;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/z7$a;->e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-static {p1, v0}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hem/z7$a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hem/z7$a;->f:Lcom/huawei/hem/a8;

    iget-object v4, p0, Lcom/huawei/hem/z7$a;->e:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v5, p0, Lcom/huawei/hem/z7$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hem/e8;->c(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackSuccess(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/huawei/hem/z7$a;->c:Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;

    const/4 v0, -0x5

    invoke-interface {p1, v0}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    :goto_1
    return-void
.end method
