.class public Lcom/loc/dc;
.super Ljava/lang/Object;
.source "AmapLocation.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:D

.field public e:D

.field public f:D

.field public g:F

.field public h:F

.field public i:F

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dc;->b:J

    iput-wide v0, p0, Lcom/loc/dc;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dc;->d:D

    iput-wide v0, p0, Lcom/loc/dc;->e:D

    iput-wide v0, p0, Lcom/loc/dc;->f:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/dc;->g:F

    iput v0, p0, Lcom/loc/dc;->h:F

    iput v0, p0, Lcom/loc/dc;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/dc;->j:Z

    iput-object p1, p0, Lcom/loc/dc;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/dc;)D
    .locals 8

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/loc/dc;->e:D

    iget-wide v2, p0, Lcom/loc/dc;->d:D

    iget-wide v4, p1, Lcom/loc/dc;->e:D

    iget-wide v6, p1, Lcom/loc/dc;->d:D

    invoke-static/range {v0 .. v7}, Lcom/loc/dn;->a(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
