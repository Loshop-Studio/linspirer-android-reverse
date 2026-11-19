.class public Lcom/huawei/hem/o2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/android/launcher3/activity/base/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/o2;->b:Lcom/android/launcher3/activity/base/BaseFragment;

    iput-object p2, p0, Lcom/huawei/hem/o2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/o2;->b:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p2, p0, Lcom/huawei/hem/o2;->a:Ljava/util/ArrayList;

    .line 2
    iget-object v0, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c012f

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ItemApp;

    .line 5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/bc;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/activity/base/BaseFragment;->h(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 12
    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/activity/base/BaseFragment;->d(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/activity/base/BaseFragment;->d(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
