.class public Lcom/huawei/hem/k5$a;
.super Landroid/os/AsyncTask;
.source "AppUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/k5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/huawei/hem/l5;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/k5;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/k5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    .line 4
    iget-wide v3, v2, Lcom/huawei/hem/y5;->L:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 6
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v4, "next_query_event_stamp"

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 7
    iput-wide v3, v2, Lcom/huawei/hem/y5;->L:J

    .line 8
    :cond_0
    iget-wide v2, v2, Lcom/huawei/hem/y5;->L:J

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget v2, v0, Lcom/huawei/hem/k5;->b:I

    mul-int/lit8 v2, v2, 0x7

    int-to-long v2, v2

    sub-long v2, v7, v2

    .line 11
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppUsageHelper -- queryEventsBelowAndroid_8 , startTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " , endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    iget-object v4, v0, Lcom/huawei/hem/k5;->e:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_b

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 15
    new-instance v6, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v6}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 16
    invoke-virtual {v4, v6}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 17
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v8

    .line 18
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-gez v9, :cond_3

    goto :goto_1

    :cond_3
    if-eq v8, v7, :cond_4

    const/4 v7, 0x2

    if-ne v8, v7, :cond_2

    .line 19
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    move-object v8, v5

    move-object v9, v8

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageEvents$Event;

    .line 23
    invoke-virtual {v10}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v10}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v12

    .line 25
    invoke-virtual {v10}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v13

    .line 26
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    if-ne v12, v7, :cond_6

    .line 27
    new-instance v6, Lcom/huawei/hem/l5;

    invoke-direct {v6}, Lcom/huawei/hem/l5;-><init>()V

    .line 28
    invoke-virtual {v6, v11}, Lcom/huawei/hem/l5;->setmPackageName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v11}, Lcom/huawei/hem/k5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huawei/hem/l5;->setmAppName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6, v13, v14}, Lcom/huawei/hem/l5;->setmBeginTimeStamp(J)V

    move-object v9, v11

    goto/16 :goto_4

    .line 31
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v6, :cond_8

    .line 32
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 34
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0xb

    const/4 v12, 0x0

    .line 35
    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    .line 36
    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 37
    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->set(II)V

    .line 38
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AppUsageHelper -- getTodayStartStamp()  \u83b7\u53d6\u5f53\u65e5\u7684\u65f6\u95f4\u6233 = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    sub-long v7, v11, v15

    .line 40
    invoke-virtual {v6, v7, v8}, Lcom/huawei/hem/l5;->setmEndTimeStamp(J)V

    .line 41
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v6, Lcom/huawei/hem/l5;

    invoke-direct {v6}, Lcom/huawei/hem/l5;-><init>()V

    .line 43
    invoke-virtual {v6, v9}, Lcom/huawei/hem/l5;->setmPackageName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v9}, Lcom/huawei/hem/k5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hem/l5;->setmAppName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v11, v12}, Lcom/huawei/hem/l5;->setmBeginTimeStamp(J)V

    .line 46
    invoke-virtual {v6, v13, v14}, Lcom/huawei/hem/l5;->setmEndTimeStamp(J)V

    .line 47
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    .line 48
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 49
    invoke-virtual {v6, v13, v14}, Lcom/huawei/hem/l5;->setmEndTimeStamp(J)V

    .line 50
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v6, 0x0

    move-object v9, v5

    :cond_8
    :goto_4
    move-object v8, v10

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 51
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 52
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/l5;

    const-string v4, "com.android.documentsui"

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.launcher3"

    const-string v7, "com.huawei.hwstartupguide"

    const-string v8, "com.android.packageinstaller"

    .line 54
    invoke-static {v4, v5, v6, v7, v8}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "com.android.permissioncontroller"

    const-string v6, "com.android.providers.contacts"

    const-string v7, "com.lenovo.mia.setupwizard"

    const-string v8, "com.tbsmart.levision"

    .line 55
    invoke-static {v4, v5, v6, v7, v8}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.huawei.android.launcher"

    const-string v6, "com.android.provision"

    const-string v7, "com.huawei.android.hwouc"

    const-string v8, "com.google.android.inputmethod.pinyin"

    .line 56
    invoke-static {v4, v5, v6, v7, v8}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android"

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v3}, Lcom/huawei/hem/l5;->getmPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_b
    const-string v0, "AppUsageHelper -- queryEventsBelowAndroid_8 , usageEvents = null \u7528\u6237\u6ca1\u6709\u6743\u9650\u6216\u8005\u6ca1\u6709\u4f7f\u7528\u8bb0\u5f55"

    .line 60
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_c
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppUsageHelper -- queryEvents , usageAppDataList data is null."

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUsageHelper -- queryEvents , \u5e94\u7528\u4f7f\u7528\uff1ausageAppDataList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    invoke-static {v0, p1, v1}, Lcom/huawei/hem/k5;->a(Lcom/huawei/hem/k5;Ljava/util/List;I)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    goto :goto_1

    :cond_1
    const-string v3, "AppUsageHelper -- queryEvents , \u5e94\u7528\u4f7f\u7528\uff1ausageAppDataList size > 500 . "

    .line 9
    invoke-static {v3}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v4, v3, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 12
    div-int/lit16 v3, v0, 0x1f4

    .line 13
    rem-int/2addr v0, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    mul-int/lit16 v5, v4, 0x1f4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v6, v4, 0x1f4

    .line 14
    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    .line 16
    iget-object v6, v6, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 17
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 18
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    .line 20
    iget-object v0, v0, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    .line 23
    iget-object p1, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 24
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/huawei/hem/k5$a;->a:Lcom/huawei/hem/k5;

    .line 26
    iget-object v0, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/huawei/hem/k5;->a(Lcom/huawei/hem/k5;Ljava/util/List;I)V

    :cond_4
    :goto_1
    return-void
.end method
