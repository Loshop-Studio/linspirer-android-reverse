.class public Lcom/huawei/hem/xb$c;
.super Ljava/lang/Object;
.source "CommonCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/xb;->a(Lcom/huawei/hem/kk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/xb;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/xb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/xb$c;->a:Lcom/huawei/hem/xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/xb$c;->a:Lcom/huawei/hem/xb;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    .line 3
    new-instance v1, Lcom/huawei/hem/sb;

    const/16 v2, -0x12c

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/huawei/hem/sb;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/huawei/hem/yb;->onFailure(Ljava/lang/Object;)V

    return-void
.end method
