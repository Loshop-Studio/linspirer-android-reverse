.class public final Lcom/loc/dq$a;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/loc/dq;


# direct methods
.method public constructor <init>(Lcom/loc/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/dq$a;->a:Lcom/loc/dq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dq$a;->a:Lcom/loc/dq;

    return-void
.end method

.method public final a(Lcom/loc/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dq$a;->a:Lcom/loc/dq;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/dq$a;->a:Lcom/loc/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dq$a;->a:Lcom/loc/dq;

    invoke-virtual {v0, p1}, Lcom/loc/dq;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
