.class public Lcom/huawei/hem/v4$b;
.super Ljava/lang/Object;
.source "WorkspaceTacticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/v4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/v4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/v4;-><init>(Lcom/huawei/hem/v4$a;)V

    sput-object v0, Lcom/huawei/hem/v4$b;->a:Lcom/huawei/hem/v4;

    return-void
.end method
