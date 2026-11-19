.class public final Lcom/loc/br$1;
.super Ljava/lang/Object;
.source "BasePool.java"

# interfaces
.implements Lcom/loc/bq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/loc/br;


# direct methods
.method public constructor <init>(Lcom/loc/br;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/br$1;->a:Lcom/loc/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/bq;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/br$1;->a:Lcom/loc/br;

    invoke-virtual {v0, p1}, Lcom/loc/br;->a(Lcom/loc/bq;)V

    return-void
.end method
