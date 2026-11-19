.class public final Lcom/huawei/hem/qe$b;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/qe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/qe;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/qe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/qe;-><init>(Lcom/huawei/hem/qe$a;)V

    sput-object v0, Lcom/huawei/hem/qe$b;->a:Lcom/huawei/hem/qe;

    return-void
.end method
