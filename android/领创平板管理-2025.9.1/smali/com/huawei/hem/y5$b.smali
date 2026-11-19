.class public final Lcom/huawei/hem/y5$b;
.super Ljava/lang/Object;
.source "UserInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/y5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/y5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/y5;-><init>(Lcom/huawei/hem/y5$a;)V

    sput-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    return-void
.end method
