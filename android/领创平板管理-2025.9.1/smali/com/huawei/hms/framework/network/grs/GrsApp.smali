.class public Lcom/huawei/hms/framework/network/grs/GrsApp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static instance:Lcom/huawei/hms/framework/network/grs/GrsApp;


# instance fields
.field public appConfigName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/framework/network/grs/GrsApp;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/GrsApp;-><init>()V

    sput-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->instance:Lcom/huawei/hms/framework/network/grs/GrsApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;
    .locals 1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->instance:Lcom/huawei/hms/framework/network/grs/GrsApp;

    return-object v0
.end method


# virtual methods
.method public getAppConfigName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsApp;->appConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAppConfigName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsApp;->appConfigName:Ljava/lang/String;

    return-void
.end method
