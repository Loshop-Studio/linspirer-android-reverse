.class public final Lcom/loc/bc;
.super Lcom/loc/bg;
.source "HeaderAddStrategy.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public e:Lcom/loc/ag;

.field public f:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/loc/bg;Lcom/loc/ag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/loc/bg;-><init>(Lcom/loc/bg;)V

    iput-object p1, p0, Lcom/loc/bc;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/loc/bc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/bc;->e:Lcom/loc/ag;

    iput-object p5, p0, Lcom/loc/bc;->f:[Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bc;->f:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ofm"

    const-string v2, "gpj"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 3

    invoke-static {p1}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/loc/bc;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bc;->e:Lcom/loc/ag;

    invoke-static {v0}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ag;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"pinfo\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"els\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
