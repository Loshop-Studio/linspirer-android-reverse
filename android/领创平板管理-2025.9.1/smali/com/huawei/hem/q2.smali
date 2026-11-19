.class public Lcom/huawei/hem/q2;
.super Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallbackAdapter;
.source "CheckPwdGestureActivity.java"


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFinish(ZI)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0140

    goto :goto_0

    :cond_0
    const v0, 0x7f0c013f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p2, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 5
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {p1, v1}, Lcom/huawei/hem/y5;->U(Z)V

    .line 7
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 8
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableHome()V

    .line 9
    iget-object p1, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onSwipeMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f(Landroid/view/View;)V

    return-void
.end method

.method public onToast(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 5
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const p1, -0xcdce

    if-ne p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/q2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 8
    iget-object p2, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f(Landroid/view/View;)V

    :cond_1
    return-void
.end method
