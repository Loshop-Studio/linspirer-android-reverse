.class public final Lcom/huawei/hem/oe$b;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/oe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/oe;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/oe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/oe;-><init>(Lcom/huawei/hem/oe$a;)V

    sput-object v0, Lcom/huawei/hem/oe$b;->a:Lcom/huawei/hem/oe;

    return-void
.end method
