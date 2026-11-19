.class public final Lcom/loc/dv$2;
.super Ljava/lang/Object;
.source "AgeEstimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/loc/dv;


# direct methods
.method public constructor <init>(Lcom/loc/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->b(Lcom/loc/dv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->c(Lcom/loc/dv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->d(Lcom/loc/dv;)V

    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->e(Lcom/loc/dv;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->f(Lcom/loc/dv;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v0}, Lcom/loc/dv;->f(Lcom/loc/dv;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dv$2;->a:Lcom/loc/dv;

    invoke-static {v1}, Lcom/loc/dv;->g(Lcom/loc/dv;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
