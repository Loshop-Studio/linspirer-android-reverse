.class public Lcom/huawei/hem/ud;
.super Lcom/huawei/hem/pd;
.source "HuaweiEmui5Impl.java"


# static fields
.field public static o:Lcom/huawei/hem/ud;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/pd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HuaweiEmui5Impl ----system init start"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/qd;->V0(Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/huawei/hem/pd;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->f:Lcom/huawei/android/app/admin/DeviceControlManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/android/app/admin/DeviceControlManager;->setDefaultLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "HuaweiEmui5Impl  -- setDefaultLauncher-error:"

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string p1, "HuaweiEmui5Impl  -- system init end"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
