.class public Lcom/alibaba/sdk/android/push/common/util/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.alibaba.sdk.android.push.common.util.c"

.field public static b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/push/common/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/c;->b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
