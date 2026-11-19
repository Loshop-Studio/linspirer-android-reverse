.class public Lcom/alibaba/sdk/android/emas/j$b$1;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/emas/j$b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/emas/j$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/j$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/j$b$1;->a:Lcom/alibaba/sdk/android/emas/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/j$b$1;->a:Lcom/alibaba/sdk/android/emas/j$b;

    iget-object v0, v0, Lcom/alibaba/sdk/android/emas/j$b;->a:Lcom/alibaba/sdk/android/emas/j;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/j;->a(Lcom/alibaba/sdk/android/emas/j;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/j$b$1;->a:Lcom/alibaba/sdk/android/emas/j$b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/j$b;->b()Lcom/alibaba/sdk/android/emas/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/e;->a(Lcom/alibaba/sdk/android/emas/f;)V

    return-void
.end method
