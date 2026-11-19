.class public Lcom/alibaba/sdk/android/push/b/b$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->listTags(ILcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/alibaba/sdk/android/push/CommonCallback;

.field public final synthetic c:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/b/b;ILcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$30;->c:Lcom/alibaba/sdk/android/push/b/b;

    iput p2, p0, Lcom/alibaba/sdk/android/push/b/b$30;->a:I

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/b/b$30;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$30;->c:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/sdk/android/push/b/b$30;->a:I

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/b/b$30;->b:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/push/b/a;->a(ILcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
