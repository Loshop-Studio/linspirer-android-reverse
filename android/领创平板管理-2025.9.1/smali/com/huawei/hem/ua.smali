.class public Lcom/huawei/hem/ua;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/ua$a;
    }
.end annotation


# static fields
.field public static b:Lcom/huawei/hem/ua;


# instance fields
.field public a:Lcom/huawei/hem/ua$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/ua;

    invoke-direct {v0}, Lcom/huawei/hem/ua;-><init>()V

    sput-object v0, Lcom/huawei/hem/ua;->b:Lcom/huawei/hem/ua;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hem/ua$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/ua$a;-><init>(Lcom/huawei/hem/ua;)V

    iput-object v0, p0, Lcom/huawei/hem/ua;->a:Lcom/huawei/hem/ua$a;

    return-void
.end method
