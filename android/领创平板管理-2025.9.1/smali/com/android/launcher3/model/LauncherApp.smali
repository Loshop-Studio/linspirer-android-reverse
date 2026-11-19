.class public Lcom/android/launcher3/model/LauncherApp;
.super Ljava/lang/Object;
.source "LauncherApp.java"


# instance fields
.field public launch_mode:I

.field public launch_package:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLaunch_mode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/LauncherApp;->launch_mode:I

    return v0
.end method

.method public getLaunch_package()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/LauncherApp;->launch_package:Ljava/lang/String;

    return-object v0
.end method

.method public setLaunch_mode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/model/LauncherApp;->launch_mode:I

    return-void
.end method

.method public setLaunch_package(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LauncherApp;->launch_package:Ljava/lang/String;

    return-void
.end method
