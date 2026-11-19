.class public Lcom/huawei/hem/license/HemLicenseManager;
.super Lcom/huawei/hms/common/HuaweiApi;


# annotations
.annotation build Lcom/huawei/hem/annotation/OuterVisible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/license/HemLicenseManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/HuaweiApi<",
        "Lcom/huawei/hem/p7;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:[B

.field public static final d:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hem/p7;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/huawei/hem/o7;

.field public static f:Lcom/huawei/hem/license/HemLicenseManager;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hem/license/HemLicenseStatusListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/hem/license/HemLicenseManager;->c:[B

    new-instance v0, Lcom/huawei/hms/api/Api;

    const-string v1, "HuaweiHem.API"

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hem/license/HemLicenseManager;->d:Lcom/huawei/hms/api/Api;

    new-instance v0, Lcom/huawei/hem/o7;

    invoke-direct {v0}, Lcom/huawei/hem/o7;-><init>()V

    sput-object v0, Lcom/huawei/hem/license/HemLicenseManager;->e:Lcom/huawei/hem/o7;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/huawei/hem/license/HemLicenseManager;->d:Lcom/huawei/hms/api/Api;

    new-instance v1, Lcom/huawei/hem/p7;

    invoke-direct {v1}, Lcom/huawei/hem/p7;-><init>()V

    sget-object v2, Lcom/huawei/hem/license/HemLicenseManager;->e:Lcom/huawei/hem/o7;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    iput-object p1, p0, Lcom/huawei/hem/license/HemLicenseManager;->a:Landroid/content/Context;

    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.huawei.hem.license.operation"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hem/license/HemLicenseManager;->a:Landroid/content/Context;

    new-instance v1, Lcom/huawei/hem/license/HemLicenseManager$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hem/license/HemLicenseManager$a;-><init>(Lcom/huawei/hem/license/HemLicenseManager;B)V

    const-string v2, "com.huawei.hms.permission.signatureOrSystem"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1
    :catchall_0
    sget-object p1, Lcom/huawei/hem/s7;->a:Lcom/huawei/hem/t7;

    const/4 v0, 0x6

    const-string v1, "HemLicenseManager"

    const-string v2, "hem register broadcast error"

    invoke-virtual {p1, v0, v1, v2}, Lcom/huawei/hem/t7;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;
    .locals 2
    .annotation build Lcom/huawei/hem/annotation/OuterVisible;
    .end annotation

    sget-object v0, Lcom/huawei/hem/license/HemLicenseManager;->c:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/license/HemLicenseManager;->f:Lcom/huawei/hem/license/HemLicenseManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/license/HemLicenseManager;

    invoke-direct {v1, p0}, Lcom/huawei/hem/license/HemLicenseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/hem/license/HemLicenseManager;->f:Lcom/huawei/hem/license/HemLicenseManager;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/huawei/hms/common/HuaweiApi;->setApiLevel(I)V

    sget-object p0, Lcom/huawei/hem/license/HemLicenseManager;->f:Lcom/huawei/hem/license/HemLicenseManager;

    const v1, 0x9896e6

    invoke-virtual {p0, v1}, Lcom/huawei/hms/common/HuaweiApi;->setKitSdkVersion(I)V

    :cond_0
    sget-object p0, Lcom/huawei/hem/license/HemLicenseManager;->f:Lcom/huawei/hem/license/HemLicenseManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public activeLicense()Lcom/huawei/hem/w7;
    .locals 3
    .annotation build Lcom/huawei/hem/annotation/OuterVisible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hem/w7<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/huawei/hem/q7;

    const-string v2, "hem.licenseActivate"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/huawei/hem/q7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hem/license/HemLicenseManager;->b:Lcom/huawei/hem/license/HemLicenseStatusListener;

    iput-object v0, v1, Lcom/huawei/hem/q7;->a:Lcom/huawei/hem/license/HemLicenseStatusListener;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hem/w7;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "licenseActivate failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HemLicenseManager"

    invoke-static {v1, v0}, Lcom/huawei/hem/s7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public deActiveLicense()Lcom/huawei/hem/w7;
    .locals 3
    .annotation build Lcom/huawei/hem/annotation/OuterVisible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hem/w7<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/huawei/hem/q7;

    const-string v2, "hem.licenseDeActivate"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/huawei/hem/q7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hem/license/HemLicenseManager;->b:Lcom/huawei/hem/license/HemLicenseStatusListener;

    iput-object v0, v1, Lcom/huawei/hem/q7;->a:Lcom/huawei/hem/license/HemLicenseStatusListener;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hem/w7;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "licenseDeActivate failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HemLicenseManager"

    invoke-static {v1, v0}, Lcom/huawei/hem/s7;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V
    .locals 0
    .annotation build Lcom/huawei/hem/annotation/OuterVisible;
    .end annotation

    iput-object p1, p0, Lcom/huawei/hem/license/HemLicenseManager;->b:Lcom/huawei/hem/license/HemLicenseStatusListener;

    return-void
.end method
