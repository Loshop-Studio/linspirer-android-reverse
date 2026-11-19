.class public Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/huawei/hem/f$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/huawei/hem/f;->c:Lcom/huawei/hem/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hem/f;->b(Ljava/lang/Class;)Lcom/huawei/hem/f$a;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Lcom/huawei/hem/f$a;

    return-void
.end method


# virtual methods
.method public d(Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Lcom/huawei/hem/f$a;

    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/huawei/hem/f$a;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Lcom/huawei/hem/f$a;->a(Ljava/util/List;Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;Ljava/lang/Object;)V

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/f$a;->a:Ljava/util/Map;

    sget-object v2, Lcom/huawei/hem/h$a;->ON_ANY:Lcom/huawei/hem/h$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hem/f$a;->a(Ljava/util/List;Lcom/huawei/hem/j;Lcom/huawei/hem/h$a;Ljava/lang/Object;)V

    return-void
.end method
