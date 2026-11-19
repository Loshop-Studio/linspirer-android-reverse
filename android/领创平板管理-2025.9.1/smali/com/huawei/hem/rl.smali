.class public final Lcom/huawei/hem/rl;
.super Lcom/huawei/hem/mk;
.source "RealResponseBody.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:J

.field public final c:Lcom/huawei/hem/jn;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/huawei/hem/jn;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/mk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/rl;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/huawei/hem/rl;->b:J

    .line 4
    iput-object p4, p0, Lcom/huawei/hem/rl;->c:Lcom/huawei/hem/jn;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/rl;->b:J

    return-wide v0
.end method

.method public f()Lcom/huawei/hem/bk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/rl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/huawei/hem/bk;->b(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Lcom/huawei/hem/jn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/rl;->c:Lcom/huawei/hem/jn;

    return-object v0
.end method
