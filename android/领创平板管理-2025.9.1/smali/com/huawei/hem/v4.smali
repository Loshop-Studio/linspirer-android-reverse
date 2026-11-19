.class public Lcom/huawei/hem/v4;
.super Ljava/lang/Object;
.source "WorkspaceTacticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/v4$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/android/launcher3/db/model/WeekTactics;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WorkTime;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/huawei/hem/y5;

.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/v4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/v4;->c:Ljava/util/List;

    .line 3
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/v4;->d:Lcom/huawei/hem/y5;

    .line 5
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    iput-object p1, p0, Lcom/huawei/hem/v4;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hem/v4;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "00:00"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "24:00"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/v4;->c()V

    move-object v0, v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/v4;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->N()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const-string v0, "WorkspaceTacticsHelper user not logined"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "WorkspaceTacticsHelper no set workspace time"

    .line 8
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    const-string v5, "[]"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "WorkspaceTacticsHelper set workspace time but today no allowed used"

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/huawei/hem/v4;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/WorkTime;

    .line 12
    invoke-virtual {v5}, Lcom/android/launcher3/model/WorkTime;->getStart()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v5}, Lcom/android/launcher3/model/WorkTime;->getEnd()Ljava/lang/String;

    move-result-object v5

    const-string v7, "23:59:59"

    .line 14
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 15
    :cond_5
    invoke-static {v0, v6}, Lcom/huawei/hem/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-static {v5, v0}, Lcom/huawei/hem/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    :goto_0
    move v0, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v3

    :goto_2
    const/16 v1, 0x64

    if-eqz v0, :cond_8

    const-string v0, "WorkspaceTacticsHelper current time can use"

    .line 16
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 17
    sget-boolean v0, Lcom/android/launcher3/activity/LockActivity;->i:Z

    if-eqz v0, :cond_7

    const-string v0, "WorkspaceTacticsHelper lock page is show need hide"

    .line 18
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/huawei/hem/v4;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hem/y4;->q(Landroid/content/Context;)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/huawei/hem/v4;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1, v3}, Lcom/huawei/hem/y5;->d0(IZ)V

    goto :goto_3

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/huawei/hem/v4;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "WorkspaceTacticsHelper current time can not  use by device is release no need control"

    .line 22
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v0, "WorkspaceTacticsHelper current time can not  use"

    .line 23
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/huawei/hem/v4;->e:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {v0, v2}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iget-object v0, p0, Lcom/huawei/hem/v4;->d:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1, v4}, Lcom/huawei/hem/y5;->d0(IZ)V

    :goto_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/t3;->b:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getWeekTacticsDao()Lcom/android/launcher3/db/model/WeekTacticsDao;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/v4;->c()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/WeekTactics;

    .line 8
    iput-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    .line 9
    invoke-virtual {p0}, Lcom/huawei/hem/v4;->c()V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getSaturday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getFriday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getThursday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getWednesday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getTuesday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getMonday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object v0, p0, Lcom/huawei/hem/v4;->b:Lcom/android/launcher3/db/model/WeekTactics;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/WeekTactics;->getSunday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/v4;->a:Ljava/lang/String;

    const-class v1, Lcom/android/launcher3/model/WorkTime;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/v4;->c:Ljava/util/List;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
