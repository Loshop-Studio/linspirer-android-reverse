.class public Lcom/huawei/hem/xb$a;
.super Ljava/lang/Object;
.source "CommonCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/xb;->b(Lcom/huawei/hem/kj;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lcom/huawei/hem/xb;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/xb;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/xb$a;->b:Lcom/huawei/hem/xb;

    iput-object p2, p0, Lcom/huawei/hem/xb$a;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/xb$a;->b:Lcom/huawei/hem/xb;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    .line 3
    new-instance v1, Lcom/huawei/hem/sb;

    const/16 v2, -0x64

    iget-object v3, p0, Lcom/huawei/hem/xb$a;->a:Ljava/io/IOException;

    invoke-direct {v1, v2, v3}, Lcom/huawei/hem/sb;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/huawei/hem/yb;->onFailure(Ljava/lang/Object;)V

    return-void
.end method
