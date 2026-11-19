.class public Lcom/huawei/hem/y2;
.super Ljava/lang/Object;
.source "DataCleanRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/y2;->b:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    iput p2, p0, Lcom/huawei/hem/y2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/y2;->b:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    iget-object p1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lcom/huawei/hem/y2;->a:I

    invoke-interface {p1, v0}, Lcom/huawei/hem/k3;->b(I)V

    :cond_1
    return-void
.end method
