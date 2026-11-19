# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/LauncherNew;
.super Lcom/android/launcher3/activity/base/BaseFragmentActivity;
.source "LauncherNew.java"


# instance fields
.field public b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

.field public c:Lcom/huawei/hem/o3;

.field public d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragmentActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/LauncherNew$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherNew$a;-><init>(Lcom/android/launcher3/LauncherNew;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherNew;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

# RE I/O 读取字符串偏好（SharedPreferences.getString）。
.method public static e(Lcom/android/launcher3/LauncherNew;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 6
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherNew --x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 9
    iget-object v5, v4, Lcom/huawei/hem/y5;->o0:Ljava/lang/String;

    const-string v6, "-1"

    if-ne v5, v6, :cond_0

    .line 10
    iget-object v5, v4, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 11
    iget-object v5, v5, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v7, "lockscreen_wallpaper"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iput-object v5, v4, Lcom/huawei/hem/y5;->o0:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v4, v4, Lcom/huawei/hem/y5;->o0:Ljava/lang/String;

    .line 14
    iget-object v5, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 15
    iget-object v7, v5, Lcom/huawei/hem/y5;->p0:Ljava/lang/String;

    if-ne v7, v6, :cond_1

    .line 16
    iget-object v7, v5, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 17
    iget-object v7, v7, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v8, "lockscreen_wallpaper_landscape"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    iput-object v7, v5, Lcom/huawei/hem/y5;->p0:Ljava/lang/String;

    .line 19
    :cond_1
    iget-object v5, v5, Lcom/huawei/hem/y5;->p0:Ljava/lang/String;

    .line 20
    iget-object v7, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 21
    iget-object v8, v7, Lcom/huawei/hem/y5;->q0:Ljava/lang/String;

    if-ne v8, v6, :cond_2

    .line 22
    iget-object v8, v7, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 23
    iget-object v8, v8, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v9, "lockscreen_wallpaper_portrait"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 24
    iput-object v8, v7, Lcom/huawei/hem/y5;->q0:Ljava/lang/String;

    .line 25
    :cond_2
    iget-object v7, v7, Lcom/huawei/hem/y5;->q0:Ljava/lang/String;

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v8, :cond_5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 27
    invoke-static {p0}, Lcom/huawei/hem/w5;->a(Landroid/content/Context;)Lcom/huawei/hem/w5;

    move-result-object p0

    invoke-virtual {p0, v4, v3, v2}, Lcom/huawei/hem/w5;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "LauncherNew  -- not found isv lockwallpaper for one......"

    .line 28
    invoke-static {p0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 29
    :cond_3
    :try_start_0
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2}, Lcom/huawei/hem/ic;->Z()V

    .line 30
    invoke-static {}, Lcom/huawei/hem/x5;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LauncherNew  -- isv will change and reset lockwallpaper--one......portrait"

    .line 31
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, p0, v0, v10, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    goto/16 :goto_2

    :cond_4
    const-string v2, "LauncherNew  -- isv will change and reset lockwallpaper--one......landscape"

    .line 33
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, p0, v0, v10, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 36
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 37
    invoke-static {p0}, Lcom/huawei/hem/w5;->a(Landroid/content/Context;)Lcom/huawei/hem/w5;

    move-result-object v4

    invoke-virtual {v4, v5, v3, v2}, Lcom/huawei/hem/w5;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 38
    invoke-static {p0}, Lcom/huawei/hem/w5;->a(Landroid/content/Context;)Lcom/huawei/hem/w5;

    move-result-object p0

    invoke-virtual {p0, v7, v3, v2}, Lcom/huawei/hem/w5;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v4, :cond_8

    if-nez p0, :cond_6

    goto :goto_1

    .line 39
    :cond_6
    :try_start_1
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2}, Lcom/huawei/hem/ic;->Z()V

    .line 40
    invoke-static {}, Lcom/huawei/hem/x5;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "LauncherNew  -- isv will change and reset lockwallpaper......portrait"

    .line 41
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p0, v0, v10, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    goto :goto_0

    :cond_7
    const-string p0, "LauncherNew  -- isv will change and reset lockwallpaper......landscape"

    .line 43
    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v4, v0, v10, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    .line 45
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherNew  -- isv will change and reset lockwallpaper......landscapeFilePath = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--lportraitFilePath:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_8
    :goto_1
    const-string p0, "LauncherNew  -- not found isv lockwallpaper for two......"

    .line 47
    invoke-static {p0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    .line 48
    :cond_a
    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    # RE layout layout/activity_launcher_new (0x7f090026), APK res/layout/activity_launcher_new.xml
    const v0, 0x7f090026

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "yes"

    .line 1
    sput-object v0, Lcom/huawei/hem/x1;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/huawei/hem/o3$b;->a:Lcom/huawei/hem/o3;

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/LauncherNew;->c:Lcom/huawei/hem/o3;

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "LauncherNew init data logined"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/launcher3/network/LocationHelper;->getInstance()Lcom/android/launcher3/network/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/LocationHelper;->startLocation()V

    .line 7
    sget-object v0, Lcom/huawei/hem/v4$b;->a:Lcom/huawei/hem/v4;

    .line 8
    invoke-virtual {v0}, Lcom/huawei/hem/v4;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherNew;->f()V

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/android/launcher3/fragment/home/MainFragment;

    invoke-direct {p1}, Lcom/android/launcher3/fragment/home/MainFragment;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    const v1, 0x7f0700df

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 6
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.laucher3.mdm.LOGIN_APK_FINISH"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.linspirer.launcher3.user_logout"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.linspirer.edu.loginapkfinish"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.linspirer.launcher3.refresh_launcher"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/LauncherNew;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

# RE I/O 读取布尔偏好（SharedPreferences.getBoolean）。
.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/android/launcher3/activity/LockActivity;

    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->o()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hem/t3;->b()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/GesturePassword;->getGesture_password()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 7
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v1, "lock_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LauncherNew  -- start check lock gesture ..."

    .line 9
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 10
    const-class v0, Lcom/android/launcher3/activity/gestrue/CheckPwdGestureActivity;

    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->W(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）、读取字符串偏好（SharedPreferences.getString）。
.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    const-class v0, Lcom/android/launcher3/activity/LoginActivity;

    invoke-static {p0, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/launcher3/network/LicenseHelper;->getInstance()Lcom/android/launcher3/network/LicenseHelper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2}, Lcom/android/launcher3/network/LicenseHelper;->startCheck(Landroid/content/Context;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LauncherNew license not register succeed"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/huawei/hem/s5$b;->a:Lcom/huawei/hem/s5;

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hem/s5;->a()V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 9
    iget v3, v0, Lcom/huawei/hem/y5;->l:I

    if-nez v3, :cond_2

    .line 10
    iget-object v3, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 11
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v4, "show_launcher"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 12
    iput v3, v0, Lcom/huawei/hem/y5;->l:I

    .line 13
    :cond_2
    iget v0, v0, Lcom/huawei/hem/y5;->l:I

    if-ne v0, v1, :cond_3

    const-string v0, "LauncherNew openISVLauncher use guard desk"

    .line 14
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherNew;->c:Lcom/huawei/hem/o3;

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    const-string v0, "com.zykj.manage"

    const-string v4, "com.zykj.launcher.home"

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LauncherNew  openISVLauncher launcherPackage= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " launcher="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v2, "LauncherNew  openISVLauncher launcher local"

    .line 18
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/android/launcher3/LauncherNew;->c:Lcom/huawei/hem/o3;

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/launcher3/LauncherNew;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 21
    :cond_4
    throw v3

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    .line 23
    iget-object v4, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    iget-object v4, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 25
    iget-object v4, v4, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v5, "launcher_start_package"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    iput-object v4, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    .line 27
    :cond_6
    iget-object v0, v0, Lcom/huawei/hem/y5;->x:Ljava/lang/String;

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherNew  openISVLauncher launcher remote packageName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "/"

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v4, "LauncherNew  openISVLauncher launcher remote model:"

    .line 33
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v5}, Lcom/huawei/hem/y5;->t()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is need open:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v5}, Lcom/huawei/hem/y5;->P()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 34
    iget-object v4, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v4}, Lcom/huawei/hem/y5;->t()I

    move-result v4

    if-ne v4, v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->P()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "LauncherNew  openISVLauncher launcher remote "

    .line 35
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/launcher3/LauncherNew;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/y5;->h0(Z)V

    goto :goto_0

    .line 38
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragmentActivity;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->t()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_9

    .line 39
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/launcher3/LauncherNew;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherNew;->f()V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.mdm.homeaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 43
    :cond_a
    throw v3
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherNew start isv launcher package:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " activity:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/LauncherNew;->c:Lcom/huawei/hem/o3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-static {p0, p2, p1}, Lcom/huawei/hem/bc;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/LauncherNew;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "LauncherNew ====onDestroy===="

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "LauncherNew ===============onResume"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "====onresume unluck and return"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "====onresume luck"

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherNew;->g()V

    return-void
.end method
