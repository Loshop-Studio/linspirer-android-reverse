.class public Lcom/huawei/hem/l7;
.super Lcom/huawei/appgallery/log/LogAdaptor;
.source ""


# static fields
.field public static final a:Lcom/huawei/hem/l7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/l7;

    invoke-direct {v0}, Lcom/huawei/hem/l7;-><init>()V

    sput-object v0, Lcom/huawei/hem/l7;->a:Lcom/huawei/hem/l7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "ServiceVerifyKit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/huawei/appgallery/log/LogAdaptor;-><init>(Ljava/lang/String;I)V

    return-void
.end method
