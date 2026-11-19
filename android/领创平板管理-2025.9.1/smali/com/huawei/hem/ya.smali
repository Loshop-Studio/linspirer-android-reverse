.class public Lcom/huawei/hem/ya;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/ya;->a:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/hem/ya;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hem/ya;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/hem/ya;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
