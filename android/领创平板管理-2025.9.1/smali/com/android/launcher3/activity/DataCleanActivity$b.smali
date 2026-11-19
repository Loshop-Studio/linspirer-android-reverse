.class public Lcom/android/launcher3/activity/DataCleanActivity$b;
.super Ljava/lang/Object;
.source "DataCleanActivity.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/DataCleanActivity;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/activity/DataCleanActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/DataCleanActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->b:Lcom/android/launcher3/activity/DataCleanActivity;

    iput p2, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->a:I

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordClearEvent()V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->b:Lcom/android/launcher3/activity/DataCleanActivity;

    new-instance p2, Lcom/android/launcher3/activity/DataCleanActivity$c;

    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->b:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-direct {p2, v0}, Lcom/android/launcher3/activity/DataCleanActivity$c;-><init>(Lcom/android/launcher3/activity/DataCleanActivity;)V

    .line 4
    iput-object p2, p1, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$b;->b:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->i:Lcom/android/launcher3/activity/DataCleanActivity$c;

    .line 7
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
