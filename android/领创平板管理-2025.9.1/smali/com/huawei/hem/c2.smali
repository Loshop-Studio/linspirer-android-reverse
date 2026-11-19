.class public final synthetic Lcom/huawei/hem/c2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/LockActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/activity/LockActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/c2;->a:Lcom/android/launcher3/activity/LockActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/c2;->a:Lcom/android/launcher3/activity/LockActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/activity/LockActivity;->g(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
