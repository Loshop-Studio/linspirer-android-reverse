.class public Lcom/android/launcher3/network/WallpaperHelper$2;
.super Lcom/huawei/hem/ne;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/WallpaperHelper;->downloadLauncherBg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/WallpaperHelper;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/WallpaperHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    iput-object p2, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/hem/ne;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/huawei/hem/fe;)V
    .locals 1

    const-string p1, "WallpaperHelper -- launcher wallpaper downloadtask is completed ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    invoke-static {p1}, Lcom/android/launcher3/network/WallpaperHelper;->access$200(Lcom/android/launcher3/network/WallpaperHelper;)Lcom/huawei/hem/y5;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->u0(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->this$0:Lcom/android/launcher3/network/WallpaperHelper;

    iget-object v0, p0, Lcom/android/launcher3/network/WallpaperHelper$2;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/WallpaperHelper;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "WallpaperHelper -- launcher bg downloadtask happened to the error ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public paused(Lcom/huawei/hem/fe;II)V
    .locals 0

    const-string p1, "WallpaperHelperpaused"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public pending(Lcom/huawei/hem/fe;II)V
    .locals 0

    const-string p1, "WallpaperHelperpending"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public progress(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public warn(Lcom/huawei/hem/fe;)V
    .locals 0

    const-string p1, "WallpaperHelperwarn"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
