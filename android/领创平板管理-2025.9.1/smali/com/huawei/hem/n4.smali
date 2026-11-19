.class public Lcom/huawei/hem/n4;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "AppCheckUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Lcom/android/launcher3/db/model/ItemApp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/p4;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/p4;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKListResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppCheckUpdateHelper -- check update sucess"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    if-eqz v0, :cond_3

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/db/model/ItemApp;

    .line 6
    iget-object v3, v0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hem/bc;->p(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "AppCheckUpdateHelper"

    .line 8
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- is no need update"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, v0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c00ea

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {p1}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    .line 12
    sget-object v3, Lcom/huawei/hem/p4;->c:Landroid/app/Activity;

    const v4, 0x7f0c0142

    const v5, 0x7f0c015d

    const v6, 0x7f0c0155

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 13
    new-instance v2, Lcom/huawei/hem/o4;

    invoke-direct {v2, v0, v1}, Lcom/huawei/hem/o4;-><init>(Lcom/huawei/hem/p4;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    const-string v0, "AppCheckUpdateHelper -- check update failed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    iget-object v0, v0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    iget-object v0, v0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0, p1, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    iget-object p1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "AppCheckUpdateHelper -- check update failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/n4;->a:Lcom/huawei/hem/p4;

    iget-object p1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    return-void
.end method
