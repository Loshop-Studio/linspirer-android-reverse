.class public Lcom/android/launcher3/network/WallpaperHelper;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperHelper"

.field public static volatile mInstances:Lcom/android/launcher3/network/WallpaperHelper;


# instance fields
.field public httpCore:Lcom/huawei/hem/rb;

.field public lastTime:J

.field public mContext:Landroid/content/Context;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/launcher3/network/WallpaperHelper;->lastTime:J

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->mContext:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    iput-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 6
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->httpCore:Lcom/huawei/hem/rb;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/network/WallpaperHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/WallpaperHelper;->needLoading(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/network/WallpaperHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/WallpaperHelper;->loadCacheFile()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/network/WallpaperHelper;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method private deleteOldFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/hem/ee;->c(Ljava/io/File;)V

    return-void
.end method

.method private downloadLauncherBg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/he;

    invoke-direct {v0, p1}, Lcom/huawei/hem/he;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hem/he;->z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;

    .line 4
    new-instance p1, Lcom/android/launcher3/network/WallpaperHelper$2;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/network/WallpaperHelper$2;-><init>(Lcom/android/launcher3/network/WallpaperHelper;Ljava/lang/String;)V

    .line 5
    iput-object p1, v0, Lcom/huawei/hem/he;->h:Lcom/huawei/hem/ne;

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hem/he;->start()I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public static getInstance()Lcom/android/launcher3/network/WallpaperHelper;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/network/WallpaperHelper;->mInstances:Lcom/android/launcher3/network/WallpaperHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/launcher3/network/WallpaperHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/launcher3/network/WallpaperHelper;->mInstances:Lcom/android/launcher3/network/WallpaperHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/launcher3/network/WallpaperHelper;

    .line 5
    sget-object v2, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    invoke-direct {v1, v2}, Lcom/android/launcher3/network/WallpaperHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/network/WallpaperHelper;->mInstances:Lcom/android/launcher3/network/WallpaperHelper;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/network/WallpaperHelper;->mInstances:Lcom/android/launcher3/network/WallpaperHelper;

    return-object v0
.end method

.method private isTooFast()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/android/launcher3/network/WallpaperHelper;->lastTime:J

    sub-long v2, v0, v2

    .line 3
    iput-wide v0, p0, Lcom/android/launcher3/network/WallpaperHelper;->lastTime:J

    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadCacheFile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->L()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/huawei/hem/ee;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/WallpaperHelper;->sendBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private loadWallpaper()V
    .locals 0

    return-void
.end method

.method private needLoading(Ljava/lang/String;)V
    .locals 4

    const-string v0, "WallpaperHelper -- need downloading wallpaper ."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 3
    sget-object v0, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WallpaperHelperdownload path empty cannot load wallpaper"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "WallpaperHelper -- url is empty"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->L()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/network/WallpaperHelper;->deleteOldFile(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->u0(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/WallpaperHelper;->sendBroadcast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "/"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperHelper -- local wallpaper path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/ee;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/WallpaperHelper;->sendBroadcast(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/y5;->u0(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/network/WallpaperHelper;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/network/WallpaperHelper;->deleteOldFile(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/network/WallpaperHelper;->downloadLauncherBg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public sendBroadcast(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/WallpaperHelper;->mContext:Landroid/content/Context;

    const-string v1, "send  refresh desktop broadcast for wallpaper"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.linspirer.launcher3.changewallpaper"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "path"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.launcher3"

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startCheck()V
    .locals 1

    const-string v0, "WallpaperHelper -- start check launcher bg wallpaper ."

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/network/WallpaperHelper;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/network/WallpaperHelper;->loadWallpaper()V

    return-void
.end method
