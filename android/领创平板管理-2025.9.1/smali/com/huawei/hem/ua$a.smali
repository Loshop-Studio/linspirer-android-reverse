.class public Lcom/huawei/hem/ua$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public final synthetic e:Lcom/huawei/hem/ua;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ua;)V
    .locals 2

    iput-object p1, p0, Lcom/huawei/hem/ua$a;->e:Lcom/huawei/hem/ua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hem/ua$a;->d:J

    return-void
.end method
