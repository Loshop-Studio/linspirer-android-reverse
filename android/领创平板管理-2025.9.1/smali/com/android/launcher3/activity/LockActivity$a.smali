.class public Lcom/android/launcher3/activity/LockActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "LockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/LockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/LockActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/LockActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/LockActivity$a;->a:Lcom/android/launcher3/activity/LockActivity;

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

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockActivity receive close lock activity"

    .line 3
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string p2, "com.linspirer.close.violation"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/activity/LockActivity$a;->a:Lcom/android/launcher3/activity/LockActivity;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/LockActivity;->e:Lcom/huawei/hem/y5;

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "LockActivity has no locked status need hide activity"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher3/activity/LockActivity$a;->a:Lcom/android/launcher3/activity/LockActivity;

    .line 10
    invoke-virtual {p1}, Lcom/android/launcher3/activity/LockActivity;->f()V

    const/4 p1, 0x0

    .line 11
    sput-boolean p1, Lcom/android/launcher3/activity/LockActivity;->i:Z

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/activity/LockActivity$a;->a:Lcom/android/launcher3/activity/LockActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/LockActivity$a;->a:Lcom/android/launcher3/activity/LockActivity;

    .line 14
    invoke-virtual {p1}, Lcom/android/launcher3/activity/LockActivity;->h()V

    const-string p1, "LockActivity has  locked status no clear "

    .line 15
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
