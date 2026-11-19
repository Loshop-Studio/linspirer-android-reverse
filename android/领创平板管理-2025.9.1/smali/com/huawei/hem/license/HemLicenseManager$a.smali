.class public final Lcom/huawei/hem/license/HemLicenseManager$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/license/HemLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/license/HemLicenseManager;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/license/HemLicenseManager;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/license/HemLicenseManager$a;->a:Lcom/huawei/hem/license/HemLicenseManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string p1, "licenseOperationResult"

    const/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/huawei/hem/license/HemLicenseManager$a;->a:Lcom/huawei/hem/license/HemLicenseManager;

    .line 1
    iget-object p2, p2, Lcom/huawei/hem/license/HemLicenseManager;->b:Lcom/huawei/hem/license/HemLicenseStatusListener;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/huawei/hem/license/HemLicenseManager$a;->a:Lcom/huawei/hem/license/HemLicenseManager;

    .line 3
    iget-object p2, p2, Lcom/huawei/hem/license/HemLicenseManager;->b:Lcom/huawei/hem/license/HemLicenseStatusListener;

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/r7;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/huawei/hem/license/HemLicenseStatusListener;->onStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "rec: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HemLicenseManager"

    invoke-static {p2, p1}, Lcom/huawei/hem/s7;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
