.class public Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "BaseHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/home/BaseHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.linspirer.launcher3.refresh_desktop"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    invoke-static {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i(Lcom/android/launcher3/fragment/home/BaseHomeFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BaseHomeFragment  -- isVisibledFragment , start to refresh desktop data ."

    .line 5
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    invoke-virtual {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    const-string p1, "BaseHomeFragment  --  is not visibled , wating for refreshing desktop data ."

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.linspirer.launcher3.changewallpaper"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BaseHomeFragment  -- update the launcher backgroud wallpaper ."

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment$a;->a:Lcom/android/launcher3/fragment/home/BaseHomeFragment;

    invoke-virtual {p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->o()V

    :cond_2
    :goto_0
    return-void
.end method
