.class public Lcom/android/launcher3/activity/DataCleanActivity$a;
.super Ljava/lang/Object;
.source "DataCleanActivity.java"

# interfaces
.implements Lcom/huawei/hem/k3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/DataCleanActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/DataCleanActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/DataCleanActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->setSelect(Z)V

    .line 5
    iget-object p2, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 6
    iget-object p2, p2, Lcom/android/launcher3/activity/DataCleanActivity;->m:Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;

    .line 7
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 2
    iget-boolean v1, v0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const-class v2, Lcom/android/launcher3/activity/CleanRubbishActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "rubbishState"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$a;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
