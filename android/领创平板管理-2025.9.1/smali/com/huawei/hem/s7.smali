.class public abstract Lcom/huawei/hem/s7;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hem/t7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/t7;

    invoke-direct {v0}, Lcom/huawei/hem/t7;-><init>()V

    sput-object v0, Lcom/huawei/hem/s7;->a:Lcom/huawei/hem/t7;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/huawei/hem/s7;->a:Lcom/huawei/hem/t7;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hem/t7;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
