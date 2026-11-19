.class public Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;
.super Landroid/os/Handler;
.source "CheckNetWorkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 3
    iget v1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->y:I

    const/16 v2, 0x21

    const/16 v3, 0x64

    if-ne v1, v2, :cond_1

    .line 4
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->v:Landroid/widget/ImageView;

    const v1, 0x7f060077

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->w:Landroid/widget/ImageView;

    const v1, 0x7f060079

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    .line 8
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->x:Landroid/widget/ImageView;

    const v1, 0x7f06007b

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 11
    iget v1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->y:I

    if-ne v1, v3, :cond_4

    .line 12
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->t:Landroid/widget/ProgressBar;

    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    const/4 v0, 0x0

    .line 15
    iput v0, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->y:I

    .line 16
    iget-object v0, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    .line 17
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->A:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    add-int/2addr v1, v0

    .line 19
    iput v1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->y:I

    .line 20
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->t:Landroid/widget/ProgressBar;

    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$b;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 23
    iget-object p1, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->j:Lcom/android/launcher3/adapter/CheckNetworkRecyclerViewAdapter;

    .line 24
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
