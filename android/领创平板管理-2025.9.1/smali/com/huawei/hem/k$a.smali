.class public Lcom/huawei/hem/k$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/h$b;

.field public b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/i;Lcom/huawei/hem/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/m;->c(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/k$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/k;->b(Lcom/huawei/hem/h$a;)Lcom/huawei/hem/h$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    invoke-static {v1, v0}, Lcom/huawei/hem/k;->d(Lcom/huawei/hem/h$b;Lcom/huawei/hem/h$b;)Lcom/huawei/hem/h$b;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/k$a;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->d(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V

    .line 4
    iput-object v0, p0, Lcom/huawei/hem/k$a;->a:Lcom/huawei/hem/h$b;

    return-void
.end method
