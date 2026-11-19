.class public Lcom/huawei/hem/o4;
.super Ljava/lang/Object;
.source "AppCheckUpdateHelper.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/huawei/hem/p4;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/p4;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/o4;->b:Lcom/huawei/hem/p4;

    iput-object p2, p0, Lcom/huawei/hem/o4;->a:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/huawei/hem/o4;->b:Lcom/huawei/hem/p4;

    iget-object p2, p0, Lcom/huawei/hem/o4;->a:Ljava/util/ArrayList;

    .line 2
    sget-object v0, Lcom/huawei/hem/p4;->c:Landroid/app/Activity;

    iget-object v1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v2, 0x7f0c012f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/p4;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

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

    iget-object v3, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ItemApp;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/bc;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v0, p1, Lcom/huawei/hem/p4;->a:Lcom/huawei/hem/f3;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/launcher3/activity/AdminLoginActivity;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/launcher3/activity/AdminLoginActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 13
    invoke-virtual {p1, v0, v2}, Lcom/huawei/hem/p4;->a(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, v0, v2}, Lcom/huawei/hem/p4;->a(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
