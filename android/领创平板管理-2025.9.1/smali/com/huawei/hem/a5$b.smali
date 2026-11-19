.class public final Lcom/huawei/hem/a5$b;
.super Ljava/lang/Object;
.source "SupperAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/a5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/a5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/a5;-><init>(Lcom/huawei/hem/a5$a;)V

    sput-object v0, Lcom/huawei/hem/a5$b;->a:Lcom/huawei/hem/a5;

    return-void
.end method
