.class public final Lcom/loc/eo$1;
.super Ljava/lang/Object;
.source "AuthUtil.java"

# interfaces
.implements Lcom/huawei/hem/f1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/eo;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/eo$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/huawei/hem/f1$c;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/eo$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/loc/eo;->a(Landroid/content/Context;Lcom/huawei/hem/f1$c;)Z

    return-void
.end method
