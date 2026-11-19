.class public Lcom/huawei/hem/ia;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/huawei/hem/ia;


# instance fields
.field public a:Lcom/huawei/hem/w9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/ia;

    invoke-direct {v0}, Lcom/huawei/hem/ia;-><init>()V

    sput-object v0, Lcom/huawei/hem/ia;->b:Lcom/huawei/hem/ia;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hem/ia;->a:Lcom/huawei/hem/w9;

    return-void
.end method
