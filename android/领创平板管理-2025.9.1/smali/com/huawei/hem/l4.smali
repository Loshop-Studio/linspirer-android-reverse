.class public Lcom/huawei/hem/l4;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/l4;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    iput-object p2, p0, Lcom/huawei/hem/l4;->a:Landroid/widget/PopupWindow;

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
    iget-object p1, p0, Lcom/huawei/hem/l4;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    invoke-static {p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->j(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/l4;->a:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/l4;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/l4;->b:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTime(Landroid/content/Context;Z)V

    return-void
.end method
