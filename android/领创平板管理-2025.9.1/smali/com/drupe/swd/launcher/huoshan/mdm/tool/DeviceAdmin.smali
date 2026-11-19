.class public Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdmin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 0

    const-string p1, "onDisableRequested"

    return-object p1
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;->a()V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;->a()V

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;->a()V

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;->a()V

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;->a()V

    return-void
.end method
