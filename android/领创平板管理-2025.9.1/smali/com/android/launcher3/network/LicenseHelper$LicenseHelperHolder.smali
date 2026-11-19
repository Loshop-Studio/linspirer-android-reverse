.class public final Lcom/android/launcher3/network/LicenseHelper$LicenseHelperHolder;
.super Ljava/lang/Object;
.source "LicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/LicenseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LicenseHelperHolder"
.end annotation


# static fields
.field public static final instance:Lcom/android/launcher3/network/LicenseHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/network/LicenseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/LicenseHelper;-><init>(Lcom/android/launcher3/network/LicenseHelper$1;)V

    sput-object v0, Lcom/android/launcher3/network/LicenseHelper$LicenseHelperHolder;->instance:Lcom/android/launcher3/network/LicenseHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/network/LicenseHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/LicenseHelper$LicenseHelperHolder;->instance:Lcom/android/launcher3/network/LicenseHelper;

    return-object v0
.end method
