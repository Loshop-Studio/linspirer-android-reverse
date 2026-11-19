.class public Lcom/huawei/hem/f4;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/MainFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/MainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/f4;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelButton(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/f4;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/launcher3/fragment/home/MainFragment;->w(Lcom/android/launcher3/fragment/home/MainFragment;I)V

    return-void
.end method

.method public clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/f4;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/launcher3/fragment/home/MainFragment;->w(Lcom/android/launcher3/fragment/home/MainFragment;I)V

    return-void
.end method
