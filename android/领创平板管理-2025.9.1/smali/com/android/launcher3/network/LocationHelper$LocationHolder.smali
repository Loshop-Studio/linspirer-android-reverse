.class public Lcom/android/launcher3/network/LocationHelper$LocationHolder;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationHolder"
.end annotation


# static fields
.field public static final instance:Lcom/android/launcher3/network/LocationHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/network/LocationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/LocationHelper;-><init>(Lcom/android/launcher3/network/LocationHelper$1;)V

    sput-object v0, Lcom/android/launcher3/network/LocationHelper$LocationHolder;->instance:Lcom/android/launcher3/network/LocationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Lcom/android/launcher3/network/LocationHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/LocationHelper$LocationHolder;->instance:Lcom/android/launcher3/network/LocationHelper;

    return-object v0
.end method
