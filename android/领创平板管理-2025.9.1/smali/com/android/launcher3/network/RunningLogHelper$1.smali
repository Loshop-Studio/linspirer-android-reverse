.class public final Lcom/android/launcher3/network/RunningLogHelper$1;
.super Ljava/lang/Object;
.source "RunningLogHelper.java"

# interfaces
.implements Lcom/huawei/hem/yb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/network/RunningLogHelper;->uploadFile(Landroid/content/Context;[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$item:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/RunningLogHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/network/RunningLogHelper$1;->val$item:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "upload log file failed:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "upload log file sucess"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/network/RunningLogHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/network/RunningLogHelper$1;->val$item:Ljava/io/File;

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/network/RunningLogHelper;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
