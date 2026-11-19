.class public Lcom/android/launcher3/activity/CleanRubbishActivity$c;
.super Landroid/os/AsyncTask;
.source "CleanRubbishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/CleanRubbishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/CleanRubbishActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/CleanRubbishActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 3
    iget-object p1, p1, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CleanRubbishActivity----deleteLayout:"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 6
    iget v0, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->j:I

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 9
    iget-object v0, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 12
    iget-object v0, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CleanRubbishActivity----isSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 16
    iget-object v1, v1, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    .line 19
    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/huawei/hem/ee;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "CleanRubbishActivity----rubbishs are empty"

    .line 20
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "CleanRubbishActivity----befo rubbishFileInfoList size:"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 5
    iget-object v1, v1, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 8
    iget-object v1, v1, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 11
    iget-object v1, v1, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    .line 16
    iget-object v2, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 17
    iget-object v2, v2, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const-string p1, "CleanRubbishActivity----after rubbishFileInfoList size:"

    .line 19
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 20
    iget-object v0, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 23
    iget-object p1, p1, Lcom/android/launcher3/activity/CleanRubbishActivity;->i:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    .line 24
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 26
    iput-boolean v1, p1, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$c;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->f:Z

    return-void
.end method
