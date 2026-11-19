.class public Lcom/huawei/hem/l2;
.super Ljava/lang/Object;
.source "LicenseActivity.java"

# interfaces
.implements Lcom/huawei/hem/i3;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/LicenseActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/LicenseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "license onCallBackFailed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    .line 4
    iget-object v0, v0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const v1, 0x7f0c011b

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    .line 7
    iget-object v0, v0, Lcom/android/launcher3/activity/LicenseActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "license onFailed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/l2;->a:Lcom/android/launcher3/activity/LicenseActivity;

    invoke-static {v0}, Lcom/android/launcher3/activity/LicenseActivity;->g(Lcom/android/launcher3/activity/LicenseActivity;)V

    return-void
.end method
