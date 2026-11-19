.class public Lcom/huawei/hem/hk;
.super Lcom/huawei/hem/jk;
.source "RequestBody.java"


# instance fields
.field public final synthetic a:Lcom/huawei/hem/bk;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/huawei/hem/bk;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/hk;->a:Lcom/huawei/hem/bk;

    iput p2, p0, Lcom/huawei/hem/hk;->b:I

    iput-object p3, p0, Lcom/huawei/hem/hk;->c:[B

    iput p4, p0, Lcom/huawei/hem/hk;->d:I

    invoke-direct {p0}, Lcom/huawei/hem/jk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hem/hk;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lcom/huawei/hem/bk;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/hk;->a:Lcom/huawei/hem/bk;

    return-object v0
.end method

.method public e(Lcom/huawei/hem/in;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/hk;->c:[B

    iget v1, p0, Lcom/huawei/hem/hk;->d:I

    iget v2, p0, Lcom/huawei/hem/hk;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/huawei/hem/in;->o([BII)Lcom/huawei/hem/in;

    return-void
.end method
