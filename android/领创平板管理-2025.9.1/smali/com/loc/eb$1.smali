.class public final Lcom/loc/eb$1;
.super Ljava/lang/Object;
.source "HistoryLocationRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/loc/eb;


# direct methods
.method public constructor <init>(Lcom/loc/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->a(Lcom/loc/eb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->b(Lcom/loc/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->c(Lcom/loc/eb;)V

    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->d(Lcom/loc/eb;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->e(Lcom/loc/eb;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v0}, Lcom/loc/eb;->e(Lcom/loc/eb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/eb$1;->a:Lcom/loc/eb;

    invoke-static {v1}, Lcom/loc/eb;->f(Lcom/loc/eb;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
