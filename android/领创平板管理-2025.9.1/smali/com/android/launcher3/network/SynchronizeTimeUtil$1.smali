.class public final Lcom/android/launcher3/network/SynchronizeTimeUtil$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "SynchronizeTimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTime(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$needshow:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$needshow:Z

    iput-object p3, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->handleResult(Ljava/lang/String;)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method public handleResult(Ljava/lang/String;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- pullSynchronizeTime successfully ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- \u5199\u5165\u8bbe\u5907\u65f6\u95f4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/huawei/hem/ic;->N(J)Z

    move-result p1

    .line 8
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x1

    .line 9
    iget v2, v0, Lcom/huawei/hem/y5;->J:I

    if-eq v2, v1, :cond_0

    .line 10
    iput v1, v0, Lcom/huawei/hem/y5;->J:I

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 12
    iget-object v2, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "synchronize_time"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$needshow:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$context:Landroid/content/Context;

    const v0, 0x7f0c011e

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$context:Landroid/content/Context;

    const v0, 0x7f0c00b2

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method
