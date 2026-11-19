.class public Lcom/huawei/hem/ke$b;
.super Ljava/lang/Object;
.source "FileDownloadEventPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/ke;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/ke;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/ke;-><init>(Lcom/huawei/hem/ke$a;)V

    sput-object v0, Lcom/huawei/hem/ke$b;->a:Lcom/huawei/hem/ke;

    return-void
.end method
