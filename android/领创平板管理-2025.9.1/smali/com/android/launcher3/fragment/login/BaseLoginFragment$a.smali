.class public Lcom/android/launcher3/fragment/login/BaseLoginFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "BaseLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/login/BaseLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment$a;->a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "BaseLoginFragment onReceive loginApkCheckUpdateButtonPressedReceiver "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.laucher3.mdm.CHECK_UPDATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "com.android.launcher3"

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "com.ndwill.swd.appstore"

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p0, Lcom/android/launcher3/fragment/login/BaseLoginFragment$a;->a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    invoke-static {p2, p1}, Lcom/android/launcher3/fragment/login/BaseLoginFragment;->k(Lcom/android/launcher3/fragment/login/BaseLoginFragment;Ljava/util/List;)V

    :cond_0
    return-void
.end method
