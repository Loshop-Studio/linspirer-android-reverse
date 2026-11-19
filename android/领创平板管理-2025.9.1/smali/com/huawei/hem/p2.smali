.class public final synthetic Lcom/huawei/hem/p2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/p2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/p2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->k(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
