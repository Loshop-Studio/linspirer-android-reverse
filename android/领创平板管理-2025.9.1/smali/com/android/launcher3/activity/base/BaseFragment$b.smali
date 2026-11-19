.class public Lcom/android/launcher3/activity/base/BaseFragment$b;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/base/BaseFragment;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Lcom/android/launcher3/db/model/ItemApp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/base/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKListResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ItemApp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BaseFragment -- check update sucess"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    invoke-static {v0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->a(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/util/List;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    const-string v0, "BaseFragment -- check update failed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object v0, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0, p1, v2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "BaseFragment -- check update failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment$b;->a:Lcom/android/launcher3/activity/base/BaseFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    return-void
.end method
