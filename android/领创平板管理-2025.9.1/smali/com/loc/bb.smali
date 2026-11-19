.class public final Lcom/loc/bb;
.super Lcom/loc/bg;
.source "EncryptRsaDataStrategy.java"


# instance fields
.field public a:Lcom/loc/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bg;-><init>()V

    new-instance v0, Lcom/loc/ai;

    invoke-direct {v0}, Lcom/loc/ai;-><init>()V

    iput-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ag;

    return-void
.end method

.method public constructor <init>(Lcom/loc/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bg;-><init>(Lcom/loc/bg;)V

    new-instance p1, Lcom/loc/ai;

    invoke-direct {p1}, Lcom/loc/ai;-><init>()V

    iput-object p1, p0, Lcom/loc/bb;->a:Lcom/loc/ag;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 1

    iget-object v0, p0, Lcom/loc/bb;->a:Lcom/loc/ag;

    invoke-virtual {v0, p1}, Lcom/loc/ag;->b([B)[B

    move-result-object p1

    return-object p1
.end method
