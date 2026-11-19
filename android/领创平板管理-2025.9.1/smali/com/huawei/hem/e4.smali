.class public Lcom/huawei/hem/e4;
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
    iput-object p1, p0, Lcom/huawei/hem/e4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    iput-object p2, p0, Lcom/huawei/hem/e4;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/e4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x4

    const-string v1, "action"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/e4;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-static {v0, v1, p1}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hem/e4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
