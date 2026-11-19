.class public Lcom/huawei/hem/sb;
.super Ljava/lang/Exception;
.source "OkHttpException.java"


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final JSON_ERROR:I = -0xc8

.field public static final NETWORK_ERROR:I = -0x64

.field public static final OTHER_ERROR:I = -0x12c

.field public static final SUCESS_CODE:I


# instance fields
.field public code:I

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hem/sb;->code:I

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/sb;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hem/sb;->code:I

    return v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/sb;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hem/sb;->code:I

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/sb;->obj:Ljava/lang/Object;

    return-void
.end method
