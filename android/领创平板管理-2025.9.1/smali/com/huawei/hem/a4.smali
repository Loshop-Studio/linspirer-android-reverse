.class public Lcom/huawei/hem/a4;
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
    iput-object p1, p0, Lcom/huawei/hem/a4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    iput-object p2, p0, Lcom/huawei/hem/a4;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/a4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/a4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/a4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-static {p1}, Lcom/android/launcher3/fragment/home/MainFragment;->t(Lcom/android/launcher3/fragment/home/MainFragment;)V

    :cond_1
    return-void
.end method
