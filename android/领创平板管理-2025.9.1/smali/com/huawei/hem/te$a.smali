.class public Lcom/huawei/hem/te$a;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/te;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/te;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/huawei/hem/te;

    invoke-direct {v0}, Lcom/huawei/hem/te;-><init>()V

    sput-object v0, Lcom/huawei/hem/te$a;->a:Lcom/huawei/hem/te;

    .line 2
    sget-object v0, Lcom/huawei/hem/jg$a;->a:Lcom/huawei/hem/jg;

    .line 3
    new-instance v1, Lcom/huawei/hem/cf;

    invoke-direct {v1}, Lcom/huawei/hem/cf;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/huawei/hem/jg;->b:Lcom/huawei/hem/jg$b;

    .line 5
    new-instance v2, Lcom/huawei/hem/mg;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1}, Lcom/huawei/hem/mg;-><init>(ILcom/huawei/hem/jg$b;)V

    iput-object v2, v0, Lcom/huawei/hem/jg;->a:Lcom/huawei/hem/mg;

    return-void
.end method
