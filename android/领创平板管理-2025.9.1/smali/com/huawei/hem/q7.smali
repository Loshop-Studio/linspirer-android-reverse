.class public final Lcom/huawei/hem/q7;
.super Lcom/huawei/hms/common/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lcom/huawei/hem/n7;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/license/HemLicenseStatusListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/TaskApiCall;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hem/q7;->a:Lcom/huawei/hem/license/HemLicenseStatusListener;

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hem/x7;)V
    .locals 0

    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/huawei/hem/q7;->a:Lcom/huawei/hem/license/HemLicenseStatusListener;

    invoke-static {p1}, Lcom/huawei/hem/r7;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/huawei/hem/license/HemLicenseStatusListener;->onStatus(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/q7;->a:Lcom/huawei/hem/license/HemLicenseStatusListener;

    const/16 p2, 0x3e8

    invoke-static {p2}, Lcom/huawei/hem/r7;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/huawei/hem/license/HemLicenseStatusListener;->onStatus(ILjava/lang/String;)V

    return-void
.end method
