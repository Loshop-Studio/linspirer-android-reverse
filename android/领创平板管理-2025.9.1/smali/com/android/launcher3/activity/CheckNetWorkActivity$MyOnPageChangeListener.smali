.class public Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "CheckNetWorkActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/CheckNetWorkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/CheckNetWorkActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/CheckNetWorkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;->a:Lcom/android/launcher3/activity/CheckNetWorkActivity;

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
    iget-object v0, p0, Lcom/android/launcher3/activity/CheckNetWorkActivity$MyOnPageChangeListener;->a:Lcom/android/launcher3/activity/CheckNetWorkActivity;

    invoke-static {v0, p1}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->e(Lcom/android/launcher3/activity/CheckNetWorkActivity;I)V

    return-void
.end method
