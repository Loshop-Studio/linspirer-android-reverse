.class public Lcom/huawei/hem/m2;
.super Landroid/os/CountDownTimer;
.source "LicenseActivity.java"


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/LicenseActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/LicenseActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/m2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/m2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    invoke-static {v0}, Lcom/android/launcher3/activity/LicenseActivity;->f(Lcom/android/launcher3/activity/LicenseActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/m2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u79d2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
