.class public Lcom/huawei/hem/z3;
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
    iput-object p1, p0, Lcom/huawei/hem/z3;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    iput-object p2, p0, Lcom/huawei/hem/z3;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/z3;->b:Lcom/android/launcher3/fragment/home/MainFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/DeviceInfoActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/z3;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
