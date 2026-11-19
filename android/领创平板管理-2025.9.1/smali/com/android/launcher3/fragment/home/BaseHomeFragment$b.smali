.class public Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;
.super Ljava/lang/Object;
.source "BaseHomeFragment.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/fragment/home/BaseHomeFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Lcom/huawei/hem/y4;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const p2, 0x7f0c00bf

    invoke-static {p1, p2}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$b;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const p2, 0x7f0c00f2

    invoke-static {p1, p2}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
