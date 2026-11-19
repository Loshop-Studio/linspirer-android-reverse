# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/receiver/MsgReceiver;
.super Lcom/alibaba/sdk/android/push/MessageReceiver;
.source "MsgReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/MessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle push message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MPS:AgooMessageReceiverpush message empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    const-class v0, Lcom/android/launcher3/model/CommandInfo;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/CommandInfo;

    if-nez p2, :cond_1

    const-string p1, "MPS:AgooMessageReceiverparser message empty"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/model/CommandInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 8
    invoke-virtual {p2}, Lcom/android/launcher3/model/CommandInfo;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command_applist"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "command_dynamic_device_info"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "command_tactics_updated"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/launcher3/network/ReciverPushHelper;->getInstance()Lcom/android/launcher3/network/ReciverPushHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/CommandInfo;->getActive()I

    move-result p2

    invoke-virtual {v1, v0, p2, p1}, Lcom/android/launcher3/network/ReciverPushHelper;->reportServer(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/model/CommandInfo;->getActive()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 14
    invoke-static {}, Lcom/android/launcher3/network/ReciverPushHelper;->getInstance()Lcom/android/launcher3/network/ReciverPushHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/ReciverPushHelper;->getPushMessage(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNotificationClickedWithNoAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNotificationReceivedInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
