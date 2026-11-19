# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/receiver/ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenStateReceiver.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
# RE I/O 读取整数偏好（SharedPreferences.getInt）、保存整数偏好（SharedPreferences$Editor.putInt）。
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ScreenStateReceiverdevice is release control no need receiver ScreenState or intent null"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/receiver/ScreenStateReceiver;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenStateReceiver -- onReceive action = "

    .line 5
    invoke-static {p2, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 8
    iget p1, p2, Lcom/huawei/hem/y5;->M:I

    int-to-long v3, p1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const-string v0, "unlock_screen_number"

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 10
    iget-object p1, p1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 11
    iput p1, p2, Lcom/huawei/hem/y5;->M:I

    .line 12
    :cond_1
    iget p1, p2, Lcom/huawei/hem/y5;->M:I

    add-int/lit8 v3, p1, 0x1

    if-eq p1, v3, :cond_2

    .line 13
    iput v3, p2, Lcom/huawei/hem/y5;->M:I

    .line 14
    iget-object p1, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 15
    iget-object v4, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const/16 p1, 0x12

    if-lt v3, p1, :cond_9

    .line 17
    iget p1, p2, Lcom/huawei/hem/y5;->M:I

    if-eqz p1, :cond_3

    .line 18
    iput v1, p2, Lcom/huawei/hem/y5;->M:I

    .line 19
    iget-object p1, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 20
    iget-object v3, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    :cond_3
    sget-object p1, Lcom/huawei/hem/k5;->j:Lcom/huawei/hem/k5;

    if-nez p1, :cond_4

    .line 23
    new-instance p1, Lcom/huawei/hem/k5;

    invoke-direct {p1}, Lcom/huawei/hem/k5;-><init>()V

    sput-object p1, Lcom/huawei/hem/k5;->j:Lcom/huawei/hem/k5;

    .line 24
    :cond_4
    sget-object p1, Lcom/huawei/hem/k5;->j:Lcom/huawei/hem/k5;

    if-eqz p1, :cond_8

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 26
    iget-object v3, p1, Lcom/huawei/hem/k5;->e:Landroid/app/usage/UsageStatsManager;

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 27
    iget-object v3, p1, Lcom/huawei/hem/k5;->f:Landroid/app/AppOpsManager;

    .line 28
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android:get_usage_stats"

    const-string v6, "com.android.launcher3"

    .line 29
    invoke-virtual {v3, v5, v4, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "AppUsageHelper -- no appusage permission ."

    .line 31
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppUsageHelper -- has app usage permission ."

    .line 33
    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 36
    iget-wide v5, p1, Lcom/huawei/hem/k5;->a:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xdac

    cmp-long v0, v5, v7

    if-ltz v0, :cond_7

    .line 37
    iput-wide v3, p1, Lcom/huawei/hem/k5;->a:J

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    if-eqz v0, :cond_9

    .line 38
    new-instance v0, Lcom/huawei/hem/k5$a;

    invoke-direct {v0, p1}, Lcom/huawei/hem/k5$a;-><init>(Lcom/huawei/hem/k5;)V

    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "AppUsageHelper -- start to query app usage data and upload it ."

    .line 39
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->o()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 42
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/t3;->b()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    .line 43
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz p1, :cond_a

    .line 44
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->N()I

    move-result p1

    if-ne p1, v2, :cond_a

    const-string p1, "ScreenStateReceiver --  USER_PRESENT, start check lock gesture ..."

    .line 45
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/android/launcher3/receiver/ScreenStateReceiver;->a:Landroid/content/Context;

    const-class p2, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    :cond_a
    sget-object p1, Lcom/huawei/hem/v4$b;->a:Lcom/huawei/hem/v4;

    .line 48
    invoke-virtual {p1}, Lcom/huawei/hem/v4;->b()V

    .line 49
    invoke-virtual {p1}, Lcom/huawei/hem/v4;->a()V

    .line 50
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->cancelTimer()V

    .line 51
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimitByScreenOn()V

    .line 52
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object p1

    .line 53
    iget-object p2, p1, Lcom/huawei/hem/s4;->b:Lcom/huawei/hem/y5;

    invoke-virtual {p2}, Lcom/huawei/hem/y5;->A()I

    move-result p2

    iput p2, p1, Lcom/huawei/hem/s4;->a:I

    goto :goto_3

    :cond_b
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 56
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->o()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 57
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/t3;->b()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    .line 58
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz p1, :cond_d

    .line 59
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->N()I

    move-result p1

    if-ne p1, v2, :cond_d

    const-string p1, "ScreenStateReceiver --  SCREEN_OFF, start check lock gesture ..."

    .line 60
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/launcher3/receiver/ScreenStateReceiver;->a:Landroid/content/Context;

    const-class p2, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    :cond_d
    invoke-static {}, Lcom/huawei/hem/s4;->a()Lcom/huawei/hem/s4;

    move-result-object p1

    .line 63
    iget p2, p1, Lcom/huawei/hem/s4;->a:I

    if-eqz p2, :cond_e

    .line 64
    iget-object p2, p1, Lcom/huawei/hem/s4;->d:Landroid/content/Context;

    const-string v0, "send broadcast to close eye page"

    .line 65
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "com.android.launcher3.eyeprotected.close"

    .line 66
    invoke-static {p2, v0}, Lcom/huawei/hem/y4;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    :cond_e
    iput v1, p1, Lcom/huawei/hem/s4;->a:I

    .line 68
    iput v1, p1, Lcom/huawei/hem/s4;->c:I

    .line 69
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->startTimerWhenScreenOff()V

    :cond_f
    :goto_3
    return-void
.end method
