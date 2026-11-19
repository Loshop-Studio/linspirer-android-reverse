.class public Lcom/huawei/hem/fm;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/huawei/hem/wl;

.field public final synthetic d:Lcom/huawei/hem/am;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILcom/huawei/hem/wl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/fm;->d:Lcom/huawei/hem/am;

    iput p4, p0, Lcom/huawei/hem/fm;->b:I

    iput-object p5, p0, Lcom/huawei/hem/fm;->c:Lcom/huawei/hem/wl;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/fm;->d:Lcom/huawei/hem/am;

    iget-object v1, v0, Lcom/huawei/hem/am;->j:Lcom/huawei/hem/om;

    check-cast v1, Lcom/huawei/hem/om$a;

    if-eqz v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/fm;->d:Lcom/huawei/hem/am;

    iget-object v1, v1, Lcom/huawei/hem/am;->x:Ljava/util/Set;

    iget v2, p0, Lcom/huawei/hem/fm;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
