.class public final Lcom/loc/ae;
.super Lcom/loc/ag;
.source "ADDNumEncryptProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ag;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/ag;-><init>(Lcom/loc/ag;)V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/huawei/hem/l1;->e([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/l1;->n(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
