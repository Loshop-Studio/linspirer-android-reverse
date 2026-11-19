# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/receiver/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# static fields
.field public static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-eqz p2, :cond_2d

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventReceiver  action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_6
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_8
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v2, ":"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_d

    .line 5
    :pswitch_0
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "EventReceiver device is release control no need handle usb detached event"

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v4, v4}, Lcom/android/launcher3/network/IllegalHelper;->recordSD(ZZ)V

    goto/16 :goto_d

    .line 9
    :pswitch_1
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "EventReceiver device is release control no need handle usb attached event"

    .line 11
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/network/IllegalHelper;->recordSD(ZZ)V

    goto/16 :goto_d

    .line 13
    :pswitch_2
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->R()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "EventReceiver device is release control no need handle sd  unmounted event"

    .line 15
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/network/DeviceLogHelper;->recordSDEvent(Z)V

    .line 17
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/android/launcher3/network/IllegalHelper;->recordSD(ZZ)V

    goto/16 :goto_d

    .line 18
    :pswitch_3
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 19
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->R()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "EventReceiver device is release control no need handle sd event"

    .line 20
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_5
    const-string p2, "getExternalSDuUID is start"

    .line 21
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :try_start_0
    const-string p2, "storage"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    const-string p2, "android.os.storage.StorageVolume"

    .line 23
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeList"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "isRemovable"

    new-array v3, v4, [Ljava/lang/Class;

    .line 25
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getUuid"

    new-array v6, v4, [Ljava/lang/Class;

    .line 26
    invoke-virtual {p2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move v1, v4

    .line 28
    :goto_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 29
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-array v7, v4, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "getExternalSDuUID == "

    .line 32
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 33
    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "EventReceiver \u63d2\u5165sd\u5361"

    .line 34
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/network/DeviceLogHelper;->recordSDEvent(Z)V

    .line 36
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v5, v5}, Lcom/android/launcher3/network/IllegalHelper;->recordSD(ZZ)V

    goto/16 :goto_d

    :cond_8
    const-string p1, "EventReceiver sd\u5361\u672a\u63d2\u5165"

    .line 37
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 38
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 39
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 40
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "EventReceiver device is release control no need handle usb event"

    .line 41
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 42
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    sget-wide v2, Lcom/android/launcher3/receiver/EventReceiver;->a:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-gtz v2, :cond_a

    goto/16 :goto_d

    .line 44
    :cond_a
    sput-wide v0, Lcom/android/launcher3/receiver/EventReceiver;->a:J

    .line 45
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v0

    const-string v1, "connected"

    if-eqz v0, :cond_d

    .line 46
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_enabled"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_b

    move p1, v5

    goto :goto_3

    :cond_b
    move p1, v4

    :goto_3
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_c

    const-string p1, "EventReceiver huawei or hihonor connect usb to pc"

    .line 48
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/network/DeviceLogHelper;->recordUsbEvent(Z)V

    .line 50
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/IllegalHelper;->recordConnectUsb()V

    goto/16 :goto_d

    :cond_c
    const-string p1, "EventReceiver huawei or hihonor disconnect usb to pc"

    .line 51
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/network/DeviceLogHelper;->recordUsbEvent(Z)V

    .line 53
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/IllegalHelper;->recordDisconnectUsb()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_d

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_d

    :cond_d
    const-string p1, "adb"

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "EventReceiver  connect usb to pc"

    .line 56
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/network/DeviceLogHelper;->recordUsbEvent(Z)V

    .line 58
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/IllegalHelper;->recordConnectUsb()V

    goto/16 :goto_d

    .line 59
    :cond_e
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    const-string p1, "EventReceiver  disconnect usb to pc"

    .line 60
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/network/DeviceLogHelper;->recordUsbEvent(Z)V

    .line 62
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/IllegalHelper;->recordDisconnectUsb()V

    goto/16 :goto_d

    :pswitch_5
    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 63
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 64
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 65
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->R()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p1, "EventReceiver device is release control no need handle bluetooth event"

    .line 66
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_f
    const/16 p2, 0xc

    if-ne p1, p2, :cond_10

    move v4, v5

    .line 67
    :cond_10
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/network/DeviceLogHelper;->recordBluetoothEvent(Z)V

    .line 68
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/IllegalHelper;->recordOpenBluetooth()V

    goto/16 :goto_d

    .line 69
    :pswitch_6
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 70
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->R()Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "EventReceiver device is release control no need handle sim event"

    .line 71
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_11
    const-string p2, "phone"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p2

    if-eq p2, v5, :cond_13

    if-eq p2, v3, :cond_12

    const-string p1, "EventReceiver ====other"

    .line 74
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_12
    const-string p2, "EventReceiver ====SIM_STATE_READY"

    .line 75
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/huawei/hem/de;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2c

    const-string p2, "unknown"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c

    .line 78
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/launcher3/network/DeviceLogHelper;->recordSIMCardEvent(Z)V

    .line 79
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/network/IllegalHelper;->recordChangeSIM(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_13
    const-string p1, "EventReceiver ====SIM_STATE_ABSENT"

    .line 80
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/network/DeviceLogHelper;->recordSIMCardEvent(Z)V

    goto/16 :goto_d

    .line 82
    :pswitch_7
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventReceiver uninstalled  apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordUninstalledEvent(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/IllegalHelper;->recordUninstallApp(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    .line 87
    sget-object p1, Lcom/huawei/hem/p5$b;->a:Lcom/huawei/hem/p5;

    .line 88
    invoke-virtual {p1, v5}, Lcom/huawei/hem/p5;->a(I)V

    goto/16 :goto_d

    .line 89
    :pswitch_8
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v5

    .line 90
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 91
    invoke-virtual {v1}, Lcom/huawei/hem/y5;->R()Z

    move-result v1

    const-string v3, "com.zykj.manage"

    if-eqz v1, :cond_14

    .line 92
    invoke-static {p1}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 93
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventReceiver installed or update apps:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordInstalledEvent(Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1}, Lcom/huawei/hem/ic;->M0()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 97
    invoke-static {}, Lcom/huawei/hem/q0;->F()Ljava/util/List;

    move-result-object v1

    .line 98
    :cond_15
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ";"

    if-nez v6, :cond_18

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    move v1, v4

    goto :goto_4

    :cond_17
    move v1, v5

    :goto_4
    if-eqz v1, :cond_18

    const-string v1, "ApkHashUtils app is not in white list "

    .line 101
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/network/IllegalHelper;->recordInstalledApp(Ljava/util/List;)V

    .line 105
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, p2}, Lcom/huawei/hem/ic;->Q(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 106
    :cond_18
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v6, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Packagename:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v8, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/ItemApp;

    if-eqz v1, :cond_19

    .line 108
    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_19
    move-object v1, v0

    .line 109
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "miahash"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "ltkhash"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "null"

    .line 110
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_7

    .line 111
    :cond_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_8

    .line 112
    :cond_1b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_8

    .line 113
    :cond_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_8

    .line 114
    :cond_1d
    invoke-static {p1, p2}, Lcom/huawei/hem/y4;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    .line 115
    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "ApkHashUtils  installed app  hash not equals server"

    .line 117
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 118
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 119
    invoke-virtual {v2, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 120
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    .line 122
    :goto_6
    invoke-static {v2, v7, p2, v7, v6}, Lcom/huawei/hem/f6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v7, v1}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, p2}, Lcom/huawei/hem/ic;->Q(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/IllegalHelper;->recordInstalledApp(Ljava/util/List;)V

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v1, "ApkHashUtils server not get hash no need check"

    .line 127
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 128
    :cond_1f
    :goto_8
    invoke-static {}, Lcom/huawei/hem/r5;->a()Lcom/huawei/hem/r5;

    move-result-object v1

    .line 129
    iget-object v2, v1, Lcom/huawei/hem/r5;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->h()Ljava/lang/String;

    move-result-object v2

    .line 130
    const-class v6, Lcom/android/launcher3/model/ComponentInfo;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v1, "ComponentHelper--component names are empty"

    .line 132
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_a

    .line 133
    :cond_20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/ComponentInfo;

    .line 135
    invoke-virtual {v7}, Lcom/android/launcher3/model/ComponentInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 136
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 137
    :cond_22
    invoke-static {v6}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "ComponentHelperhandle from installed app "

    .line 138
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v6, v4}, Lcom/huawei/hem/r5;->c(Ljava/util/List;Z)V

    .line 140
    :cond_23
    :goto_a
    sget-object v1, Lcom/huawei/hem/a5$b;->a:Lcom/huawei/hem/a5;

    if-eqz v1, :cond_2b

    .line 141
    invoke-static {}, Lcom/huawei/hem/q0;->s()Ljava/util/List;

    move-result-object v2

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 144
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_24
    iget-object v1, v1, Lcom/huawei/hem/a5;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    invoke-static {v1}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 148
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2, v1}, Lcom/huawei/hem/ic;->d(Ljava/util/ArrayList;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupperAppHelper  add super apps from install receiver packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 153
    :cond_25
    sget-object v1, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    if-eqz v1, :cond_2a

    .line 154
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 155
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_b

    .line 156
    :cond_26
    iget-object v0, v1, Lcom/huawei/hem/w4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "AppWhiteExceptionHelper installed white exception apps"

    .line 157
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->h()V

    .line 159
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    iget-object v1, v1, Lcom/huawei/hem/w4;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->I0(Ljava/util/List;)V

    .line 160
    :cond_27
    :goto_b
    invoke-static {p1}, Lcom/huawei/hem/y4;->F(Landroid/content/Context;)V

    .line 161
    sget-object v0, Lcom/huawei/hem/p5$b;->a:Lcom/huawei/hem/p5;

    .line 162
    invoke-virtual {v0, v5}, Lcom/huawei/hem/p5;->a(I)V

    .line 163
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/network/AppTimeLimitHelper;->handleFromInstalled(Ljava/lang/String;)V

    :goto_c
    const-string v0, "com.android.launcher3"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.ndwill.swd.appstore"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.linspirer.exclusivebrowser"

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 166
    :cond_28
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v4, ".apk"

    invoke-static {v1, v2, p2, v4}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_29
    const-string v0, "com.zykj.launcher.home"

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventReceiver start isv launcher package:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 171
    invoke-static {p1, v0, v5}, Lcom/huawei/hem/bc;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_d

    .line 172
    :cond_2a
    throw v0

    .line 173
    :cond_2b
    throw v0

    :cond_2c
    :goto_d
    return-void

    :cond_2d
    :goto_e
    const-string p1, "EventReceiver no need handle receiver by null"

    .line 174
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_8
        -0x5fdc9a67 -> :sswitch_7
        -0x5b36f014 -> :sswitch_6
        -0x4418042d -> :sswitch_5
        -0x39738481 -> :sswitch_4
        -0x1d79ebb1 -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
