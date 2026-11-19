.class public Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;
.super Ljava/lang/Object;
.source "CheckNetWorkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    const-wide/16 v1, 0x78

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$a;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 5
    iget-object v0, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
