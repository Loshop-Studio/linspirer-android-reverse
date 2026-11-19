.class public Lcom/android/launcher3/fragment/home/HengxuanFragment$b;
.super Ljava/lang/Object;
.source "HengxuanFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/home/HengxuanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/HengxuanFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/HengxuanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment$b;->a:Lcom/android/launcher3/fragment/home/HengxuanFragment;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment$b;->a:Lcom/android/launcher3/fragment/home/HengxuanFragment;

    .line 2
    iput p1, v0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q(I)V

    return-void
.end method
