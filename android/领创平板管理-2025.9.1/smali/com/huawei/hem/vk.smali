.class public Lcom/huawei/hem/vk;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/huawei/hem/ao;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/huawei/hem/jn;

.field public final synthetic c:Lcom/huawei/hem/xk;

.field public final synthetic d:Lcom/huawei/hem/in;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/wk;Lcom/huawei/hem/jn;Lcom/huawei/hem/xk;Lcom/huawei/hem/in;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/huawei/hem/vk;->b:Lcom/huawei/hem/jn;

    iput-object p3, p0, Lcom/huawei/hem/vk;->c:Lcom/huawei/hem/xk;

    iput-object p4, p0, Lcom/huawei/hem/vk;->d:Lcom/huawei/hem/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/vk;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lcom/huawei/hem/tk;->j(Lcom/huawei/hem/ao;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hem/vk;->a:Z

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/vk;->c:Lcom/huawei/hem/xk;

    invoke-interface {v0}, Lcom/huawei/hem/xk;->b()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vk;->b:Lcom/huawei/hem/jn;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->close()V

    return-void
.end method

.method public e(Lcom/huawei/hem/hn;J)J
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/vk;->b:Lcom/huawei/hem/jn;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/hem/ao;->e(Lcom/huawei/hem/hn;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/huawei/hem/vk;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hem/vk;->a:Z

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/vk;->d:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/zn;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/vk;->d:Lcom/huawei/hem/in;

    invoke-interface {v0}, Lcom/huawei/hem/in;->m()Lcom/huawei/hem/hn;

    move-result-object v3

    .line 6
    iget-wide v0, p1, Lcom/huawei/hem/hn;->b:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/huawei/hem/hn;->c(Lcom/huawei/hem/hn;JJ)Lcom/huawei/hem/hn;

    .line 8
    iget-object p1, p0, Lcom/huawei/hem/vk;->d:Lcom/huawei/hem/in;

    invoke-interface {p1}, Lcom/huawei/hem/in;->E()Lcom/huawei/hem/in;

    return-wide p2

    :catch_0
    move-exception p1

    .line 9
    iget-boolean p2, p0, Lcom/huawei/hem/vk;->a:Z

    if-nez p2, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/huawei/hem/vk;->a:Z

    .line 11
    iget-object p2, p0, Lcom/huawei/hem/vk;->c:Lcom/huawei/hem/xk;

    invoke-interface {p2}, Lcom/huawei/hem/xk;->b()V

    .line 12
    :cond_2
    throw p1
.end method

.method public n()Lcom/huawei/hem/bo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vk;->b:Lcom/huawei/hem/jn;

    invoke-interface {v0}, Lcom/huawei/hem/ao;->n()Lcom/huawei/hem/bo;

    move-result-object v0

    return-object v0
.end method
