.class public abstract Lorg/android/agoo/control/BaseIntentService;
.super Landroid/app/Service;
.source "Taobao"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseIntentService"

.field public static final msgStatus:Ljava/lang/String; = "4"


# instance fields
.field public agooFactory:Lorg/android/agoo/control/AgooFactory;

.field public mContext:Landroid/content/Context;

.field public messageService:Lorg/android/agoo/message/MessageService;

.field public messenger:Landroid/os/Messenger;

.field public notifyManager:Lorg/android/agoo/control/NotifManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/android/agoo/control/h;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/h;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public static synthetic access$000(Lorg/android/agoo/control/BaseIntentService;)Lorg/android/agoo/control/AgooFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/AgooFactory;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object p1
.end method

.method public static synthetic access$102(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/NotifManager;)Lorg/android/agoo/control/NotifManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/message/MessageService;)Lorg/android/agoo/message/MessageService;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    return-object p1
.end method

.method private final getTrace(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknow"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appkey"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "1"

    const-string v4, "messageId="

    const-string v5, "fromAppkey"

    const-string v6, "source"

    const-string v7, "body"

    const-string v8, "agoo_arrive"

    const-string v9, "accs"

    const-string v10, "BaseIntentService"

    :try_start_0
    const-string v0, "id"

    .line 1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "type"

    .line 3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "message_source"

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "report"

    .line 5
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "encrypted"

    move-object/from16 v16, v13

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "extData"

    move-object/from16 v17, v3

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "oriData"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    move-object/from16 v18, v8

    .line 8
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    const/16 v19, 0x0

    :try_start_2
    const-string v0, "trace"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v21, v8

    move-object/from16 v20, v9

    const-wide/16 v8, -0x1

    .line 9
    :try_start_3
    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v22, v4

    move-object/from16 v4, p1

    :try_start_4
    invoke-direct {v1, v4, v8, v9}, Lorg/android/agoo/control/BaseIntentService;->getTrace(Landroid/content/Context;J)Ljava/lang/String;

    const-string v0, "msg_agoo_bundle"

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 12
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 13
    :try_start_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v8, "oldsdk"

    .line 14
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    :try_start_6
    const-string v4, "accs_extra"

    .line 15
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_1
    move-object/from16 v0, v19

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v21, v8

    move-object/from16 v20, v9

    :goto_0
    move-object/from16 v8, v19

    .line 16
    :goto_1
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_trace,t="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object v9, v0

    .line 17
    :goto_2
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    const/16 v23, 0x4

    const/16 v24, 0x1

    if-eqz v4, :cond_2

    const-string v4, "handleRemoteMessage"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v25, "message"

    const/16 v26, 0x0

    aput-object v25, v2, v26

    aput-object v12, v2, v24

    const/16 v25, 0x2

    aput-object v6, v2, v25

    const/4 v6, 0x3

    aput-object v14, v2, v6

    const-string v6, "msgId"

    aput-object v6, v2, v23

    const/4 v6, 0x5

    aput-object v11, v2, v6

    const/4 v6, 0x6

    const-string v25, "utdid"

    aput-object v25, v2, v6

    const/4 v6, 0x7

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v2, v6

    const/16 v6, 0x8

    const-string v25, "fromPkg"

    aput-object v25, v2, v6

    const/16 v6, 0x9

    aput-object v8, v2, v6

    const/16 v6, 0xa

    aput-object v5, v2, v6

    const/16 v5, 0xb

    aput-object v9, v2, v5

    .line 19
    invoke-static {v10, v4, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_2
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 21
    iput-object v11, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 22
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 23
    iput-object v14, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    const-string v3, "4"

    .line 24
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 25
    iput-object v15, v2, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    .line 26
    iput-object v8, v2, Lorg/android/agoo/common/MsgDO;->fromPkg:Ljava/lang/String;

    .line 27
    iput-object v9, v2, Lorg/android/agoo/common/MsgDO;->fromAppkey:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->isFirstStartProc()Z

    move-result v3

    iput-boolean v3, v2, Lorg/android/agoo/common/MsgDO;->isStartProc:Z

    .line 29
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->notifyEnable:Ljava/lang/String;

    .line 30
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 31
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "message is encrypted, attemp to decrypt msg"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 32
    invoke-static {v10, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v12}, Lorg/android/agoo/control/AgooFactory;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "22"

    .line 35
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 36
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void

    :cond_3
    const-string v3, "msg encrypted flag not exist~~"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 37
    invoke-static {v10, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    :try_start_8
    const-string v3, "24"

    .line 38
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 39
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    return-void

    .line 40
    :cond_4
    :try_start_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    if-eqz v3, :cond_5

    :try_start_a
    const-string v3, "21"

    .line 41
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 42
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    :try_start_b
    const-string v0, "handleMessage--->[null]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v10, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object/from16 v3, p2

    .line 44
    invoke-virtual {v3, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    .line 45
    :try_start_c
    iget-object v4, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v4, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 46
    iget-object v0, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    const-string v4, "0"

    move-object/from16 v5, v21

    invoke-virtual {v0, v11, v5, v4}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v25

    const/16 v26, 0x4e1f

    const-string v27, "Page_Push"

    const-string v28, "agoo_arrive_id"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v19, v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v5, v22

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v24

    move-object/from16 v31, v0

    invoke-virtual/range {v25 .. v31}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v0, "arrive"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const-wide/16 v6, 0x0

    move-object/from16 v4, v18

    move-object/from16 v8, v20

    .line 48
    :try_start_e
    invoke-static {v8, v4, v0, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v8, v20

    goto :goto_3

    :catchall_9
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v8, v20

    move-object/from16 v5, v22

    .line 49
    :goto_3
    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report message Throwable--->t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10, v0, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_4
    iget-object v0, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v0, v11}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoteMessage hasMessageDuplicate,messageId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",utdid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const-string v0, "arrive_dup"

    const-wide/16 v2, 0x0

    .line 53
    invoke-static {v8, v4, v0, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    .line 54
    :cond_7
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage--->["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "],["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10, v0, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :cond_8
    :try_start_10
    const-string v0, "duplicate"

    .line 56
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-nez v6, :cond_9

    move-object/from16 v6, v17

    .line 58
    :try_start_11
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 60
    iget-object v7, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v7, v11, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "arrive_dupbody"

    const-wide/16 v13, 0x0

    .line 61
    invoke-static {v8, v4, v0, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    goto :goto_5

    :cond_9
    move-object/from16 v6, v17

    goto :goto_6

    :catchall_b
    move-exception v0

    move-object/from16 v6, v17

    .line 62
    :goto_5
    :try_start_12
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasMessageDuplicate message,e="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v10, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    :cond_a
    :goto_6
    const/4 v0, -0x1

    :try_start_13
    const-string v7, "notify"

    .line 64
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :catchall_c
    :try_start_14
    const-string v7, ""
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    :try_start_15
    const-string v9, "has_test"

    .line 66
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 68
    iget-object v6, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move-object/from16 v9, v16

    :try_start_16
    invoke-virtual {v6, v11, v12, v9, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "arrive_test"

    const-wide/16 v13, 0x0

    .line 69
    invoke-static {v8, v4, v6, v13, v14}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :cond_b
    move-object/from16 v9, v16

    .line 70
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    goto :goto_7

    :catchall_d
    move-object/from16 v9, v16

    .line 71
    :catchall_e
    :goto_7
    :try_start_17
    iget-object v6, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v6, v11, v12, v9, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v25

    const/16 v26, 0x4e1f

    const-string v27, "Page_Push"

    const-string v28, "agoo_arrive_real_id"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v24

    move-object/from16 v31, v0

    invoke-virtual/range {v25 .. v31}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrive_real_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-static {v8, v4, v0, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v0, "monitor"

    .line 74
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    if-eqz v0, :cond_c

    .line 75
    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToAgooTime()V

    .line 76
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 77
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lorg/android/agoo/control/BaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_9

    :catchall_f
    move-exception v0

    goto :goto_8

    :catchall_10
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v8, v20

    goto :goto_8

    :catchall_11
    move-exception v0

    move-object v8, v9

    move-object/from16 v4, v18

    goto :goto_8

    :catchall_12
    move-exception v0

    move-object v4, v8

    move-object v8, v9

    :goto_8
    const-string v2, "arrive_exception"

    .line 78
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v8, v4, v0, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :goto_9
    return-void
.end method

.method private final handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 5
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemovePackage---->[replacing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "],uninstallPack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseIntentService"

    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez p2, :cond_4

    .line 7
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v0, p1, p2}, Lorg/android/agoo/control/NotifManager;->doUninstall(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/taobao/accs/utl/OrangeAdapter;->isBindService(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isTarget26(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lorg/android/agoo/control/j;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/j;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Lorg/android/agoo/control/k;

    invoke-direct {v0, p0}, Lorg/android/agoo/control/k;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onError(Landroid/content/Context;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "onHandleIntent,action="

    .line 4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BaseIntentService"

    invoke-static {v4, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/control/BaseIntentService;->handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/control/BaseIntentService;->handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "org.agoo.android.intent.action.REPORT"

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 10
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 11
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 12
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 13
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.USER_PRESENT"

    .line 14
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 15
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 16
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_7

    .line 17
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is report cache msg,Config.isReportCacheMsg(mContext)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/common/Config;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/common/Config;->e(Landroid/content/Context;)V

    .line 21
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    invoke-virtual {p1}, Lorg/android/agoo/control/AgooFactory;->reportCacheMsg()V

    .line 22
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {p1}, Lorg/android/agoo/message/MessageService;->a()V

    .line 23
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is clear all msg="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;J)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_6
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;J)V

    .line 28
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {p1}, Lorg/android/agoo/message/MessageService;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "reportCacheMsg"

    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v4, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "onHandleIntent deal error"

    new-array v1, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v4, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 32
    :cond_7
    :goto_0
    sget-object p1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :catchall_2
    move-exception p1

    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 33
    throw p1
.end method

.method public abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    new-instance p2, Lorg/android/agoo/control/l;

    invoke-direct {p2, p0, p1}, Lorg/android/agoo/control/l;-><init>(Lorg/android/agoo/control/BaseIntentService;Landroid/content/Intent;)V

    invoke-static {p2}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    return p1
.end method
