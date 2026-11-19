.class public Lcom/android/launcher3/LauncherNew$a;
.super Landroid/content/BroadcastReceiver;
.source "LauncherNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherNew;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.laucher3.mdm.LOGIN_APK_FINISH"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.linspirer.edu.loginapkfinish"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.linspirer.launcher3.user_logout"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    .line 7
    iget-object p1, p1, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    if-eqz p1, :cond_5

    const-string p1, "LauncherNew  -- onReceive user logout ."

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "fromOwner"

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    .line 11
    iget-object p2, p2, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m(Z)V

    goto :goto_1

    :cond_2
    const-string p2, "com.linspirer.launcher3.refresh_launcher"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "LauncherNew receiver "

    .line 14
    invoke-static {p2, p1}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    .line 16
    iget-object p2, p1, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p2, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherNew;->g()V

    .line 19
    iget-object p1, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    .line 20
    iget-object p1, p1, Lcom/android/launcher3/LauncherNew;->b:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->o()V

    goto :goto_1

    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    invoke-static {p1}, Lcom/android/launcher3/LauncherNew;->e(Lcom/android/launcher3/LauncherNew;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "LauncherNew  -- onReceive ISV login ok ."

    .line 24
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/launcher3/network/InitLoginHelper;->getInstance()Lcom/android/launcher3/network/InitLoginHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/LauncherNew$a;->a:Lcom/android/launcher3/LauncherNew;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/network/InitLoginHelper;->startInitLogin(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method
