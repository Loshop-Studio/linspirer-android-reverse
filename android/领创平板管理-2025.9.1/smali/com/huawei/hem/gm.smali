.class public Lcom/huawei/hem/gm;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:Lcom/huawei/hem/lm;

.field public final synthetic c:Lcom/huawei/hem/am$g;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;Lcom/huawei/hem/lm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/gm;->c:Lcom/huawei/hem/am$g;

    iput-object p4, p0, Lcom/huawei/hem/gm;->b:Lcom/huawei/hem/lm;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/gm;->c:Lcom/huawei/hem/am$g;

    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v0, v0, Lcom/huawei/hem/am;->b:Lcom/huawei/hem/am$e;

    iget-object v1, p0, Lcom/huawei/hem/gm;->b:Lcom/huawei/hem/lm;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/am$e;->b(Lcom/huawei/hem/lm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    const/4 v2, 0x4

    const-string v3, "Http2Connection.Listener failure for "

    .line 3
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hem/gm;->c:Lcom/huawei/hem/am$g;

    iget-object v4, v4, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v4, v4, Lcom/huawei/hem/am;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/huawei/hem/wm;->n(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hem/gm;->b:Lcom/huawei/hem/lm;

    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/hem/lm;->c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
