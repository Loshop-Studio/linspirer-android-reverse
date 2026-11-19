.class public Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/base/TaoBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectInfo"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x7c8c728e063e8a6aL


# instance fields
.field public connected:Z

.field public errorCode:I

.field public errordetail:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public isCenterHost:Z

.field public isInapp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 4
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 8
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    .line 9
    iput p4, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errorCode:I

    .line 10
    iput-object p5, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errordetail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "host=\'"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", isInapp="

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCenterHost="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorDetail=\'"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errordetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
