.class public final Lcom/android/launcher3/db/provider/UserDeviceInfoProvider$a;
.super Ljava/lang/Object;
.source "UserDeviceInfoProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/db/provider/UserDeviceInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.drupe.swd.launcher.huoshan.mdm.provider.CommonLoginContentProvider/users"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/db/provider/UserDeviceInfoProvider$a;->a:Landroid/net/Uri;

    return-void
.end method
