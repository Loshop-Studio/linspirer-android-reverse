.class public final Lcom/huawei/hem/me$b;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/me;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/me;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/me;-><init>(Lcom/huawei/hem/me$a;)V

    sput-object v0, Lcom/huawei/hem/me$b;->a:Lcom/huawei/hem/me;

    return-void
.end method
