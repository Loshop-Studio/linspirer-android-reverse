.class public Lcom/alibaba/sdk/android/push/b/b$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->setAppSecret(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/b/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$13;->b:Lcom/alibaba/sdk/android/push/b/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/b$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$13;->b:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->c(Ljava/lang/String;)V

    return-void
.end method
