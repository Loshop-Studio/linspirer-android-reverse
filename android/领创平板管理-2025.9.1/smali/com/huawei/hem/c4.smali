.class public Lcom/huawei/hem/c4;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Lcom/android/launcher3/fragment/home/MainFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/c4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    iput-object p2, p0, Lcom/huawei/hem/c4;->a:Landroid/widget/PopupWindow;

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
    iget-object p1, p0, Lcom/huawei/hem/c4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/c4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/c4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-static {p1}, Lcom/android/launcher3/fragment/home/MainFragment;->u(Lcom/android/launcher3/fragment/home/MainFragment;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/c4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-virtual {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->j()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/c4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-virtual {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k()V

    :cond_2
    :goto_0
    return-void
.end method
