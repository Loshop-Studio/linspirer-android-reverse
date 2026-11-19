.class public Lcom/android/launcher3/network/CommonLoginRequestHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "CommonLoginRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/CommonLoginRequestHelper;->onlineLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Lcom/android/launcher3/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

.field public final synthetic val$isSavedAccount:Z

.field public final synthetic val$mContext:Landroid/content/Context;

.field public final synthetic val$password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/CommonLoginRequestHelper;Ljava/lang/Class;ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    iput-boolean p3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$isSavedAccount:Z

    iput-object p4, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
# RE I/O 保存布尔偏好（SharedPreferences$Editor.putBoolean）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method public handleResult(Lcom/android/launcher3/model/UserInfo;)V
    .locals 8

    const-string v0, "CommonLoginRequestHelper -- online login successfully ."

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getSchoolinfo()Lcom/android/launcher3/model/SchoolInfo;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordFirstUesed(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$000(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    .line 9
    iget-boolean v4, v3, Lcom/huawei/hem/y5;->N:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 10
    iget-object v4, v3, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 11
    iget-object v6, v4, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v7, "agreed_privacy"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v4, v4, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 13
    iput-boolean v5, v3, Lcom/huawei/hem/y5;->N:Z

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$100(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/hem/y5;->Y(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getGroupInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getGroupInfo()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GroupInfo;

    .line 17
    iget-object v4, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v4}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$200(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/model/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/huawei/hem/y5;->s0(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$300(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/huawei/hem/y5;->s0(Ljava/lang/String;)V

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$400(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$isSavedAccount:Z

    .line 20
    iget-boolean v6, v3, Lcom/huawei/hem/y5;->o:Z

    if-eq v6, v4, :cond_2

    .line 21
    iput-boolean v4, v3, Lcom/huawei/hem/y5;->o:Z

    .line 22
    iget-object v3, v3, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 23
    iget-object v6, v3, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v7, "stu_is_save_account"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object v3, v3, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$500(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$password:Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    iget-object v6, v3, Lcom/huawei/hem/y5;->b:Ljava/lang/String;

    if-eq v6, v4, :cond_3

    .line 27
    iput-object v4, v3, Lcom/huawei/hem/y5;->b:Ljava/lang/String;

    .line 28
    iget-object v3, v3, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 29
    iget-object v6, v3, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v7, "stu_password"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v3, v3, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$600(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/huawei/hem/y5;->j0(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$700(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->c0(I)V

    .line 33
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$800(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/launcher3/model/SchoolInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/huawei/hem/y5;->o0(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$900(Lcom/android/launcher3/network/CommonLoginRequestHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    .line 35
    iget-object v3, p1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    if-eq v3, v1, :cond_4

    .line 36
    iput-object v1, p1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 38
    iget-object v3, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "student_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/SchoolInfo;->getSchool_id()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$1000(Lcom/android/launcher3/network/CommonLoginRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 42
    iget-object p1, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->this$0:Lcom/android/launcher3/network/CommonLoginRequestHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/launcher3/network/CommonLoginRequestHelper;->access$1100(Lcom/android/launcher3/network/CommonLoginRequestHelper;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->handleResult(Lcom/android/launcher3/model/UserInfo;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/CommonLoginRequestHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    return-void
.end method
