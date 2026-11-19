.class public Lcom/huawei/hem/lg;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

.field public final synthetic b:Lcom/huawei/hem/mg$a;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/mg$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/lg;->b:Lcom/huawei/hem/mg$a;

    iput-object p2, p0, Lcom/huawei/hem/lg;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/lg;->b:Lcom/huawei/hem/mg$a;

    iget-object v0, v0, Lcom/huawei/hem/mg$a;->c:Lcom/huawei/hem/mg;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/mg;->b:Lcom/huawei/hem/jg$b;

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/lg;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-interface {v0, v1}, Lcom/huawei/hem/jg$b;->J(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/lg;->b:Lcom/huawei/hem/mg$a;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/mg$a;->a:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/huawei/hem/lg;->a:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 7
    iget v1, v1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
