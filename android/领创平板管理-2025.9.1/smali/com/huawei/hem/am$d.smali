.class public final Lcom/huawei/hem/am$d;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/huawei/hem/am;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/am;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    .line 3
    iget-wide v1, v1, Lcom/huawei/hem/am;->l:J

    .line 4
    iget-object v3, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    .line 5
    iget-wide v3, v3, Lcom/huawei/hem/am;->k:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    .line 7
    iget-wide v4, v1, Lcom/huawei/hem/am;->k:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/huawei/hem/am;->k:J

    move v1, v3

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    const/4 v1, 0x0

    .line 10
    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v0, v2, v2, v1}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/am$d;->b:Lcom/huawei/hem/am;

    invoke-virtual {v0, v3, v2, v3}, Lcom/huawei/hem/am;->l(ZII)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
