.class public Lcom/android/launcher3/network/params/TacticsParams;
.super Lcom/android/launcher3/network/params/Params;
.source "TacticsParams.java"


# instance fields
.field public android_id:Ljava/lang/String;

.field public launcher_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.launcher3"

    .line 2
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/params/TacticsParams;->setLauncher_version(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/TacticsParams;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncher_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/TacticsParams;->launcher_version:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/TacticsParams;->android_id:Ljava/lang/String;

    return-void
.end method

.method public setLauncher_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/TacticsParams;->launcher_version:Ljava/lang/String;

    return-void
.end method
