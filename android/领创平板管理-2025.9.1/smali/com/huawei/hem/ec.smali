.class public Lcom/huawei/hem/ec;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# static fields
.field public static volatile c:Lcom/huawei/hem/ec;

.field public static d:Landroid/content/Context;


# instance fields
.field public a:Landroid/net/wifi/WifiManager;

.field public b:Landroid/net/wifi/WifiInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lcom/huawei/hem/ec;->d:Landroid/content/Context;

    const-string v0, "wifi"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/huawei/hem/ec;->a:Landroid/net/wifi/WifiManager;

    .line 4
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/ec;->b:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huawei/hem/ec;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/ec;->c:Lcom/huawei/hem/ec;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/huawei/hem/ec;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ec;->c:Lcom/huawei/hem/ec;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hem/ec;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/huawei/hem/ec;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/hem/ec;->c:Lcom/huawei/hem/ec;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/huawei/hem/ec;->c:Lcom/huawei/hem/ec;

    return-object p0
.end method
