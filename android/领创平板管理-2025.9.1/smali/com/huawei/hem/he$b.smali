.class public final Lcom/huawei/hem/he$b;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/huawei/hem/fe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/he;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/he;Lcom/huawei/hem/he$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/he$b;->a:Lcom/huawei/hem/he;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/huawei/hem/he;->p:Z

    return-void
.end method
