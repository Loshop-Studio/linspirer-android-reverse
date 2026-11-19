.class public Lcom/android/launcher3/fragment/home/MainFragment$a;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/home/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/MainFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/MainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment$a;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment$a;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    iput p1, v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment$a;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q(I)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment$a;->a:Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-static {p1}, Lcom/android/launcher3/fragment/home/MainFragment;->s(Lcom/android/launcher3/fragment/home/MainFragment;)V

    return-void
.end method
