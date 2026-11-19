# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/DeviceLogHelper;
.super Ljava/lang/Object;
.source "DeviceLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/network/DeviceLogHelper$DeviceLogHolder;,
        Lcom/android/launcher3/network/DeviceLogHelper$EventConfig;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceLogHelper "


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

.field public mUserInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    .line 7
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getUserEventDao()Lcom/android/launcher3/db/model/UserEventDao;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    .line 10
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mHttpCore:Lcom/huawei/hem/rb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/network/DeviceLogHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/DeviceLogHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/DeviceLogHelper;)Lcom/android/launcher3/db/model/UserEventDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    return-object p0
.end method

.method private createUserEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/launcher3/db/model/UserEvent;

    invoke-direct {v0}, Lcom/android/launcher3/db/model/UserEvent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/UserEvent;->setEventName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/launcher3/db/model/UserEvent;->setDescription(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/UserEvent;->setUserName(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/huawei/hem/bc;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/db/model/UserEvent;->setEventTime(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_1

    const-string p1, "DeviceLogHelper  db cache is too large"

    .line 9
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    return-void

    :cond_2
    :goto_0
    const-string p1, "DeviceLogHelper device is release or has no email no need record"

    .line 12
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/network/DeviceLogHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper$DeviceLogHolder;->access$000()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordAccountLogin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_login"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordAccountOfflineLogin()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_login"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordAccountOut(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "account_logout"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordAdminEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "admin_login"

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordBluetoothEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_bluetooth_normal"

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "close_bluetooth_normal"

    .line 3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordClearEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_clean_all"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordFirstUesed(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceLogHelper ===cache email:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/huawei/hem/y5;->Y(Ljava/lang/String;)V

    const-string p1, "first_init_used"

    const-string v0, " first logined in this device"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordInstalledEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "prohibited_app_normal"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordOpenApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "start_app_normal"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordOpenClearApp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter_clean_app"

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordPermissionEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DeviceLogHelper no permission event no need reocrd by email is empty"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "not_granted_permission"

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordSDEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdcard_plug_in_normal"

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdcard_plug_out_normal"

    .line 3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordSIMCardEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "change_simcard_normal"

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordUninstalledEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uninstall_app_normal"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordUsbEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "usb_plug_in_normal"

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "usb_plug_out_normal"

    .line 3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->createUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadEvent()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/huawei/hem/y4;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DeviceLogHelper device is release no need upload"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserEventDao:Lcom/android/launcher3/db/model/UserEventDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "DeviceLogHelper logs empty no need upload"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 7
    new-instance v2, Lcom/android/launcher3/network/params/ListParams;

    iget-object v3, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/network/params/ListParams;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v2, v0}, Lcom/android/launcher3/network/params/ListParams;->setReportlist(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mUserInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/network/params/Params;->setEmail(Ljava/lang/String;)V

    const-string v0, "com.linspirer.device.setdevicelogs"

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/network/DeviceLogHelper;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_2

    .line 13
    new-instance v2, Lcom/huawei/hem/vb;

    invoke-direct {v2, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    const-string v0, "https://bd.linspirer.com:883/public-interface.php"

    .line 14
    iput-object v0, v2, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v2, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/launcher3/network/DeviceLogHelper$1;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/network/DeviceLogHelper$1;-><init>(Lcom/android/launcher3/network/DeviceLogHelper;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v2, v0}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
