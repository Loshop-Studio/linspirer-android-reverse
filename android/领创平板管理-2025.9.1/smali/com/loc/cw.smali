.class public final Lcom/loc/cw;
.super Ljava/lang/Object;
.source "AmapContext.java"


# static fields
.field public static a:Z = false

.field public static volatile b:Lcom/loc/dk;


# direct methods
.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/loc/dk;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/loc/cw;->b:Lcom/loc/dk;

    :cond_0
    return-void
.end method

.method public static b()Lcom/loc/dk;
    .locals 1

    sget-object v0, Lcom/loc/cw;->b:Lcom/loc/dk;

    return-object v0
.end method
