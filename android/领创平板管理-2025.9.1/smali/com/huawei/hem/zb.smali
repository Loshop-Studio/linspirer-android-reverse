.class public Lcom/huawei/hem/zb;
.super Lcom/huawei/hem/jk;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/zb$a;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/yb;

.field public b:Lcom/huawei/hem/jk;

.field public c:Lcom/huawei/hem/zb$a;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/jk;Lcom/huawei/hem/yb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jk;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hem/zb;->a:Lcom/huawei/hem/yb;

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/zb;->b:Lcom/huawei/hem/jk;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/zb;->b:Lcom/huawei/hem/jk;

    invoke-virtual {v0}, Lcom/huawei/hem/jk;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/huawei/hem/bk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/zb;->b:Lcom/huawei/hem/jk;

    invoke-virtual {v0}, Lcom/huawei/hem/jk;->b()Lcom/huawei/hem/bk;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/huawei/hem/in;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/zb$a;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/zb$a;-><init>(Lcom/huawei/hem/zb;Lcom/huawei/hem/zn;)V

    iput-object v0, p0, Lcom/huawei/hem/zb;->c:Lcom/huawei/hem/zb$a;

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/rn;->a(Lcom/huawei/hem/zn;)Lcom/huawei/hem/in;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/zb;->b:Lcom/huawei/hem/jk;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/jk;->e(Lcom/huawei/hem/in;)V

    .line 4
    check-cast p1, Lcom/huawei/hem/un;

    invoke-virtual {p1}, Lcom/huawei/hem/un;->flush()V

    return-void
.end method
