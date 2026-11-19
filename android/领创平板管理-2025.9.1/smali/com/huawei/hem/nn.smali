.class public Lcom/huawei/hem/nn;
.super Lcom/huawei/hem/bo;
.source "ForwardingTimeout.java"


# instance fields
.field public e:Lcom/huawei/hem/bo;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/bo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/bo;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0}, Lcom/huawei/hem/bo;->a()Lcom/huawei/hem/bo;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0}, Lcom/huawei/hem/bo;->b()Lcom/huawei/hem/bo;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0}, Lcom/huawei/hem/bo;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/bo;->d(J)Lcom/huawei/hem/bo;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0}, Lcom/huawei/hem/bo;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0}, Lcom/huawei/hem/bo;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/nn;->e:Lcom/huawei/hem/bo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hem/bo;->g(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hem/bo;

    move-result-object p1

    return-object p1
.end method
