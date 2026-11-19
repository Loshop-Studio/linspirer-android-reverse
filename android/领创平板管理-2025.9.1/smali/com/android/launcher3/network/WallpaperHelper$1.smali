.class public Lcom/android/launcher3/network/WallpaperHelper$1;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/WallpaperHelper;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/WallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/WallpaperHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper$1;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/WallpaperHelper$1;->handleResult(Ljava/lang/String;)V

    return-void
.end method

.method public handleResult(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WallpaperHelper -- load wallpaper sucess"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/network/WallpaperHelper$1;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    invoke-static {v0, p1}, Lcom/android/launcher3/network/WallpaperHelper;->access$000(Lcom/android/launcher3/network/WallpaperHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "WallpaperHelper -- load wallpaper failed"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "WallpaperHelper -- load wallpaper failure"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper$1;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/WallpaperHelper;->access$100(Lcom/android/launcher3/network/WallpaperHelper;)V

    return-void
.end method
