.class public Lcom/huawei/hem/lk;
.super Lcom/huawei/hem/mk;
.source "ResponseBody.java"


# instance fields
.field public final synthetic a:Lcom/huawei/hem/bk;

.field public final synthetic b:J

.field public final synthetic c:Lcom/huawei/hem/jn;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/bk;JLcom/huawei/hem/jn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lk;->a:Lcom/huawei/hem/bk;

    iput-wide p2, p0, Lcom/huawei/hem/lk;->b:J

    iput-object p4, p0, Lcom/huawei/hem/lk;->c:Lcom/huawei/hem/jn;

    invoke-direct {p0}, Lcom/huawei/hem/mk;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/lk;->b:J

    return-wide v0
.end method

.method public f()Lcom/huawei/hem/bk;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lk;->a:Lcom/huawei/hem/bk;

    return-object v0
.end method

.method public g()Lcom/huawei/hem/jn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lk;->c:Lcom/huawei/hem/jn;

    return-object v0
.end method
