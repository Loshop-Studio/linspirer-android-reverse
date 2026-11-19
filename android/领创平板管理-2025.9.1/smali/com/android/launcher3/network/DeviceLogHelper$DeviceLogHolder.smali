.class public Lcom/android/launcher3/network/DeviceLogHelper$DeviceLogHolder;
.super Ljava/lang/Object;
.source "DeviceLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/DeviceLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceLogHolder"
.end annotation


# static fields
.field public static final instance:Lcom/android/launcher3/network/DeviceLogHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/network/DeviceLogHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/DeviceLogHelper;-><init>(Lcom/android/launcher3/network/DeviceLogHelper$1;)V

    sput-object v0, Lcom/android/launcher3/network/DeviceLogHelper$DeviceLogHolder;->instance:Lcom/android/launcher3/network/DeviceLogHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/network/DeviceLogHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/DeviceLogHelper$DeviceLogHolder;->instance:Lcom/android/launcher3/network/DeviceLogHelper;

    return-object v0
.end method
