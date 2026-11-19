.class public Lcom/huawei/hem/bm;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:Lcom/huawei/hem/am;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/bm;->b:Lcom/huawei/hem/am;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/bm;->b:Lcom/huawei/hem/am;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lcom/huawei/hem/am;->l(ZII)V

    return-void
.end method
