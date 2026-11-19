.class public Lcom/huawei/hem/s4$b;
.super Ljava/lang/Object;
.source "EyeProtectedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/s4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/s4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/s4;-><init>(Lcom/huawei/hem/s4$a;)V

    sput-object v0, Lcom/huawei/hem/s4$b;->a:Lcom/huawei/hem/s4;

    return-void
.end method
