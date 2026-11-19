# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/receiver/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "UsbReceiver --cancelMount starting"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/huawei/hem/ce;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableOTG()V

    const-wide/16 v0, 0x3e8

    .line 6
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_1
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableOTG()V

    goto :goto_2

    .line 9
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->v()V

    :goto_2
    return-void
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）。
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p2, "UsbReceiver  receiver otg attached"

    .line 4
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p2, "UsbReceiver --detectUsbDeviceWithUsbManager starting"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 7
    invoke-virtual {p2}, Lcom/huawei/hem/y5;->w()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "UsbReceiver otg is not allowed to used"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/launcher3/receiver/UsbReceiver;->a()V

    goto/16 :goto_1

    .line 10
    :cond_1
    iget-object v0, p2, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    const/4 v1, 0x0

    .line 12
    iget-object v0, v0, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v2, "pid_vid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iput-object v0, p2, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object p2, p2, Lcom/huawei/hem/y5;->c0:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "UsbReceiver all otg allow to used"

    .line 16
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 17
    :cond_3
    const-class v0, Lcom/android/launcher3/model/PvList;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    const-string v0, "usb"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "UsbReceiver --deviceHashMap size:"

    .line 20
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 23
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbReceiver --pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 26
    invoke-static {p2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/PvList;

    .line 28
    invoke-virtual {v3}, Lcom/android/launcher3/model/PvList;->getVid()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 29
    invoke-virtual {v3}, Lcom/android/launcher3/model/PvList;->getPid()I

    move-result v4

    if-eq v4, v1, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher3/model/PvList;->getPid()I

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    const-string v0, "UsbReceiver  otg device allowd to used"

    .line 30
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/receiver/UsbReceiver;->a()V

    goto :goto_0

    :cond_8
    const-string p1, "UsbReceiver --usblist is null"

    .line 32
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "UsbReceiver  receiver otg detached"

    .line 34
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method
