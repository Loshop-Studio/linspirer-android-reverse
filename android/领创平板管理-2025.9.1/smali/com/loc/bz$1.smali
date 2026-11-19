.class public final Lcom/loc/bz$1;
.super Ljava/lang/Object;
.source "WifiCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bz;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/loc/de;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/loc/bz;


# direct methods
.method public constructor <init>(Lcom/loc/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bz$1;->a:Lcom/loc/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/loc/de;Lcom/loc/de;)I
    .locals 0

    iget p1, p1, Lcom/loc/de;->c:I

    iget p0, p0, Lcom/loc/de;->c:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/loc/de;

    check-cast p2, Lcom/loc/de;

    invoke-static {p1, p2}, Lcom/loc/bz$1;->a(Lcom/loc/de;Lcom/loc/de;)I

    move-result p1

    return p1
.end method
