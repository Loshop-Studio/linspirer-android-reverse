.class public Lcom/huawei/hem/xb;
.super Ljava/lang/Object;
.source "CommonCallBack.java"

# interfaces
.implements Lcom/huawei/hem/lj;


# instance fields
.field public a:Lcom/huawei/hem/yb;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/yb;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    .line 3
    iput-boolean p2, p0, Lcom/huawei/hem/xb;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/huawei/hem/kk;)V
    .locals 3

    const-string v0, "LTKLog2"

    if-nez p1, :cond_0

    const-string v1, "response null"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    new-instance v2, Lcom/huawei/hem/xb$b;

    invoke-direct {v2, p0}, Lcom/huawei/hem/xb$b;-><init>(Lcom/huawei/hem/xb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hem/mk;->h()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "response body null"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v1, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    new-instance v2, Lcom/huawei/hem/xb$c;

    invoke-direct {v2, p0}, Lcom/huawei/hem/xb$c;-><init>(Lcom/huawei/hem/xb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_1
    sget-object v1, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    new-instance v2, Lcom/huawei/hem/xb$d;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hem/xb$d;-><init>(Lcom/huawei/hem/xb;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "io exception "

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v0, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/hem/xb$e;

    invoke-direct {v1, p0}, Lcom/huawei/hem/xb$e;-><init>(Lcom/huawei/hem/xb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lcom/huawei/hem/kj;Ljava/io/IOException;)V
    .locals 2

    const-string p1, "exception:"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LTKLog2"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    if-nez p1, :cond_0

    const-string p1, "exception and call back empty"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hem/xb;->b:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/huawei/hem/sb;

    const/16 v1, -0x64

    invoke-direct {v0, v1, p2}, Lcom/huawei/hem/sb;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/huawei/hem/yb;->onFailure(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    sget-object p1, Lcom/huawei/hem/rb;->a:Landroid/os/Handler;

    new-instance v0, Lcom/huawei/hem/xb$a;

    invoke-direct {v0, p0, p2}, Lcom/huawei/hem/xb$a;-><init>(Lcom/huawei/hem/xb;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
