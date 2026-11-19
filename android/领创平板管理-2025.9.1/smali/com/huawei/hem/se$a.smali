.class public Lcom/huawei/hem/se$a;
.super Lcom/huawei/hem/fg$a;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/se;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/fg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public u0(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/jg$a;->a:Lcom/huawei/hem/jg;

    .line 2
    invoke-virtual {v0, p1}, Lcom/huawei/hem/jg;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method
