.class public Lcom/huawei/hem/qg;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/qg$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/qg$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hem/qg;->a:Lcom/huawei/hem/qg$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/huawei/hem/vg;
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-instance v1, Lcom/huawei/hem/vg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hem/vg;-><init>(Lcom/huawei/hem/vg$a;)V

    const-string v3, "filedownloader_channel"

    .line 2
    iput-object v3, v1, Lcom/huawei/hem/vg;->b:Ljava/lang/String;

    const-string v3, "Filedownloader"

    .line 3
    iput-object v3, v1, Lcom/huawei/hem/vg;->c:Ljava/lang/String;

    const v3, 0x1080002

    .line 4
    iput v3, v1, Lcom/huawei/hem/vg;->a:I

    .line 5
    iput-boolean v0, v1, Lcom/huawei/hem/vg;->e:Z

    .line 6
    iput-object v2, v1, Lcom/huawei/hem/vg;->d:Landroid/app/Notification;

    return-object v1
.end method
