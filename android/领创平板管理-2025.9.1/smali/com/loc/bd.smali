.class public final Lcom/loc/bd;
.super Lcom/loc/bg;
.source "LogJsonDataStrategy.java"


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bg;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bd;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/loc/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bg;-><init>(Lcom/loc/bg;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/loc/bd;->b:Z

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 3

    iget-object p1, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/loc/bg;->d:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bd;->b:Z

    iget-object v0, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final b([B)V
    .locals 2

    invoke-static {p1}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/loc/bd;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bd;->b:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/loc/bd;->a:Ljava/lang/StringBuilder;

    const-string v1, "{\"log\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
