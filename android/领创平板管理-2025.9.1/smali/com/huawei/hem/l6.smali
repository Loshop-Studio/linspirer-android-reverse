.class public Lcom/huawei/hem/l6;
.super Ljava/lang/Object;
.source "FnfSDKProxy.java"


# instance fields
.field public a:Lcom/huawei/hem/n6;

.field public b:Lcom/huawei/hem/o6;

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Lcom/huawei/hem/m6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/l6$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/l6$a;-><init>(Lcom/huawei/hem/l6;)V

    iput-object v0, p0, Lcom/huawei/hem/l6;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method
