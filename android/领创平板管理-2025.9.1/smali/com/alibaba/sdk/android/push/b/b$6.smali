.class public Lcom/alibaba/sdk/android/push/b/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->setDoNotDisturb(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/alibaba/sdk/android/push/CommonCallback;

.field public final synthetic f:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/b/b;IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$6;->f:Lcom/alibaba/sdk/android/push/b/b;

    iput p2, p0, Lcom/alibaba/sdk/android/push/b/b$6;->a:I

    iput p3, p0, Lcom/alibaba/sdk/android/push/b/b$6;->b:I

    iput p4, p0, Lcom/alibaba/sdk/android/push/b/b$6;->c:I

    iput p5, p0, Lcom/alibaba/sdk/android/push/b/b$6;->d:I

    iput-object p6, p0, Lcom/alibaba/sdk/android/push/b/b$6;->e:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$6;->f:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/sdk/android/push/b/b$6;->a:I

    iget v3, p0, Lcom/alibaba/sdk/android/push/b/b$6;->b:I

    iget v4, p0, Lcom/alibaba/sdk/android/push/b/b$6;->c:I

    iget v5, p0, Lcom/alibaba/sdk/android/push/b/b$6;->d:I

    iget-object v6, p0, Lcom/alibaba/sdk/android/push/b/b$6;->e:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/b/a;->a(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
