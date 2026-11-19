.class public Lcom/huawei/hem/am$g;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"

# interfaces
.implements Lcom/huawei/hem/km$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final b:Lcom/huawei/hem/km;

.field public final synthetic c:Lcom/huawei/hem/am;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/am;Lcom/huawei/hem/km;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/am$g;->b:Lcom/huawei/hem/km;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/hem/wl;->INTERNAL_ERROR:Lcom/huawei/hem/wl;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/am$g;->b:Lcom/huawei/hem/km;

    invoke-virtual {v2, p0}, Lcom/huawei/hem/km;->d(Lcom/huawei/hem/km$b;)V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/am$g;->b:Lcom/huawei/hem/km;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/huawei/hem/km;->c(ZLcom/huawei/hem/km$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/huawei/hem/wl;->NO_ERROR:Lcom/huawei/hem/wl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 6
    :goto_1
    :try_start_2
    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    .line 7
    sget-object v0, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :goto_2
    iget-object v3, p0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v3, v2, v0, v1}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/am$g;->b:Lcom/huawei/hem/km;

    invoke-static {v0}, Lcom/huawei/hem/tk;->d(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v3

    .line 10
    :goto_3
    iget-object v4, p0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    invoke-virtual {v4, v2, v0, v1}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hem/am$g;->b:Lcom/huawei/hem/km;

    invoke-static {v0}, Lcom/huawei/hem/tk;->d(Ljava/io/Closeable;)V

    throw v3
.end method
