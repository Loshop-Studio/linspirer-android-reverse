.class public Lcom/huawei/hem/k8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/k8$a;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/r8;

.field public b:Ljava/lang/String;

.field public c:Lcom/huawei/hem/j8;

.field public d:I

.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field public h:Lcom/huawei/hem/c8;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hem/j8;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hem/c8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/k8;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/k8;->c:Lcom/huawei/hem/j8;

    iput p2, p0, Lcom/huawei/hem/k8;->d:I

    iput-object p4, p0, Lcom/huawei/hem/k8;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/huawei/hem/k8;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/hem/k8;->g:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p7, p0, Lcom/huawei/hem/k8;->h:Lcom/huawei/hem/c8;

    return-void
.end method
