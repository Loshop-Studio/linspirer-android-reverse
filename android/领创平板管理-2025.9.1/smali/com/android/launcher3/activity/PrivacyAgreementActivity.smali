# RE note 本类字节码直接引用的读写或显示接口包括WebView。
.class public Lcom/android/launcher3/activity/PrivacyAgreementActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "PrivacyAgreementActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_privacy_agreement (0x7f09002b), APK res/layout/activity_privacy_agreement.xml
    const v0, 0x7f09002b

    return v0
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
    .locals 3

    const v0, 0x7f07017f

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const-string v1, "file:///android_asset/protocal.html"

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/android/launcher3/activity/PrivacyAgreementActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/activity/PrivacyAgreementActivity$a;-><init>(Lcom/android/launcher3/activity/PrivacyAgreementActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
