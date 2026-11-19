# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/network/SynchronizeTimeUtil;
.super Ljava/lang/Object;
.source "SynchronizeTimeUtil.java"


# static fields
.field public static TAG:Ljava/lang/String; = "SynchronizeTimeUtil "

.field public static TIMEZONE:Ljava/lang/String; = "Asia/Shanghai"

.field public static lastOperateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/SynchronizeTimeUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static pullSynchronizeTime(Landroid/content/Context;Z)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/android/launcher3/network/SynchronizeTimeUtil;->lastOperateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-void

    .line 3
    :cond_0
    sput-wide v0, Lcom/android/launcher3/network/SynchronizeTimeUtil;->lastOperateTime:J

    .line 4
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/launcher3/network/SynchronizeTimeUtil;->TIMEZONE:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "alarm"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    sget-object v1, Lcom/android/launcher3/network/SynchronizeTimeUtil;->TIMEZONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const-string v0, "sync time zone Asia/Shanghai"

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/launcher3/network/SynchronizeTimeUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---set time zone error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 13
    new-instance v1, Lcom/android/launcher3/network/params/SynchronizeTimeParams;

    invoke-direct {v1, p0}, Lcom/android/launcher3/network/params/SynchronizeTimeParams;-><init>(Landroid/content/Context;)V

    const-string v2, "com.linspirer.device.updateonlinetime"

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/huawei/hem/rb;

    invoke-direct {v1}, Lcom/huawei/hem/rb;-><init>()V

    .line 17
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 18
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->HTTP_URL:Ljava/lang/String;

    .line 19
    iput-object v1, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/launcher3/network/SynchronizeTimeUtil$1;-><init>(Ljava/lang/Class;ZLandroid/content/Context;)V

    .line 23
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    const v0, 0x7f0c00e3

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/launcher3/network/SynchronizeTimeUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- pullSynchronizeTime error: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public static pullSynchronizeTimeBoolean(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    iget v1, v0, Lcom/huawei/hem/y5;->J:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v3, "synchronize_time"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5
    iput v1, v0, Lcom/huawei/hem/y5;->J:I

    .line 6
    :cond_0
    iget v0, v0, Lcom/huawei/hem/y5;->J:I

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, v2}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTime(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
