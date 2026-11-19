.class public Lcom/android/launcher3/activity/base/BaseFragment$a;
.super Lcom/huawei/hem/ne;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/base/BaseFragment;->d(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/launcher3/db/model/ItemApp;

.field public final synthetic c:Lcom/android/launcher3/activity/base/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/lang/String;Lcom/android/launcher3/db/model/ItemApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->c:Lcom/android/launcher3/activity/base/BaseFragment;

    iput-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->b:Lcom/android/launcher3/db/model/ItemApp;

    invoke-direct {p0}, Lcom/huawei/hem/ne;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/huawei/hem/fe;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->c:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->b:Lcom/android/launcher3/db/model/ItemApp;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object v2, v0, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Lcom/huawei/hem/fe;->j()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {p1, v1}, Lcom/huawei/hem/bc;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0124

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, " -- download app ,packageName = "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseFragment"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0, p2}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->c:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p2, p2, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->c:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p2, p2, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c0130

    invoke-static {p2, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 6
    invoke-interface {p1}, Lcom/huawei/hem/fe;->pause()Z

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment$a;->c:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    :cond_0
    return-void
.end method

.method public paused(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public pending(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public progress(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public warn(Lcom/huawei/hem/fe;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    return-void
.end method
