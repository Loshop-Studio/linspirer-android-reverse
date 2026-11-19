.class public Lcom/huawei/hem/cm;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/huawei/hem/am;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/cm;->d:Lcom/huawei/hem/am;

    iput p4, p0, Lcom/huawei/hem/cm;->b:I

    iput-object p5, p0, Lcom/huawei/hem/cm;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/cm;->d:Lcom/huawei/hem/am;

    iget-object v1, v0, Lcom/huawei/hem/am;->j:Lcom/huawei/hem/om;

    iget v2, p0, Lcom/huawei/hem/cm;->b:I

    check-cast v1, Lcom/huawei/hem/om$a;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    sget-object v1, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hem/mm;->i(ILcom/huawei/hem/wl;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/cm;->d:Lcom/huawei/hem/am;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hem/cm;->d:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->x:Ljava/util/Set;

    iget v2, p0, Lcom/huawei/hem/cm;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
