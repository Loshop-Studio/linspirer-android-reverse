.class public final Lcom/tdtech/devicemanager/EmmUtil;
.super Ljava/lang/Object;
.source "EmmUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmmUtil"

.field public static mMdmManager:Landroid/mdm/IMdmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mdmIF()Landroid/mdm/IMdmManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/tdtech/devicemanager/EmmUtil;->mMdmManager:Landroid/mdm/IMdmManager;

    if-nez v0, :cond_0

    const-string v0, "mdm"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/mdm/IMdmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/mdm/IMdmManager;

    move-result-object v0

    sput-object v0, Lcom/tdtech/devicemanager/EmmUtil;->mMdmManager:Landroid/mdm/IMdmManager;

    const-string v0, "mMdmManager="

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tdtech/devicemanager/EmmUtil;->mMdmManager:Landroid/mdm/IMdmManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmmUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Lcom/tdtech/devicemanager/EmmUtil;->mMdmManager:Landroid/mdm/IMdmManager;

    return-object v0
.end method
