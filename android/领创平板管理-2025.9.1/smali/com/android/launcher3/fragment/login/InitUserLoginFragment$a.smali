.class public Lcom/android/launcher3/fragment/login/InitUserLoginFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "InitUserLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/login/InitUserLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/login/InitUserLoginFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/login/InitUserLoginFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment$a;->a:Lcom/android/launcher3/fragment/login/InitUserLoginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.laucher3.mdm.LOGIN_APK_FINISH"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.linspirer.edu.loginapkfinish"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "InitUserLoginFragment receiver ISV login ok ."

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/launcher3/network/InitLoginHelper;->getInstance()Lcom/android/launcher3/network/InitLoginHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/fragment/login/InitUserLoginFragment$a;->a:Lcom/android/launcher3/fragment/login/InitUserLoginFragment;

    iget-object v0, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/network/InitLoginHelper;->startInitLogin(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
