.class public Lcom/huawei/hem/hc$c;
.super Ljava/lang/Object;
.source "FileLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/hc$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hem/hc$c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/hc$c$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/hc$c;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/hc$c$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/hc$c;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/huawei/hem/hc$c$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/hc$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/huawei/hem/hc$c;->d:I

    .line 6
    iput v0, p0, Lcom/huawei/hem/hc$c;->e:I

    .line 7
    iget-wide v0, p1, Lcom/huawei/hem/hc$c$a;->e:J

    iput-wide v0, p0, Lcom/huawei/hem/hc$c;->f:J

    .line 8
    iget-boolean p1, p1, Lcom/huawei/hem/hc$c$a;->f:Z

    iput-boolean p1, p0, Lcom/huawei/hem/hc$c;->g:Z

    return-void
.end method
