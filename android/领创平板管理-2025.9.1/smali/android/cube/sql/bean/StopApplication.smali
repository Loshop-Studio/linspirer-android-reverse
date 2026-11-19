.class public Landroid/cube/sql/bean/StopApplication;
.super Ljava/lang/Object;
.source "StopApplication.java"


# instance fields
.field public pid:Ljava/lang/String;

.field public pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/cube/sql/bean/StopApplication;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/cube/sql/bean/StopApplication;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/cube/sql/bean/StopApplication;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/cube/sql/bean/StopApplication;->pname:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StopApplication [pid="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/cube/sql/bean/StopApplication;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/cube/sql/bean/StopApplication;->pname:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
