.class public Lcom/huawei/hem/t2;
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
    iput-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 3
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->n:Landroid/view/View;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 9
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const v3, 0x7f0c013a

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 12
    iput-boolean v1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    .line 13
    iput-boolean v4, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    .line 14
    iget-object v1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    const v2, 0x7f0c0139

    .line 15
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 17
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j:Landroid/widget/EditText;

    const v1, 0x7f0c00f2

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 19
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 20
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 23
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 26
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 29
    iget-object v0, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 32
    iget-object v5, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 35
    iget-object v3, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->s:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 38
    iput-boolean v4, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->q:Z

    .line 39
    iput-boolean v1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->p:Z

    .line 40
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 43
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->g:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/huawei/hem/t2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    .line 46
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->i:Lcom/android/launcher3/view/GestureLockLayout;

    .line 47
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
