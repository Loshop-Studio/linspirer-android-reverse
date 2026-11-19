.class public Lcom/android/hccontrol/custom/lingc/HCService;
.super Landroid/app/Service;
.source "HCService.java"


# instance fields
.field public a:Lcom/huawei/hem/u1$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/android/hccontrol/custom/lingc/HCService$a;

    invoke-direct {v0, p0}, Lcom/android/hccontrol/custom/lingc/HCService$a;-><init>(Lcom/android/hccontrol/custom/lingc/HCService;)V

    iput-object v0, p0, Lcom/android/hccontrol/custom/lingc/HCService;->a:Lcom/huawei/hem/u1$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/hccontrol/custom/lingc/HCService;->a:Lcom/huawei/hem/u1$a;

    return-object p1
.end method
