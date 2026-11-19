.class public Lcom/huawei/hem/gh$b;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/gh;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/gh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/gh;-><init>(Lcom/huawei/hem/gh$a;)V

    sput-object v0, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    return-void
.end method
