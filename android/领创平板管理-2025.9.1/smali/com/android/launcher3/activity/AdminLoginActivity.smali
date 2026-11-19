# RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。
.class public Lcom/android/launcher3/activity/AdminLoginActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "AdminLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/huawei/hem/f3;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/huawei/hem/y5;

.field public h:I

.field public i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->h:I

    const-string v0, "android.permission.CAMERA"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdminLoginActivity  -- hem msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- msgCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_admin_login (0x7f09001e), APK res/layout/activity_admin_login.xml
    const v0, 0x7f09001e

    return v0
.end method

.method public c()V
    .locals 5

    const v0, 0x7f0c004e

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.launcher3"

    invoke-static {v3, p0}, Lcom/huawei/hem/bc;->g(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, p0}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f040051

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f04003f

    .line 3
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->g:Lcom/huawei/hem/y5;

    const v0, 0x7f070126

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->c:Landroid/widget/Button;

    const v0, 0x7f070151

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f070178

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f070058

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->f:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget-object v0, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/huawei/hem/p4;

    invoke-direct {v0}, Lcom/huawei/hem/p4;-><init>()V

    sput-object v0, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    .line 12
    :cond_0
    sget-object v0, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    .line 13
    iput-object p0, v0, Lcom/huawei/hem/p4;->a:Lcom/huawei/hem/f3;

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->g:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->e()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdminLoginActivity --camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableCamera()V

    .line 4
    :cond_0
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 6
    const-class v1, Lcom/android/launcher3/activity/CustomCaptureActivity;

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 7
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdminLoginActivity  -- installing apk path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x19

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "package:com.android.launcher3"

    .line 7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x64

    .line 9
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt p1, v3, :cond_4

    const-string p1, "com.android.launcher3.lspfileprovider"

    .line 13
    invoke-static {p0, p1, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const/high16 p1, 0x10000000

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/activity/AdminLoginActivity;->g(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AdminLoginActivity scaning start"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "AdminLoginActivity scaning result is empty"

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "AdminLoginActivity scaning signature is empty"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2
    const-string p2, "DSA"

    const-string p3, ""

    const-string v0, "dsa_public_key_pkcs8.pem"

    const-string v1, "FileUtil--"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    move v8, v7

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v10, "<style"

    .line 14
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v3

    goto :goto_1

    :cond_4
    const-string v10, "</style"

    .line 15
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v7

    :cond_5
    :goto_1
    if-eqz v8, :cond_3

    .line 16
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 18
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 19
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 21
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v0, :cond_c

    .line 22
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto/16 :goto_d

    :catch_3
    move-exception v6

    goto :goto_5

    :catch_4
    move-exception v6

    goto/16 :goto_9

    :catchall_0
    move-exception p1

    goto/16 :goto_13

    :catch_5
    move-exception v5

    move-object v6, v5

    move-object v5, v2

    goto :goto_5

    :catch_6
    move-exception v5

    move-object v6, v5

    move-object v5, v2

    goto :goto_9

    :catchall_1
    move-exception p1

    move-object v4, v2

    goto/16 :goto_13

    :catch_7
    move-exception v4

    move-object v6, v4

    goto :goto_4

    :catch_8
    move-exception v4

    move-object v6, v4

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object v0, v2

    move-object v4, v0

    goto/16 :goto_13

    :catch_9
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    :goto_4
    move-object v4, v2

    move-object v5, v4

    .line 23
    :goto_5
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v5, :cond_7

    .line 24
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_6

    :catch_a
    move-exception v5

    .line 25
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 26
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_7

    :catch_b
    move-exception v4

    .line 27
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_7
    if-eqz v0, :cond_b

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    :goto_8
    move-object v4, v2

    move-object v5, v4

    .line 28
    :goto_9
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v5, :cond_9

    .line 29
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_a

    :catch_d
    move-exception v5

    .line 30
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    .line 31
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_b

    :catch_e
    move-exception v4

    .line 32
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_b
    if-eqz v0, :cond_b

    .line 33
    :goto_c
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    move-object v6, p3

    .line 34
    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_b
    :goto_e
    move-object v6, p3

    .line 35
    :cond_c
    :goto_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "AdminLoginActivity publicKey is empty"

    .line 36
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_d
    :try_start_e
    const-string v0, "-----BEGIN PUBLIC KEY-----\n"

    .line 37
    invoke-virtual {v6, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END PUBLIC KEY-----"

    .line 38
    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-static {p3, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 40
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3

    check-cast p3, Ljava/security/interfaces/DSAPublicKey;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v2, p3

    goto :goto_10

    :catchall_3
    move-exception p3

    const-string v0, "DSAUtil----getPublicKeyFromString error message:"

    .line 42
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 43
    :goto_10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UTF-8"

    .line 44
    :try_start_f
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 45
    invoke-virtual {p2, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 46
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/security/Signature;->update([B)V

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception p1

    const-string p2, "DSAUtil----verify error message:"

    .line 48
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    move p1, v3

    .line 49
    :goto_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AdminLoginActivity verifyState:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 50
    const-class p1, Lcom/android/launcher3/activity/AdminActivity;

    invoke-static {p0, p1}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordAdminEvent()V

    const-string p1, "AdminLoginActivity checkSignature is success"

    .line 52
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_12

    :cond_e
    const p1, 0x7f0c0054

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_12
    return-void

    :catchall_5
    move-exception p1

    move-object v2, v5

    :goto_13
    if-eqz v2, :cond_f

    .line 55
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_14

    :catch_10
    move-exception p2

    .line 56
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_14
    if-eqz v4, :cond_10

    .line 57
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_15

    :catch_11
    move-exception p2

    .line 58
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_15
    if-eqz v0, :cond_11

    .line 59
    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_16

    :catch_12
    move-exception p2

    .line 60
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_11
    :goto_16
    throw p1
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070058

    if-eq p1, v0, :cond_7

    const v0, 0x7f070126

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x7f070151

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "AdminLoginActivity sycn_timing"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {p1}, Lcom/huawei/hem/ic;->k()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/huawei/hem/license/HemLicenseManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hem/license/HemLicenseManager;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/huawei/hem/y1;->a:Lcom/huawei/hem/y1;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/license/HemLicenseManager;->setStatusListener(Lcom/huawei/hem/license/HemLicenseStatusListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hem/license/HemLicenseManager;->activeLicense()Lcom/huawei/hem/w7;

    .line 8
    :cond_2
    invoke-static {p0, v1}, Lcom/android/launcher3/network/SynchronizeTimeUtil;->pullSynchronizeTime(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->g:Lcom/huawei/hem/y5;

    .line 10
    iget v0, p1, Lcom/huawei/hem/y5;->G:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 11
    iget-object v0, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 12
    iget-object v0, v0, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v2, "enable_client_admin_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 13
    iput v0, p1, Lcom/huawei/hem/y5;->G:I

    .line 14
    :cond_4
    iget p1, p1, Lcom/huawei/hem/y5;->G:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->i:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->i:[Ljava/lang/String;

    iget v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->h:I

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/activity/AdminLoginActivity;->f()V

    goto/16 :goto_0

    :cond_6
    const p1, 0x7f0c00da

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 19
    :cond_7
    sget-object p1, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    if-nez p1, :cond_8

    .line 20
    new-instance p1, Lcom/huawei/hem/p4;

    invoke-direct {p1}, Lcom/huawei/hem/p4;-><init>()V

    sput-object p1, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    .line 21
    :cond_8
    sget-object p1, Lcom/huawei/hem/p4;->d:Lcom/huawei/hem/p4;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 22
    sput-object p0, Lcom/huawei/hem/p4;->c:Landroid/app/Activity;

    .line 23
    iget-object v1, p1, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->R()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    .line 24
    :cond_9
    new-instance v1, Lcom/huawei/hem/cc;

    iget-object v2, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/huawei/hem/cc;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 25
    iget-object p1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c00e5

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_0

    .line 26
    :cond_a
    :try_start_0
    iget-object v1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/android/launcher3/network/params/CheckUpdateParams;

    iget-object v2, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/network/params/CheckUpdateParams;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.android.launcher3"

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.ndwill.swd.appstore"

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/launcher3/network/params/CheckUpdateParams;->setPackages(Ljava/util/List;)V

    .line 32
    new-instance v2, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {v2}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 33
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string v1, "com.linspirer.app.getlauncerbypackage"

    .line 34
    invoke-virtual {v2, v1}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 35
    iget-object v1, p1, Lcom/huawei/hem/r4;->mHttpCore:Lcom/huawei/hem/rb;

    if-eqz v1, :cond_b

    .line 36
    new-instance v0, Lcom/huawei/hem/vb;

    invoke-direct {v0, v1}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 37
    sget-object v1, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 38
    iput-object v1, v0, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 39
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/huawei/hem/n4;

    const-class v2, Lcom/android/launcher3/db/model/ItemApp;

    invoke-direct {v1, p1, v2}, Lcom/huawei/hem/n4;-><init>(Lcom/huawei/hem/p4;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    .line 43
    :cond_b
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 46
    iget-object p1, p1, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    :goto_0
    return-void

    .line 47
    :cond_c
    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/activity/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->g:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->e()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdminLoginActivity --onDestroy camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableCamera()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/launcher3/activity/AdminLoginActivity;->h:I

    if-ne p1, p2, :cond_1

    .line 2
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/AdminLoginActivity;->f()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00f8

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
