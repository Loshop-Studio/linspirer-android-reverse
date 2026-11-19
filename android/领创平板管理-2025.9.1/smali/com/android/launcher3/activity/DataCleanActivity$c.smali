.class public Lcom/android/launcher3/activity/DataCleanActivity$c;
.super Landroid/os/AsyncTask;
.source "DataCleanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/DataCleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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
    iput-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 3
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_b

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    .line 8
    :goto_0
    sget-object v1, Lcom/huawei/hem/t5;->j:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 9
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/huawei/hem/t5;->j:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/huawei/hem/ee;->b(Ljava/io/File;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/huawei/hem/t5;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 13
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v0

    .line 15
    :goto_1
    sget-object v2, Lcom/huawei/hem/t5;->l:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_5

    .line 16
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->l:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v3, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    move v4, v0

    .line 20
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 21
    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/huawei/hem/ee;->b(Ljava/io/File;)V

    .line 22
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/huawei/hem/ee;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 24
    :cond_5
    sget-object p1, Lcom/huawei/hem/t5;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 26
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v2, 0x2

    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v0

    .line 28
    :goto_4
    sget-object v2, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 29
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {v2}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    .line 31
    iget-object v3, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/huawei/hem/ee;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 32
    :cond_7
    sget-object p1, Lcom/huawei/hem/t5;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 34
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v2, 0x3

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v0

    .line 36
    :goto_5
    sget-object v2, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    .line 37
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v2}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 39
    :cond_9
    sget-object p1, Lcom/huawei/hem/t5;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 40
    :cond_a
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 41
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v2, 0x4

    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v0

    .line 43
    :goto_6
    sget-object v2, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    .line 44
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {v2}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 46
    :cond_b
    sget-object p1, Lcom/huawei/hem/t5;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 47
    :cond_c
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 48
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v2, 0x5

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v0

    .line 50
    :goto_7
    sget-object v2, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_d

    .line 51
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v2}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 53
    :cond_d
    sget-object p1, Lcom/huawei/hem/t5;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 54
    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    .line 55
    iget-object p1, p1, Lcom/android/launcher3/activity/DataCleanActivity;->l:Ljava/util/List;

    const/4 v2, 0x6

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v0

    .line 57
    :goto_8
    sget-object v2, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_f

    .line 58
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v2}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/huawei/hem/ee;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 61
    :cond_f
    sget-object p1, Lcom/huawei/hem/t5;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_10
    move p1, v1

    :goto_9
    const/16 v2, 0x64

    if-gt p1, v2, :cond_12

    new-array v2, v1, [Ljava/lang/Integer;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_11
    const-wide/16 v2, 0x50

    .line 64
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_12
    :goto_b
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
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/launcher3/activity/DataCleanActivity;->h(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/DataCleanActivity;->g(Lcom/android/launcher3/activity/DataCleanActivity;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/android/launcher3/activity/DataCleanActivity;->h:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/activity/DataCleanActivity;->h(Z)V

    return-void
.end method

.method public onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

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
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

    invoke-static {p1}, Lcom/huawei/hem/de;->a(Landroid/content/Context;)I

    move-result v0

    .line 8
    iput v0, p1, Lcom/android/launcher3/activity/DataCleanActivity;->b:I

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/DataCleanActivity$c;->a:Lcom/android/launcher3/activity/DataCleanActivity;

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
