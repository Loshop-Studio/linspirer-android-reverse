.class public abstract Lcom/loc/ag;
.super Ljava/lang/Object;
.source "EncryptProcessor.java"


# instance fields
.field public a:Lcom/loc/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ag;->a:Lcom/loc/ag;

    return-void
.end method


# virtual methods
.method public abstract a([B)[B
.end method

.method public final b([B)[B
    .locals 1

    iget-object v0, p0, Lcom/loc/ag;->a:Lcom/loc/ag;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/loc/ag;->b([B)[B

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/ag;->a([B)[B

    move-result-object p1

    return-object p1
.end method
