.class public Lcom/huawei/hem/s2;
.super Ljava/lang/Object;
.source "CheckPwdGestureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 3
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->o:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->c:Landroid/content/Context;

    const v0, 0x7f0c0115

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 7
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0c0139

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 10
    iput-boolean v3, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    .line 11
    iput-boolean v3, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    .line 12
    iget-object v1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 15
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 18
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f0c00f1

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 20
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 21
    iget-object v0, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f0c0032

    .line 22
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 24
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 27
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 30
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 33
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 36
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    const-string v0, ""

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 39
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v4, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    .line 43
    iput-boolean v3, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    .line 44
    iget-object v0, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 47
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->l:Landroid/widget/LinearLayout;

    .line 48
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 50
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 53
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 56
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    .line 57
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/huawei/hem/s2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 59
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
