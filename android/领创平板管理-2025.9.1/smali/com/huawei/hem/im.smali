.class public Lcom/huawei/hem/im;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# instance fields
.field public final synthetic b:Lcom/huawei/hem/am$g;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am$g;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/im;->b:Lcom/huawei/hem/am$g;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/im;->b:Lcom/huawei/hem/am$g;

    iget-object v0, v0, Lcom/huawei/hem/am$g;->c:Lcom/huawei/hem/am;

    iget-object v1, v0, Lcom/huawei/hem/am;->b:Lcom/huawei/hem/am$e;

    invoke-virtual {v1, v0}, Lcom/huawei/hem/am$e;->a(Lcom/huawei/hem/am;)V

    return-void
.end method
