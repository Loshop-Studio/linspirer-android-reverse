# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/receiver/EduAppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EduAppReceiver.java"


# static fields
.field public static b:Landroid/os/Handler;


# instance fields
.field public a:Lcom/huawei/hem/y5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/launcher3/receiver/EduAppReceiver;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiver handle power off "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher3/receiver/PowerReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_power_off"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v2, p2, p3, p1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    const-string p1, "EduAppReceiver start power off alarm"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

# RE I/O 保存整数偏好（SharedPreferences$Editor.putInt）。
.method public final b(Landroid/content/Context;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiverhandleRotation setting rotation status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "rotating_status"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 6
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast p2, Lcom/huawei/hem/jc;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/jc;->R0(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 7
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast p2, Lcom/huawei/hem/jc;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/jc;->b(Landroid/content/Context;)V

    .line 8
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast p2, Lcom/huawei/hem/jc;

    invoke-virtual {p2, p1, v0}, Lcom/huawei/hem/jc;->U0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 9
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast p2, Lcom/huawei/hem/jc;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/jc;->b(Landroid/content/Context;)V

    .line 10
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v0, 0x0

    check-cast p2, Lcom/huawei/hem/jc;

    invoke-virtual {p2, p1, v0}, Lcom/huawei/hem/jc;->U0(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/IllegalHelper;->recordSpecialInterface(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->a0()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->j0(Ljava/util/ArrayList;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ic;->x(Ljava/util/ArrayList;)V

    return-void
.end method

# RE I/O 保存字符串偏好（SharedPreferences$Editor.putString）、保存长整数偏好（SharedPreferences$Editor.putLong）。
.method public final e(Landroid/content/Intent;Lcom/huawei/hem/y5;)V
    .locals 5

    const-string v0, "EduAppReceiver---showUnReadCount-----"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->J()Ljava/util/Map;

    move-result-object v0

    const-string v1, "packageName"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unread"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    if-eqz p1, :cond_1

    .line 8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "putHashMapData spftool put hash error:"

    .line 14
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 16
    iget-object v0, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unread_package_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 18
    throw p1

    .line 19
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iget-wide v2, p2, Lcom/huawei/hem/y5;->E:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 21
    iput-wide v0, p2, Lcom/huawei/hem/y5;->E:J

    .line 22
    iget-object p1, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 23
    iget-object p2, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "unread_count_time"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "EduAppReceiver====>unlockDevice()"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableNavigation()V

    .line 3
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableSpeech()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->V(I)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->W(I)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/y5;->X(I)V

    return-void
.end method

# RE I/O 保存布尔偏好（SharedPreferences$Editor.putBoolean）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EduAppReceiverEducation third party api called ====> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    iput-object v1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3c

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "com.linspirer.edu.enable_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "com.linspirer.edu.enableotg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "com.linspirer.edu.enablemic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "com.linspirer.edu.enableapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "com.linspirer.edu.disablefirewall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "com.linspirer.lock.screen.time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "com.linspirer.edu.getdevicesn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "com.linspirer.edu.disable.changewallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "com.linspirer.edu.silentuninstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "com.linspirer.edu.setwifiwhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "com.linspirer.edu.hide.statusbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "com.linspirer.edu.setting.rotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "com.linspirer.edu.clearappcache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "com.android.laucher3.synctime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "com.linspirer.edu.setwallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "com.linspirer.edu.shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "com.linspirer.edu.enablehome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "com.linspirer.edu.enableback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "com.linspirer.edu.enable_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "com.linspirer.edu.enable.gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "com.linspirer.edu.setappwhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "com.linspirer.edu.scheduled.poweroff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "com.linspirer.edu.disablevolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "com.linspirer.edu.enablephoneserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "com.linspirer.edu.class.begin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "com.linspirer.edu.disablerecent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "com.linspirer.edu.seturlwhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "com.linspirer.edu.disable.screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "com.linspirer.edu.obtain.userinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "com.linspirer.edu.get_phone_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "com.linspirer.edu.disablenavigationbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "com.android.laucher3.mdm.enableLongPressPower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "com.linspirer.edu.action.reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "com.linspirer.edu.disable_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "com.linspirer.edu.setappnetwhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "com.linspirer.edu.setdevicename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "com.linspirer.edu.forceinstallapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "com.linspirer.edu.no_control_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "com.linspirer.edu.allowstart.clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "com.linspirer.edu.killapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "com.linspirer.edu.clearwifiwhitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "com.linspirer.edu.disableshortpower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "com.linspirer.edu.enable.changewallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "com.linspirer.edu.open_eyeprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "com.linspirer.edu.returnlauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "com.linspirer.edu.disablehome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "com.linspirer.edu.disableback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "com.linspirer.edu.disable_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "com.linspirer.edu.disable.gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "com.linspirer.edu.silentinstall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "com.linspirer.edu.enable.screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "com.linspirer.edu.close_eyeprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "com.linspirer.edu.no_control_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "com.linspirer.edu.show.statusbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "com.linspirer.edu.setwallpaperinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "com.linspirer.edu.enableshortpower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "com.linspirer.edu.enablevolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "com.linspirer.edu.disable_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "com.linspirer.edu.enablefileshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "com.android.launcher3.unreadcount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "com.linspirer.edu.allow.lock.device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "com.linspirer.edu.geteyeprotectmodestatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "com.linspirer.edu.enablerecent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "com.linspirer.edu.enablenavigationbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "com.linspirer.edu.loginingcancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "com.linspirer.edu.scheduled.poweron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "com.linspirer.edu.class.over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "com.linspirer.edu.synctime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "com.linspirer.edu.screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "com.linspirer.edu.refrushtactics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "com.linspirer.edu.enable_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "com.linspirer.edu.rebootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "com.linspirer.edu.enablestatusbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "com.linspirer.edu.disablefileshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "com.linspirer.edu.logoutstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "com.linspirer.edu.allowstart.set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "com.linspirer.edu.setscreensaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "com.android.launcher3.mdm.OPEN_ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "com.linspirer.edu.get_sms_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "com.linspirer.edu.enablefirewall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "com.linspirer.edu.no_control_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "com.linspirer.edu.disablephoneserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "com.linspirer.edu.disablestatusbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "com.android.laucher3.mdm.disableLongPressPower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "com.linspirer.edu.no_control_screen_shoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x39

    goto :goto_1

    :sswitch_55
    const-string v1, "com.linspirer.edu.obtainlicensestatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x34

    goto :goto_1

    :sswitch_56
    const-string v1, "com.linspirer.edu.get_gesture_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x59

    goto :goto_1

    :sswitch_57
    const-string v1, "com.linspirer.edu.setshadeview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2b

    goto :goto_1

    :sswitch_58
    const-string v1, "com.linspirer.edu.disableotg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_59
    const-string v1, "com.linspirer.edu.disablemic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_5a
    const-string v1, "com.linspirer.edu.disableapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto :goto_1

    :sswitch_5b
    const-string v1, "com.linspirer.edu.gain.login.state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4e

    goto :goto_1

    :sswitch_5c
    const-string v1, "com.linspirer.edu.allow.unlock.device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    .line 7
    :pswitch_1
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->M()V

    goto/16 :goto_c

    .line 8
    :pswitch_2
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->U()V

    goto/16 :goto_c

    .line 9
    :pswitch_3
    invoke-static {p1}, Lcom/huawei/hem/y4;->K(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 10
    :pswitch_4
    invoke-static {p1}, Lcom/huawei/hem/y4;->O(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 11
    :pswitch_5
    invoke-static {p1}, Lcom/huawei/hem/y4;->P(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 12
    :pswitch_6
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v4}, Lcom/huawei/hem/y5;->r0(I)V

    goto/16 :goto_c

    .line 13
    :pswitch_7
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->S()V

    .line 14
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v3}, Lcom/huawei/hem/y5;->r0(I)V

    goto/16 :goto_c

    .line 15
    :pswitch_8
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->g0()V

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->r0(I)V

    goto/16 :goto_c

    .line 17
    :pswitch_9
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v4}, Lcom/huawei/hem/y5;->k0(I)V

    goto/16 :goto_c

    .line 18
    :pswitch_a
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableSpeech()V

    .line 19
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v3}, Lcom/huawei/hem/y5;->k0(I)V

    goto/16 :goto_c

    .line 20
    :pswitch_b
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableSpeech()V

    .line 21
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->k0(I)V

    goto/16 :goto_c

    .line 22
    :pswitch_c
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableGPS()V

    goto/16 :goto_c

    .line 23
    :pswitch_d
    invoke-static {p1}, Lcom/huawei/hem/y4;->M(Landroid/content/Context;)V

    .line 24
    :pswitch_e
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableGPS()V

    goto/16 :goto_c

    :pswitch_f
    const-string p1, "landscape"

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "portrait"

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/y5;->f0(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0, p2}, Lcom/huawei/hem/y5;->l0(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiver -- isv will change and reset lockwallpaper......landscape:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--portrait:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    const-string p2, "-1"

    invoke-virtual {p1, p2}, Lcom/huawei/hem/y5;->p0(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_10
    const-string p1, "path"

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p2, p1}, Lcom/huawei/hem/y5;->p0(Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EduAppReceiver -- isv will change and reset lockwallpaper......filePath:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    const-string p2, "-1"

    invoke-virtual {p1, p2}, Lcom/huawei/hem/y5;->f0(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    const-string p2, "-1"

    invoke-virtual {p1, p2}, Lcom/huawei/hem/y5;->l0(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 36
    :pswitch_11
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableLongPressPower()V

    goto/16 :goto_c

    .line 37
    :pswitch_12
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableLongPressPower()V

    goto/16 :goto_c

    .line 38
    :pswitch_13
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->x0()V

    goto/16 :goto_c

    .line 39
    :pswitch_14
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->f0()V

    goto/16 :goto_c

    :pswitch_15
    const-string v0, "status"

    .line 40
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/receiver/EduAppReceiver;->b(Landroid/content/Context;I)V

    goto/16 :goto_c

    :pswitch_16
    const-string p1, "device_name"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "EduAppReceiver -- deviceName is null , can not setup it."

    .line 44
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 45
    :cond_2
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->F0(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 46
    :pswitch_17
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->q0(I)V

    goto/16 :goto_c

    :pswitch_18
    const-string v0, "locktime"

    .line 47
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiver--locktime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-lez p2, :cond_1b

    mul-int/2addr p2, v2

    mul-int/lit16 p2, p2, 0x3e8

    const v0, 0x7ffffd78

    if-gt p2, v0, :cond_3

    if-gez p2, :cond_4

    :cond_3
    move p2, v0

    .line 49
    :cond_4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    check-cast v0, Lcom/huawei/hem/jc;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hem/jc;->T0(Landroid/content/Context;I)V

    goto/16 :goto_c

    .line 50
    :pswitch_19
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->l0()V

    goto/16 :goto_c

    :pswitch_1a
    const-string p1, "allowapps"

    .line 51
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    const-string p2, "EduAppReceiverisv allow start apps:"

    .line 53
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.android.launcher3"

    .line 55
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ndwill.swd.appstore"

    .line 56
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, p2}, Lcom/huawei/hem/ic;->m0(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 59
    :pswitch_1b
    invoke-static {}, Lcom/android/launcher3/network/TacticsHelper;->getInstance()Lcom/android/launcher3/network/TacticsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/TacticsHelper;->requestFromISV()V

    goto/16 :goto_c

    .line 60
    :pswitch_1c
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v4}, Lcom/huawei/hem/y5;->Z(I)V

    goto/16 :goto_c

    .line 61
    :pswitch_1d
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->Z(I)V

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->T(I)V

    .line 63
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableCamera()V

    goto/16 :goto_c

    .line 64
    :pswitch_1e
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->Z(I)V

    .line 65
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->T(I)V

    .line 66
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableCamera()V

    goto/16 :goto_c

    .line 67
    :pswitch_1f
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->I()J

    move-result-wide v0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-lez p1, :cond_1b

    .line 69
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->e(Landroid/content/Intent;Lcom/huawei/hem/y5;)V

    goto/16 :goto_c

    .line 70
    :pswitch_20
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->B()V

    goto/16 :goto_c

    .line 71
    :pswitch_21
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->Z()V

    goto/16 :goto_c

    :pswitch_22
    const-string p2, "com.zykj.manage"

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->c()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/huawei/hem/y4;->N(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 73
    :pswitch_23
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v4}, Lcom/huawei/hem/y5;->a0(I)V

    goto/16 :goto_c

    .line 74
    :pswitch_24
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->a0(I)V

    .line 75
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableScreenShot()V

    goto/16 :goto_c

    .line 76
    :pswitch_25
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->a0(I)V

    .line 77
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableScreenShot()V

    goto/16 :goto_c

    .line 78
    :pswitch_26
    invoke-static {}, Lcom/huawei/hem/q0;->C()Ljava/util/List;

    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p2}, Lcom/huawei/hem/ic;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 82
    iget-boolean p2, p1, Lcom/huawei/hem/y5;->B:Z

    if-eqz p2, :cond_7

    .line 83
    iput-boolean v5, p1, Lcom/huawei/hem/y5;->B:Z

    .line 84
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 85
    iget-object p2, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "open_intellgent_detection"

    invoke-interface {p2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :cond_7
    sget-object p1, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    .line 88
    invoke-virtual {p1}, Lcom/huawei/hem/w4;->a()V

    goto/16 :goto_c

    .line 89
    :pswitch_27
    invoke-static {}, Lcom/huawei/hem/q0;->C()Ljava/util/List;

    move-result-object p1

    .line 90
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p2}, Lcom/huawei/hem/ic;->y0(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 93
    iget-boolean p2, p1, Lcom/huawei/hem/y5;->B:Z

    if-eq p2, v6, :cond_9

    .line 94
    iput-boolean v6, p1, Lcom/huawei/hem/y5;->B:Z

    .line 95
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 96
    iget-object p2, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "open_intellgent_detection"

    invoke-interface {p2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    :cond_9
    sget-object p1, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    .line 99
    invoke-virtual {p1}, Lcom/huawei/hem/w4;->a()V

    goto/16 :goto_c

    .line 100
    :pswitch_28
    invoke-static {p1}, Lcom/huawei/hem/y4;->L(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 101
    :pswitch_29
    invoke-static {p1}, Lcom/huawei/hem/y4;->J(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 102
    :pswitch_2a
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->H0()V

    goto/16 :goto_c

    .line 103
    :pswitch_2b
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->I()V

    goto/16 :goto_c

    :pswitch_2c
    const-string v0, "when"

    .line 104
    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 105
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/launcher3/receiver/EduAppReceiver;->a(Landroid/content/Context;J)V

    .line 106
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v6, v2, v3, v1}, Lcom/huawei/hem/ic;->W(ZJLjava/lang/String;)V

    goto/16 :goto_c

    :pswitch_2d
    const-string p1, "poweron"

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "when"

    .line 108
    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 109
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, v6, v0, v1, p1}, Lcom/huawei/hem/ic;->T(ZJLjava/lang/String;)V

    goto/16 :goto_c

    :pswitch_2e
    const-string p1, "appnetwhitelist"

    .line 110
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "appnetwhitelist"

    .line 111
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "EduAppReceiver app net work list from isv :"

    .line 112
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p1, "app net exception used:empty"

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_a
    const-string p2, "app net exception used:"

    .line 115
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_b
    const-string p1, "EduAppReceiver app net work list from isv is empty"

    .line 116
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p1, "app net exception used:empty"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 118
    :pswitch_2f
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->a0()Ljava/util/ArrayList;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 120
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->j0(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :pswitch_30
    const-string p1, "ssids"

    .line 121
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->d(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :pswitch_31
    const-string p1, "shadeview_path"

    .line 122
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 124
    iget-object v0, p2, Lcom/huawei/hem/y5;->a:Ljava/lang/String;

    if-eq v0, p1, :cond_1b

    .line 125
    iput-object p1, p2, Lcom/huawei/hem/y5;->a:Ljava/lang/String;

    .line 126
    iget-object p2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 127
    iget-object v0, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "save_shade_view"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    iget-object p1, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c

    :pswitch_32
    const-string p1, "path"

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    .line 131
    iget-object v0, p2, Lcom/huawei/hem/y5;->m:Ljava/lang/String;

    if-eq v0, p1, :cond_c

    .line 132
    iput-object p1, p2, Lcom/huawei/hem/y5;->m:Ljava/lang/String;

    .line 133
    iget-object p2, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 134
    iget-object v0, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isv_wallpaper"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object p2, p2, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    :cond_c
    invoke-static {}, Lcom/android/launcher3/network/WallpaperHelper;->getInstance()Lcom/android/launcher3/network/WallpaperHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/network/WallpaperHelper;->sendBroadcast(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_33
    const-string p1, "appwhitelist"

    .line 137
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p2, :cond_1b

    const-string p2, "EduAppReceiver"

    const-string v0, "\u6536\u5230\u89e3\u51bbAPP\u5e7f\u64ad:"

    .line 139
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p2, v0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_34
    const-string p1, "appwhitelist"

    .line 143
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p2, :cond_1b

    const-string p2, "EduAppReceiver"

    const-string v0, "\u6536\u5230\u51bb\u7ed3APP\u5e7f\u64ad"

    .line 145
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p2, v0}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/huawei/hem/q0;->o(Ljava/util/List;)V

    goto/16 :goto_c

    :pswitch_35
    const-string v0, "packageName"

    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.linspirer.edu.return.userinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zykj.manage"

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 152
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 153
    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_e
    :goto_4
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 156
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->v()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->G()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->C()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p2

    const-string v4, "account"

    .line 160
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "nickName"

    .line 161
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "className"

    .line 162
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "schoolName"

    .line 163
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastSenderUtil ,userName==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",nickName=="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",className=="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",schoolName=="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 166
    :pswitch_36
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->P()Z

    move-result p2

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.laucher3.mdm.returneyeprotectstatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eyeprotect_status"

    .line 168
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastSenderUtil  eye protected status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 171
    :pswitch_37
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v5}, Lcom/huawei/hem/ic;->q0(Z)V

    goto/16 :goto_c

    .line 172
    :pswitch_38
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1, v6}, Lcom/huawei/hem/ic;->q0(Z)V

    goto/16 :goto_c

    .line 173
    :pswitch_39
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->K0()V

    goto/16 :goto_c

    .line 174
    :pswitch_3a
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->w()V

    goto/16 :goto_c

    .line 175
    :pswitch_3b
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->i()V

    goto/16 :goto_c

    .line 176
    :pswitch_3c
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->C()V

    goto/16 :goto_c

    .line 177
    :pswitch_3d
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->C0()V

    goto/16 :goto_c

    .line 178
    :pswitch_3e
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->o0()V

    goto/16 :goto_c

    .line 179
    :pswitch_3f
    invoke-static {p1, v6}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTime(Landroid/content/Context;Z)V

    goto/16 :goto_c

    .line 180
    :pswitch_40
    new-instance p2, Lcom/huawei/hem/rb;

    invoke-direct {p2}, Lcom/huawei/hem/rb;-><init>()V

    const-string p2, "initHandler"

    .line 181
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/huawei/hem/rb;->b:Lcom/huawei/hem/dk;

    .line 182
    iget-object v1, v1, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    .line 183
    monitor-enter v1

    .line 184
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v3, v1, Lcom/huawei/hem/sj;->d:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/fk$a;

    .line 186
    iget-object v4, v4, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 187
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 188
    :cond_f
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 189
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hem/kj;

    .line 190
    invoke-interface {v3}, Lcom/huawei/hem/kj;->request()Lcom/huawei/hem/gk;

    move-result-object v4

    .line 191
    iget-object v4, v4, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 193
    invoke-interface {v3}, Lcom/huawei/hem/kj;->cancel()V

    goto :goto_6

    .line 194
    :cond_11
    monitor-enter v1

    .line 195
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v3, v1, Lcom/huawei/hem/sj;->f:Ljava/util/Deque;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v3, v1, Lcom/huawei/hem/sj;->e:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/fk$a;

    .line 198
    iget-object v4, v4, Lcom/huawei/hem/fk$a;->d:Lcom/huawei/hem/fk;

    .line 199
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 200
    :cond_12
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 201
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hem/kj;

    .line 202
    invoke-interface {v2}, Lcom/huawei/hem/kj;->request()Lcom/huawei/hem/gk;

    move-result-object v3

    .line 203
    iget-object v3, v3, Lcom/huawei/hem/gk;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 204
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 205
    invoke-interface {v2}, Lcom/huawei/hem/kj;->cancel()V

    goto :goto_8

    .line 206
    :cond_14
    invoke-static {p1, v5}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 208
    monitor-exit v1

    throw p1

    .line 209
    :pswitch_41
    invoke-static {p1}, Lcom/huawei/hem/o5;->a(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 210
    :pswitch_42
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableShortPressPower()V

    goto/16 :goto_c

    .line 211
    :pswitch_43
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableShortPressPower()V

    goto/16 :goto_c

    .line 212
    :pswitch_44
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableVolume()V

    goto/16 :goto_c

    .line 213
    :pswitch_45
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableVolume()V

    goto/16 :goto_c

    .line 214
    :pswitch_46
    const-class p2, Lcom/android/launcher3/activity/AdminLoginActivity;

    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_c

    :pswitch_47
    const-string p1, "packageNames"

    .line 215
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "packageNames"

    .line 216
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need clear cache apps:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 219
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->v0(Ljava/util/List;)V

    goto/16 :goto_c

    .line 220
    :pswitch_48
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->g()V

    goto/16 :goto_c

    :pswitch_49
    const-string p1, "otg used:disable"

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_4a
    const-string p1, "otg used:enable"

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 223
    :pswitch_4b
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableRecent()V

    .line 224
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->X(I)V

    goto/16 :goto_c

    .line 225
    :pswitch_4c
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableRecent()V

    .line 226
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->X(I)V

    goto/16 :goto_c

    .line 227
    :pswitch_4d
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableHome()V

    .line 228
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->W(I)V

    goto/16 :goto_c

    .line 229
    :pswitch_4e
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableHome()V

    .line 230
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->W(I)V

    goto/16 :goto_c

    .line 231
    :pswitch_4f
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->enableBack()V

    .line 232
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v5}, Lcom/huawei/hem/y5;->V(I)V

    goto/16 :goto_c

    .line 233
    :pswitch_50
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableBack()V

    .line 234
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v6}, Lcom/huawei/hem/y5;->V(I)V

    goto/16 :goto_c

    :pswitch_51
    const-string p1, "packageName"

    .line 235
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EduAppReceiverkill app package name == "

    .line 236
    invoke-static {p2, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->J(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_52
    const-string p1, "packageName"

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EduAppReceiversilent uninstall apk package name == "

    .line 239
    invoke-static {p2, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->Q(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_53
    const-string p1, "path"

    .line 241
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EduAppReceiversilent install apk path == "

    .line 242
    invoke-static {p2, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2, p1}, Lcom/huawei/hem/ic;->F(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_54
    const-string p1, "fire wall used:disable"

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_55
    const-string p1, "fire wall used:enable"

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 246
    :pswitch_56
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->h0()V

    goto/16 :goto_c

    :pswitch_57
    const-string v0, "savedir"

    .line 247
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiversavedDir == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    if-eqz p2, :cond_15

    const-string v0, "/"

    .line 249
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "/"

    .line 250
    invoke-static {p2, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    :cond_15
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableScreenShot()V

    .line 252
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p2}, Lcom/huawei/hem/ic;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EduAppReceiverdestPath == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 254
    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->Q(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->l()I

    move-result p1

    if-nez p1, :cond_1b

    .line 256
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->disableScreenShot()V

    goto/16 :goto_c

    :pswitch_58
    const-string p1, "urlwhitelist"

    .line 257
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "urlWhiteList====>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_a

    .line 260
    :cond_16
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_17

    .line 262
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    const-string p1, "url white used: "

    .line 263
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_18
    :goto_a
    const-string p1, "url white used : empty"

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_59
    const-string p1, "appwhitelist"

    .line 265
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EduAppReceiverappWhiteList====>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 267
    invoke-static {p1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 268
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_19

    .line 270
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_19
    const-string p1, "app white used :"

    .line 271
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto :goto_c

    :cond_1a
    const-string p1, "app white used : empty"

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/launcher3/receiver/EduAppReceiver;->c(Ljava/lang/String;)V

    goto :goto_c

    .line 273
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/launcher3/receiver/EduAppReceiver;->f()V

    .line 274
    sget-object p1, Lcom/android/launcher3/receiver/EduAppReceiver;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_c

    :pswitch_5b
    const-string p1, "classLast"

    .line 275
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EduAppReceivertimeMin == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    const-string p2, "EduAppReceiver====>lockDevice()"

    .line 277
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 278
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->disableNavigation()V

    .line 279
    sget-object p2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p2}, Lcom/huawei/hem/ic;->disableSpeech()V

    .line 280
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p2, v6}, Lcom/huawei/hem/y5;->V(I)V

    .line 281
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p2, v6}, Lcom/huawei/hem/y5;->W(I)V

    .line 282
    iget-object p2, p0, Lcom/android/launcher3/receiver/EduAppReceiver;->a:Lcom/huawei/hem/y5;

    invoke-virtual {p2, v6}, Lcom/huawei/hem/y5;->X(I)V

    .line 283
    sget-object p2, Lcom/android/launcher3/receiver/EduAppReceiver;->b:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_1b

    .line 284
    sget-object p2, Lcom/android/launcher3/receiver/EduAppReceiver;->b:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/receiver/EduAppReceiver$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/receiver/EduAppReceiver$a;-><init>(Lcom/android/launcher3/receiver/EduAppReceiver;)V

    mul-int/2addr p1, v2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e6b13b4 -> :sswitch_5c
        -0x7bf7fa74 -> :sswitch_5b
        -0x731aa6d8 -> :sswitch_5a
        -0x731a7ab2 -> :sswitch_59
        -0x731a71d7 -> :sswitch_58
        -0x6e3478a1 -> :sswitch_57
        -0x6da8a8dd -> :sswitch_56
        -0x6a2dbb21 -> :sswitch_55
        -0x698e64a3 -> :sswitch_54
        -0x68f32f53 -> :sswitch_53
        -0x64d87358 -> :sswitch_52
        -0x6462f5c8 -> :sswitch_51
        -0x63981698 -> :sswitch_50
        -0x614ed50e -> :sswitch_4f
        -0x4fa1d0cd -> :sswitch_4e
        -0x4ea927a7 -> :sswitch_4d
        -0x4517208a -> :sswitch_4c
        -0x3ed5dce4 -> :sswitch_4b
        -0x3e051ed5 -> :sswitch_4a
        -0x36d45a56 -> :sswitch_49
        -0x342aa0d1 -> :sswitch_48
        -0x2fe32e96 -> :sswitch_47
        -0x2cb5dd1f -> :sswitch_46
        -0x2c094ba1 -> :sswitch_45
        -0x2b6eafab -> :sswitch_44
        -0x2b409d69 -> :sswitch_43
        -0x269e3d87 -> :sswitch_42
        -0x15e0e86c -> :sswitch_41
        -0x104418fe -> :sswitch_40
        -0x10327d33 -> :sswitch_3f
        -0xce73733 -> :sswitch_3e
        -0xbede4e6 -> :sswitch_3d
        -0x7fa887b -> :sswitch_3c
        -0x65ba407 -> :sswitch_3b
        -0x62687cf -> :sswitch_3a
        -0x5d73c35 -> :sswitch_39
        -0x5829674 -> :sswitch_38
        -0x1b39485 -> :sswitch_37
        -0x16cfc3 -> :sswitch_36
        0x196609f -> :sswitch_35
        0x45ae8b6 -> :sswitch_34
        0x587cbd4 -> :sswitch_33
        0x93cd8e2 -> :sswitch_32
        0xa489257 -> :sswitch_31
        0xfae7b95 -> :sswitch_30
        0xfc4ee73 -> :sswitch_2f
        0xfc606c0 -> :sswitch_2e
        0xfc8f6b8 -> :sswitch_2d
        0x114bd83f -> :sswitch_2c
        0x120e9304 -> :sswitch_2b
        0x15f79a56 -> :sswitch_2a
        0x193fed22 -> :sswitch_29
        0x1ad4d394 -> :sswitch_28
        0x1afacd74 -> :sswitch_27
        0x1e4f5687 -> :sswitch_26
        0x21e6a1bd -> :sswitch_25
        0x23c97e42 -> :sswitch_24
        0x242b4274 -> :sswitch_23
        0x2e448738 -> :sswitch_22
        0x32169008 -> :sswitch_21
        0x3e3b52c6 -> :sswitch_20
        0x4570681a -> :sswitch_1f
        0x46ea4bc6 -> :sswitch_1e
        0x4b226988 -> :sswitch_1d
        0x4bc8e093 -> :sswitch_1c
        0x4cb98c1b -> :sswitch_1b
        0x4f21138b -> :sswitch_1a
        0x51e535f4 -> :sswitch_19
        0x5217a7a4 -> :sswitch_18
        0x582056ff -> :sswitch_17
        0x5949d6b3 -> :sswitch_16
        0x59c3da5a -> :sswitch_15
        0x5c9c8719 -> :sswitch_14
        0x5e2af0ae -> :sswitch_13
        0x5e41638c -> :sswitch_12
        0x5e427bd9 -> :sswitch_11
        0x5e456bd1 -> :sswitch_10
        0x5e4fc105 -> :sswitch_f
        0x5fd1eb0f -> :sswitch_e
        0x64df3e49 -> :sswitch_d
        0x65ed15ff -> :sswitch_c
        0x665ea90b -> :sswitch_b
        0x6edb10a4 -> :sswitch_a
        0x6edc475f -> :sswitch_9
        0x7368569e -> :sswitch_8
        0x74b702bd -> :sswitch_7
        0x79325b78 -> :sswitch_6
        0x7b4fb2c3 -> :sswitch_5
        0x7c16ea59 -> :sswitch_4
        0x7ee95cef -> :sswitch_3
        0x7ee98915 -> :sswitch_2
        0x7ee991f0 -> :sswitch_1
        0x7f678c12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
