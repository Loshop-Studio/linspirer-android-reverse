.class public Lcom/android/launcher3/model/HiBoardScreen;
.super Ljava/lang/Object;
.source "HiBoardScreen.java"


# instance fields
.field public logo_path:Ljava/lang/String;

.field public module_setting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogo_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/HiBoardScreen;->logo_path:Ljava/lang/String;

    return-object v0
.end method

.method public getModule_setting()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/HiBoardScreen;->module_setting:Ljava/util/List;

    return-object v0
.end method

.method public setLogo_path(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/HiBoardScreen;->logo_path:Ljava/lang/String;

    return-void
.end method

.method public setModule_setting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/HiBoardScreen;->module_setting:Ljava/util/List;

    return-void
.end method
