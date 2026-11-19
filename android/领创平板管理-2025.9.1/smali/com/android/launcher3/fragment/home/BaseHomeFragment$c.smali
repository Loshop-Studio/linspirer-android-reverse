.class public Lcom/android/launcher3/fragment/home/BaseHomeFragment$c;
.super Ljava/lang/Object;
.source "BaseHomeFragment.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k()V
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
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$c;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

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
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$c;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m(Z)V

    return-void
.end method
