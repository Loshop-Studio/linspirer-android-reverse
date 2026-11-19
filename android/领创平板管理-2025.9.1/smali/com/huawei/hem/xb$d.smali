.class public Lcom/huawei/hem/xb$d;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/huawei/hem/xb;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/xb;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/xb$d;->b:Lcom/huawei/hem/xb;

    iput-object p2, p0, Lcom/huawei/hem/xb$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/xb$d;->b:Lcom/huawei/hem/xb;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/xb;->a:Lcom/huawei/hem/yb;

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/xb$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/huawei/hem/yb;->onSucess(Ljava/lang/String;)V

    return-void
.end method
