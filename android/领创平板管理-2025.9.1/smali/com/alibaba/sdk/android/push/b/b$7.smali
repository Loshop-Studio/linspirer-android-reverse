.class public Lcom/alibaba/sdk/android/push/b/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->closeDoNotDisturbMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$7;->a:Lcom/alibaba/sdk/android/push/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$7;->a:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->a(Z)V

    return-void
.end method
