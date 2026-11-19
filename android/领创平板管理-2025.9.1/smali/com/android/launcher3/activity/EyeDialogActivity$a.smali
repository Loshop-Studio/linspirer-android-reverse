.class public Lcom/android/launcher3/activity/EyeDialogActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "EyeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/EyeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/EyeDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/EyeDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/EyeDialogActivity$a;->a:Lcom/android/launcher3/activity/EyeDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/huawei/hem/y4;->A(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.launcher3.eyeprotected.close"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/EyeDialogActivity$a;->a:Lcom/android/launcher3/activity/EyeDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
