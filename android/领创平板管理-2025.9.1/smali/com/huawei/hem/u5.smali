.class public final Lcom/huawei/hem/u5;
.super Lcom/huawei/hem/ne;
.source "DownLoadUtil.java"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/huawei/hem/g3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hem/g3;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/u5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hem/u5;->b:Lcom/huawei/hem/g3;

    iput-object p3, p0, Lcom/huawei/hem/u5;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/u5;->d:Ljava/io/File;

    invoke-direct {p0}, Lcom/huawei/hem/ne;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/huawei/hem/fe;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/u5;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/hem/u5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hem/u5;->b:Lcom/huawei/hem/g3;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/huawei/hem/y4;->w(Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hem/g3;)V

    return-void
.end method

.method public error(Lcom/huawei/hem/fe;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/u5;->a:Landroid/content/Context;

    const p2, 0x7f0c0130

    invoke-static {p1, p2}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/u5;->b:Lcom/huawei/hem/g3;

    check-cast p1, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;

    .line 4
    iget-object p2, p1, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;->a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;

    new-instance v0, Lcom/huawei/hem/g2;

    invoke-direct {v0, p1}, Lcom/huawei/hem/g2;-><init>(Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public paused(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public pending(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public progress(Lcom/huawei/hem/fe;II)V
    .locals 0

    return-void
.end method

.method public warn(Lcom/huawei/hem/fe;)V
    .locals 0

    return-void
.end method
