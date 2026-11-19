.class public Lcom/android/launcher3/network/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/LocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/LocationHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/LocationHelper$1;->this$0:Lcom/android/launcher3/network/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    const-string v0, "LocationHelper on location changed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/LocationHelper$1;->this$0:Lcom/android/launcher3/network/LocationHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/LocationHelper;->access$000(Lcom/android/launcher3/network/LocationHelper;Lcom/amap/api/location/AMapLocation;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/LocationHelper$1;->this$0:Lcom/android/launcher3/network/LocationHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/LocationHelper;->access$100(Lcom/android/launcher3/network/LocationHelper;)V

    return-void
.end method
