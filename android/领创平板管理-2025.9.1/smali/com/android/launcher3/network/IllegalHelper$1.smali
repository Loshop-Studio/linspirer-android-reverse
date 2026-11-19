.class public Lcom/android/launcher3/network/IllegalHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "IllegalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/IllegalHelper;->uploadEvent(Ljava/util/List;Lcom/android/launcher3/db/model/Illegal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/IllegalHelper;

.field public final synthetic val$finalEvents:Ljava/util/List;

.field public final synthetic val$illegal:Lcom/android/launcher3/db/model/Illegal;

.field public final synthetic val$illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

.field public final synthetic val$localEvents:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/IllegalHelper;Ljava/lang/Class;Lcom/android/launcher3/db/model/IllegalEventDao;Lcom/android/launcher3/db/model/Illegal;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iput-object p3, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    iput-object p4, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegal:Lcom/android/launcher3/db/model/Illegal;

    iput-object p5, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$localEvents:Ljava/util/List;

    iput-object p6, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$finalEvents:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "IllegalHelper  illegal logs upload sucess"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegal:Lcom/android/launcher3/db/model/Illegal;

    invoke-static {p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->access$100(Lcom/android/launcher3/network/IllegalHelper;Lcom/android/launcher3/db/model/Illegal;)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/i5;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h0()V

    .line 8
    iget-object p1, p1, Lcom/huawei/hem/i5;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/IllegalHelper$1;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 3

    const-string p1, "IllegalHelper upload illegal failed"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$localEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$finalEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/network/IllegalHelper;->access$300(Lcom/android/launcher3/network/IllegalHelper;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/db/model/IllegalEventDao;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegal:Lcom/android/launcher3/db/model/Illegal;

    invoke-static {p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->access$100(Lcom/android/launcher3/network/IllegalHelper;Lcom/android/launcher3/db/model/Illegal;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/i5;

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h0()V

    .line 7
    iget-object p1, p1, Lcom/huawei/hem/i5;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 3

    const-string p1, "IllegalHelper  upload illegal failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$localEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$finalEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegalEventDao:Lcom/android/launcher3/db/model/IllegalEventDao;

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/network/IllegalHelper;->access$300(Lcom/android/launcher3/network/IllegalHelper;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/db/model/IllegalEventDao;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/IllegalHelper$1;->val$illegal:Lcom/android/launcher3/db/model/Illegal;

    invoke-static {p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->access$100(Lcom/android/launcher3/network/IllegalHelper;Lcom/android/launcher3/db/model/Illegal;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/IllegalHelper$1;->this$0:Lcom/android/launcher3/network/IllegalHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/IllegalHelper;->access$200(Lcom/android/launcher3/network/IllegalHelper;)Lcom/huawei/hem/h3;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/i5;

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h0()V

    .line 7
    iget-object p1, p1, Lcom/huawei/hem/i5;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
