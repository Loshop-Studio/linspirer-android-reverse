.class public Lcom/android/launcher3/network/InitLoginHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "InitLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/InitLoginHelper;->initISVLoginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/android/launcher3/network/InitLoginHelper;

.field public final synthetic val$mContext:Landroid/content/Context;

.field public final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/InitLoginHelper;Ljava/lang/Class;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iput-object p3, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mobile:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
# RE I/O 保存字符串偏好（SharedPreferences$Editor.putString）。
.method public handleResult(Lcom/android/launcher3/model/UserInfo;)V
    .locals 7

    const-string v0, "InitLoginHelper -- init ISV login successfully ."

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/model/UserInfo;->getSchoolinfo()Lcom/android/launcher3/model/SchoolInfo;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/model/SchoolInfo;->getSchool_id()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordFirstUesed(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {v4}, Lcom/android/launcher3/network/InitLoginHelper;->access$000(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/huawei/hem/y5;->j0(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {v0}, Lcom/android/launcher3/network/InitLoginHelper;->access$100(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/SchoolInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hem/y5;->o0(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/InitLoginHelper;->access$200(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->c0(I)V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/InitLoginHelper;->access$300(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hem/y5;->Y(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/InitLoginHelper;->access$400(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    .line 14
    iget-object v4, p1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    if-eq v4, v2, :cond_0

    .line 15
    iput-object v2, p1, Lcom/huawei/hem/y5;->C:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 17
    iget-object v4, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "student_id"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/InitLoginHelper;->access$500(Lcom/android/launcher3/network/InitLoginHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    iget-object v4, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mobile:Ljava/lang/String;

    .line 20
    iget-object v5, p1, Lcom/huawei/hem/y5;->e:Ljava/lang/String;

    if-eq v5, v4, :cond_1

    .line 21
    iput-object v4, p1, Lcom/huawei/hem/y5;->e:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 23
    iget-object v5, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "mobile"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iget-object v4, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v1, v3, v4}, Lcom/android/launcher3/network/InitLoginHelper;->access$600(Lcom/android/launcher3/network/InitLoginHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iget-object v1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/network/InitLoginHelper;->access$700(Lcom/android/launcher3/network/InitLoginHelper;ZLandroid/content/Context;)V

    .line 27
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/launcher3/activity/LoginActivity;

    if-eqz v0, :cond_2

    .line 28
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 29
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/LauncherNew;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/launcher3/network/InitLoginHelper;->access$800(Lcom/android/launcher3/network/InitLoginHelper;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/InitLoginHelper$1;->handleResult(Lcom/android/launcher3/model/UserInfo;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 2

    const-string v0, "InitLoginHelper -- init ISV login failed ."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/network/InitLoginHelper;->access$700(Lcom/android/launcher3/network/InitLoginHelper;ZLandroid/content/Context;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/network/response/ExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->this$0:Lcom/android/launcher3/network/InitLoginHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/InitLoginHelper$1;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/network/InitLoginHelper;->access$700(Lcom/android/launcher3/network/InitLoginHelper;ZLandroid/content/Context;)V

    return-void
.end method
