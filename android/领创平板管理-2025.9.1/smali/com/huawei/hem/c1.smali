.class public final Lcom/huawei/hem/c1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>(Lcom/amap/apis/utils/core/DeviceInfo$d;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    invoke-static {}, Lcom/amap/apis/utils/core/DeviceInfo;->p()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    invoke-static {}, Lcom/amap/apis/utils/core/DeviceInfo;->p()V

    return-void
.end method
