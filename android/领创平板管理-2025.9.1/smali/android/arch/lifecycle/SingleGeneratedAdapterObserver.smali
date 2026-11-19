.class public Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/g;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lcom/huawei/hem/g;

    return-void
.end method


# virtual methods
.method public d(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lcom/huawei/hem/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/huawei/hem/g;->a(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;ZLcom/huawei/hem/n;)V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->a:Lcom/huawei/hem/g;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/huawei/hem/g;->a(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;ZLcom/huawei/hem/n;)V

    return-void
.end method
