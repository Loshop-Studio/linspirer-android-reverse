.class public Lcom/huawei/hem/r2;
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
    iput-object p1, p0, Lcom/huawei/hem/r2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

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
    iget-object p1, p0, Lcom/huawei/hem/r2;->a:Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;->j(Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;)V

    return-void
.end method
