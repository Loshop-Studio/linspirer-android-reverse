.class public Lcom/huawei/hem/p4$a;
.super Lcom/huawei/hem/ne;
.source "AppCheckUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/p4;->a(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/launcher3/db/model/ItemApp;

.field public final synthetic c:Lcom/huawei/hem/p4;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/p4;Ljava/lang/String;Lcom/android/launcher3/db/model/ItemApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    iput-object p2, p0, Lcom/huawei/hem/p4$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/p4$a;->b:Lcom/android/launcher3/db/model/ItemApp;

    invoke-direct {p0}, Lcom/huawei/hem/ne;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/huawei/hem/fe;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Lcom/huawei/hem/p4$a;->b:Lcom/android/launcher3/db/model/ItemApp;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/p4;->a:Lcom/huawei/hem/f3;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/huawei/hem/p4$a;->b:Lcom/android/launcher3/db/model/ItemApp;

    check-cast v0, Lcom/android/launcher3/activity/AdminLoginActivity;

    .line 8
    invoke-interface {p1}, Lcom/huawei/hem/fe;->j()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {p1, v1}, Lcom/huawei/hem/bc;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/AdminLoginActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0124

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/AdminLoginActivity;->g(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, " -- download app ,packageName = "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/p4$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppCheckUpdateHelper"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0, p2}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    .line 5
    iget-object p2, p2, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/p4$a;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    iget-object p2, p2, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0130

    invoke-static {p2, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 8
    invoke-interface {p1}, Lcom/huawei/hem/fe;->pause()Z

    .line 9
    iget-object p1, p0, Lcom/huawei/hem/p4$a;->c:Lcom/huawei/hem/p4;

    .line 10
    iget-object p1, p1, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 12
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

    return-void
.end method
