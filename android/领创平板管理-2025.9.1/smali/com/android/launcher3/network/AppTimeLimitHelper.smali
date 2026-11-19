# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/AppTimeLimitHelper;
.super Ljava/lang/Object;
.source "AppTimeLimitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/AppTimeLimitHelper$AppTimeLimitHolder;,
        Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;
    }
.end annotation


# static fields
.field public static final LIMIT_USED_PHONE:Ljava/lang/String; = "com.linspirer.phone"

.field public static final LIMIT_USED_SMS:Ljava/lang/String; = "com.linspirer.message"

.field public static final TAG:Ljava/lang/String; = "AppTimeLimitHelper "


# instance fields
.field public appTimeLimitInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/AppTimeLimitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isDisablePhone:Z

.field public isDisableSMS:Z

.field public lastDisableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public volatile timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 7
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mHttpCore:Lcom/huawei/hem/rb;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    .line 10
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getAppTimeLimitInfoDao()Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    .line 13
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->initLocalData()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/AppTimeLimitHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/AppTimeLimitHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handleAppTimeLimit(Ljava/util/List;)V

    return-void
.end method

.method private actionEnableLastData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/AppTimeLimitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/AppTimeLimitInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPackageNames()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AppTimeLimitHelper enable last local apps"

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPackageNames()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handlePhoneStatus(ZLjava/util/List;Ljava/util/List;)V

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handleSMStatus(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method private convertData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppTimeLimit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppTimeLimitHelper  convert server limit data"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/AppTimeLimit;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/android/launcher3/model/AppTimeLimit;->getApp_list()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/AppInfoLimit;

    .line 9
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppInfoLimit;->getPackagename()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppInfoLimit;->getPackagename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/model/AppTimeLimit;->getCallsms()Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_2
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "AppTimeLimitHelper  set apptime limit no apps no need save and handle"

    .line 17
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    new-instance v3, Lcom/android/launcher3/db/model/AppTimeLimitInfo;

    invoke-direct {v3}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;-><init>()V

    .line 19
    invoke-virtual {v1}, Lcom/android/launcher3/model/AppTimeLimit;->getTime_limit()Lcom/android/launcher3/db/model/WeekTactics;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getFriday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setFriday(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getMonday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setMonday(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getSaturday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setSaturday(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getSunday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setSunday(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getThursday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setThursday(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getTuesday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setTuesday(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/WeekTactics;->getWednesday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setWednesday(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setPackageNames(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v2}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setPkgs(Ljava/util/List;)V

    .line 29
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string p1, "com.linspirer.phone"

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "is_time_limit_phone"

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 32
    iget v4, p1, Lcom/huawei/hem/y5;->f0:I

    if-eq v4, v1, :cond_6

    .line 33
    iput v1, p1, Lcom/huawei/hem/y5;->f0:I

    .line 34
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 35
    iget-object v4, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 37
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 38
    iget v4, p1, Lcom/huawei/hem/y5;->f0:I

    if-eq v4, v3, :cond_6

    .line 39
    iput v3, p1, Lcom/huawei/hem/y5;->f0:I

    .line 40
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 41
    iget-object v4, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_2
    const-string p1, "com.linspirer.message"

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "is_time_limit_sms"

    if-eqz p1, :cond_7

    .line 44
    iget-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 45
    iget v2, p1, Lcom/huawei/hem/y5;->e0:I

    if-eq v2, v1, :cond_8

    .line 46
    iput v1, p1, Lcom/huawei/hem/y5;->e0:I

    .line 47
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 48
    iget-object v2, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 50
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 51
    iget v1, p1, Lcom/huawei/hem/y5;->e0:I

    if-eq v1, v3, :cond_8

    .line 52
    iput v3, p1, Lcom/huawei/hem/y5;->e0:I

    .line 53
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 54
    iget-object v1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    :goto_3
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper$AppTimeLimitHolder;->access$000()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v0

    return-object v0
.end method

.method private getLimitTime(Lcom/android/launcher3/db/model/AppTimeLimitInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getSaturday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getFriday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getThursday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getWednesday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getTuesday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getMonday()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getSunday()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

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

.method private handleAppTimeLimit(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppTimeLimit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AppTimeLimitHelper set no app time limit"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->convertData(Ljava/util/List;)V

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimit()V

    .line 7
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->saveData()V

    return-void

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->actionEnableLastData(Ljava/util/List;)V

    .line 10
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->saveData()V

    return-void

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "AppTimeLimitHelper last and new is the same no need check"

    .line 12
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->actionEnableLastData(Ljava/util/List;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimit()V

    .line 15
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->saveData()V

    return-void
.end method

.method private handlePhoneStatus(ZLjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.linspirer.phone"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p2}, Lcom/huawei/hem/y5;->z()I

    move-result p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTimeLimitHelper read isv phone status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const-string p1, "AppTimeLimitHelper isv control phone status no need handle time limit"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTimeLimitHelper handle phone time limit status:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/huawei/hem/q0;->t()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 7
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->enableSpeech()V

    .line 8
    iput-boolean v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisablePhone:Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->disableSpeech()V

    .line 10
    iput-boolean v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisablePhone:Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 12
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2, p2}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    .line 13
    iput-boolean v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisablePhone:Z

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, p2}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    .line 15
    iput-boolean v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisablePhone:Z

    :goto_0
    if-eqz p3, :cond_5

    if-nez p1, :cond_5

    .line 16
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private handleSMStatus(ZLjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.linspirer.message"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p2}, Lcom/huawei/hem/y5;->F()I

    move-result p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTimeLimitHelper read isv  sms status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const-string p1, "AppTimeLimitHelper isv control sms status no need handle time limit"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTimeLimitHelper handle sms time limit status:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/huawei/hem/q0;->u()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 7
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->g0()V

    .line 8
    iput-boolean v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisableSMS:Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->S()V

    .line 10
    iput-boolean v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisableSMS:Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 12
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2, p2}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    .line 13
    iput-boolean v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisableSMS:Z

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, p2}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    .line 15
    iput-boolean v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisableSMS:Z

    :goto_0
    if-eqz p3, :cond_5

    if-nez p1, :cond_5

    .line 16
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private initLocalData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/db/model/AppTimeLimitInfo;

    .line 4
    invoke-virtual {v2}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPackageNames()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->setPkgs(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "AppTimeLimitHelper init local limit data"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method private saveData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    :cond_0
    return-void
.end method

.method public checkTimeLimit()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "24:00"

    if-eqz v2, :cond_0

    move-object v1, v3

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/db/model/AppTimeLimitInfo;

    .line 6
    invoke-direct {p0, v4}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getLimitTime(Lcom/android/launcher3/db/model/AppTimeLimitInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppTimeLimitHelper  limit times:"

    const-string v7, " to packagenames:"

    .line 7
    invoke-static {v6, v5, v7}, Lcom/huawei/hem/f6;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPackageNames()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    const-class v6, Lcom/android/launcher3/model/WorkTime;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 9
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/q0;->o(Ljava/util/List;)V

    .line 11
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v7, v5, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handlePhoneStatus(ZLjava/util/List;Ljava/util/List;)V

    .line 12
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v7, v5, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handleSMStatus(ZLjava/util/List;Ljava/util/List;)V

    .line 13
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/WorkTime;

    .line 15
    invoke-virtual {v6}, Lcom/android/launcher3/model/WorkTime;->getStart()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v6}, Lcom/android/launcher3/model/WorkTime;->getEnd()Ljava/lang/String;

    move-result-object v6

    const-string v9, "23:59:59"

    .line 17
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v3

    .line 18
    :cond_3
    invoke-static {v1, v8}, Lcom/huawei/hem/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    invoke-static {v6, v1}, Lcom/huawei/hem/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 19
    sget-object v5, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/q0;->o(Ljava/util/List;)V

    .line 21
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_2
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v7, v5, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handlePhoneStatus(ZLjava/util/List;Ljava/util/List;)V

    .line 23
    invoke-virtual {v4}, Lcom/android/launcher3/db/model/AppTimeLimitInfo;->getPkgs()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v7, v4, v0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handleSMStatus(ZLjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 24
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "AppTimeLimitHelper refresh desktop by time limit"

    .line 25
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    .line 27
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public checkTimeLimitByScreenOn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->initLocalData()V

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimit()V

    return-void
.end method

.method public clearData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->appTimeLimitInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mAppTimeLimitDao:Lcom/android/launcher3/db/model/AppTimeLimitInfoDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public getPhoneState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisablePhone:Z

    return v0
.end method

.method public getSMSState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->isDisableSMS:Z

    return v0
.end method

.method public handleFromInstalled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AppTimeLimitHelper   already in disabled apps need disable"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->lastDisableApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppTimeLimitHelper  already in disabled apps need disable"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/huawei/hem/q0;->D()Ljava/util/List;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ic;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public request()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppTimeLimitHelper   other case no need request"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    const-string v1, "com.linspirer.app.getapptimelimit"

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/launcher3/network/params/Params;

    iget-object v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 10
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 11
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v2, Lcom/huawei/hem/tb;->d:Z

    .line 15
    new-instance v0, Lcom/android/launcher3/network/AppTimeLimitHelper$1;

    const-class v1, Lcom/android/launcher3/model/AppTimeLimit;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/AppTimeLimitHelper$1;-><init>(Lcom/android/launcher3/network/AppTimeLimitHelper;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "AppTimeLimitHelper  request app time limit exception "

    .line 17
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public startTimerWhenScreenOff()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/network/AppTimeLimitHelper;->cancelTimer()V

    .line 2
    new-instance v6, Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0xea60

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;-><init>(Lcom/android/launcher3/network/AppTimeLimitHelper;JJ)V

    iput-object v6, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/network/AppTimeLimitHelper;->timerCountDownTimer:Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
