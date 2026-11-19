.class public Lcom/android/launcher3/network/AppTimeLimitHelper$AppTimeLimitHolder;
.super Ljava/lang/Object;
.source "AppTimeLimitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/AppTimeLimitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTimeLimitHolder"
.end annotation


# static fields
.field public static final instance:Lcom/android/launcher3/network/AppTimeLimitHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/network/AppTimeLimitHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/AppTimeLimitHelper;-><init>(Lcom/android/launcher3/network/AppTimeLimitHelper$1;)V

    sput-object v0, Lcom/android/launcher3/network/AppTimeLimitHelper$AppTimeLimitHolder;->instance:Lcom/android/launcher3/network/AppTimeLimitHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/network/AppTimeLimitHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/AppTimeLimitHelper$AppTimeLimitHolder;->instance:Lcom/android/launcher3/network/AppTimeLimitHelper;

    return-object v0
.end method
