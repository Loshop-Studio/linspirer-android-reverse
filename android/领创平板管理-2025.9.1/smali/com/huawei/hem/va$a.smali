.class public Lcom/huawei/hem/va$a;
.super Lcom/huawei/hem/wa;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hem/wa;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 5

    iget-object v0, p0, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/ba;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    or-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 4
    invoke-static {v3, v4}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    iget-boolean v3, v3, Lcom/huawei/hem/ba;->a:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    or-int/2addr v0, v3

    .line 6
    iget-object v3, p0, Lcom/huawei/hem/va$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hem/va$a;->b:Ljava/lang/String;

    .line 7
    invoke-static {v3, v4}, Lcom/huawei/hem/y4;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ba;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    iget-boolean v3, v3, Lcom/huawei/hem/ba;->b:Z

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    or-int/2addr v0, v1

    return v0
.end method
