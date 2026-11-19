.class public Lcom/huawei/hem/x2;
.super Ljava/lang/Object;
.source "DataCleanRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/x2;->c:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    iput-object p2, p0, Lcom/huawei/hem/x2;->a:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

    iput p3, p0, Lcom/huawei/hem/x2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/x2;->a:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

    .line 2
    iget-object p1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/x2;->c:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    iget-object p1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    if-eqz p1, :cond_0

    .line 5
    iget v0, p0, Lcom/huawei/hem/x2;->b:I

    invoke-interface {p1, v0, p2}, Lcom/huawei/hem/k3;->a(IZ)V

    :cond_0
    return-void
.end method
