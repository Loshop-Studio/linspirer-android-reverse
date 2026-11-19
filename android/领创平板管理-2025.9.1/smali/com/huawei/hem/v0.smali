.class public Lcom/huawei/hem/v0;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final a:Lcom/alibaba/sdk/android/logger/ILog;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/Class;

.field public static d:Lcom/huawei/hem/u0;

.field public static e:Lcom/huawei/hem/n0;

.field public static f:I

.field public static g:I

.field public static h:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "[MPS]"

    .line 1
    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/v0;->a:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "com.alibaba.sdk.android.push.NOTIFY_ACTION"

    .line 2
    sput-object v0, Lcom/huawei/hem/v0;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/huawei/hem/v0;->c:Ljava/lang/Class;

    .line 4
    sput-object v0, Lcom/huawei/hem/v0;->d:Lcom/huawei/hem/u0;

    .line 5
    sput-object v0, Lcom/huawei/hem/v0;->e:Lcom/huawei/hem/n0;

    const/4 v1, 0x0

    .line 6
    sput v1, Lcom/huawei/hem/v0;->f:I

    .line 7
    sput v1, Lcom/huawei/hem/v0;->g:I

    .line 8
    sput-object v0, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/u0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hem/u0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/hem/v0;->d:Lcom/huawei/hem/u0;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public static b()I
    .locals 3

    .line 1
    sget v0, Lcom/huawei/hem/v0;->f:I

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hem/v0;->h:Ljava/util/Random;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/huawei/hem/v0;->f:I

    if-gez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lcom/huawei/hem/v0;->f:I

    .line 6
    :cond_1
    sget v0, Lcom/huawei/hem/v0;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/hem/v0;->f:I

    return v0
.end method
