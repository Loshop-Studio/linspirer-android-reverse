.class public Lcom/android/launcher3/network/HiScreenHelper$HiScreenHolder;
.super Ljava/lang/Object;
.source "HiScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/HiScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiScreenHolder"
.end annotation


# static fields
.field public static final instance:Lcom/android/launcher3/network/HiScreenHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/launcher3/network/HiScreenHelper;

    invoke-direct {v0}, Lcom/android/launcher3/network/HiScreenHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/network/HiScreenHelper$HiScreenHolder;->instance:Lcom/android/launcher3/network/HiScreenHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/network/HiScreenHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/network/HiScreenHelper$HiScreenHolder;->instance:Lcom/android/launcher3/network/HiScreenHelper;

    return-object v0
.end method
