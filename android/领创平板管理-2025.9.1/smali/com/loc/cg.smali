.class public final Lcom/loc/cg;
.super Lcom/loc/ez;
.source "TCellHistory.java"


# direct methods
.method public static a(Lcom/loc/ey;)I
    .locals 0

    invoke-virtual {p0}, Lcom/loc/ey;->b()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/ey;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/loc/ey;->b(I)V

    invoke-static {p0, p2}, Lcom/loc/cg;->a(Lcom/loc/ey;I)V

    invoke-static {p0, p1}, Lcom/loc/cg;->a(Lcom/loc/ey;B)V

    invoke-static {p0}, Lcom/loc/cg;->a(Lcom/loc/ey;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/ey;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/loc/ey;->a(IB)V

    return-void
.end method

.method public static a(Lcom/loc/ey;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/loc/ey;->b(II)V

    return-void
.end method
