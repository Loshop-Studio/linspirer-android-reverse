.class public Lcom/android/launcher3/activity/DataCleanActivity$d;
.super Landroid/os/AsyncTask;
.source "DataCleanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/DataCleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/DataCleanActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/DataCleanActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/huawei/hem/t5;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/t5;->c(Ljava/io/File;Landroid/content/Context;)V

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    new-array v1, p1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v1, 0x50

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/launcher3/activity/DataCleanActivity;->h(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/DataCleanActivity;->g(Lcom/android/launcher3/activity/DataCleanActivity;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/android/launcher3/activity/DataCleanActivity;->g:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/activity/DataCleanActivity;->h(Z)V

    .line 5
    sget-object v0, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    sget-object v0, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    sget-object v0, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    sget-object v0, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    sget-object v0, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    sget-object v0, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    sget-object v0, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 4
    iget-object v0, v0, Lcom/android/launcher3/activity/DataCleanActivity;->k:Lcom/android/launcher3/view/CircleProgressView;

    const/4 v1, 0x0

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/view/CircleProgressView;->setProgress(I)V

    .line 6
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-static {p1}, Lcom/huawei/hem/de;->a(Landroid/content/Context;)I

    move-result v0

    .line 8
    iput v0, p1, Lcom/android/launcher3/activity/DataCleanActivity;->b:I

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$d;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 10
    iget-object v0, p1, Lcom/android/launcher3/activity/DataCleanActivity;->k:Lcom/android/launcher3/view/CircleProgressView;

    .line 11
    iget p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->b:I

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/launcher3/view/CircleProgressView;->setProgress(I)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    return-void
.end method
