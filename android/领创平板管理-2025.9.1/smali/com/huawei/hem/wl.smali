.class public final enum Lcom/huawei/hem/wl;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hem/wl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/huawei/hem/wl;

.field public static final enum COMPRESSION_ERROR:Lcom/huawei/hem/wl;

.field public static final enum CONNECT_ERROR:Lcom/huawei/hem/wl;

.field public static final enum ENHANCE_YOUR_CALM:Lcom/huawei/hem/wl;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/huawei/hem/wl;

.field public static final enum HTTP_1_1_REQUIRED:Lcom/huawei/hem/wl;

.field public static final enum INADEQUATE_SECURITY:Lcom/huawei/hem/wl;

.field public static final enum INTERNAL_ERROR:Lcom/huawei/hem/wl;

.field public static final enum NO_ERROR:Lcom/huawei/hem/wl;

.field public static final enum PROTOCOL_ERROR:Lcom/huawei/hem/wl;

.field public static final enum REFUSED_STREAM:Lcom/huawei/hem/wl;

.field public static final synthetic a:[Lcom/huawei/hem/wl;


# instance fields
.field public final httpCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->NO_ERROR:Lcom/huawei/hem/wl;

    .line 2
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    .line 3
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->INTERNAL_ERROR:Lcom/huawei/hem/wl;

    .line 4
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->FLOW_CONTROL_ERROR:Lcom/huawei/hem/wl;

    .line 5
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    .line 6
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "CANCEL"

    const/4 v8, 0x5

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    .line 7
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "COMPRESSION_ERROR"

    const/4 v10, 0x6

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->COMPRESSION_ERROR:Lcom/huawei/hem/wl;

    .line 8
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "CONNECT_ERROR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v7, v12}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->CONNECT_ERROR:Lcom/huawei/hem/wl;

    .line 9
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v9, v13}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->ENHANCE_YOUR_CALM:Lcom/huawei/hem/wl;

    .line 10
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v11, v14}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->INADEQUATE_SECURITY:Lcom/huawei/hem/wl;

    .line 11
    new-instance v0, Lcom/huawei/hem/wl;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v12, v14}, Lcom/huawei/hem/wl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hem/wl;->HTTP_1_1_REQUIRED:Lcom/huawei/hem/wl;

    new-array v1, v13, [Lcom/huawei/hem/wl;

    .line 12
    sget-object v13, Lcom/huawei/hem/wl;->NO_ERROR:Lcom/huawei/hem/wl;

    aput-object v13, v1, v2

    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/wl;->INTERNAL_ERROR:Lcom/huawei/hem/wl;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hem/wl;->FLOW_CONTROL_ERROR:Lcom/huawei/hem/wl;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hem/wl;->CANCEL:Lcom/huawei/hem/wl;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hem/wl;->COMPRESSION_ERROR:Lcom/huawei/hem/wl;

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hem/wl;->CONNECT_ERROR:Lcom/huawei/hem/wl;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hem/wl;->ENHANCE_YOUR_CALM:Lcom/huawei/hem/wl;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hem/wl;->INADEQUATE_SECURITY:Lcom/huawei/hem/wl;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/huawei/hem/wl;->a:[Lcom/huawei/hem/wl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/huawei/hem/wl;->httpCode:I

    return-void
.end method

.method public static fromHttp2(I)Lcom/huawei/hem/wl;
    .locals 5

    .line 1
    invoke-static {}, Lcom/huawei/hem/wl;->values()[Lcom/huawei/hem/wl;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/huawei/hem/wl;->httpCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hem/wl;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/wl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hem/wl;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hem/wl;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/wl;->a:[Lcom/huawei/hem/wl;

    invoke-virtual {v0}, [Lcom/huawei/hem/wl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hem/wl;

    return-object v0
.end method
