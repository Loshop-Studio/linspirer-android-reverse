.class public Lcom/android/launcher3/model/TacticsIllegal;
.super Ljava/lang/Object;
.source "TacticsIllegal.java"


# static fields
.field public static final CHANGE_SIMCARD:Ljava/lang/String; = "change_simcard"

.field public static final PROHIBITED_APP:Ljava/lang/String; = "prohibited_app"

.field public static final ROOT:Ljava/lang/String; = "already_root"

.field public static final USB_TO_PC:Ljava/lang/String; = "usb_to_pc"


# instance fields
.field public already_root:Lcom/android/launcher3/db/model/Illegal;

.field public change_simcard:Lcom/android/launcher3/db/model/Illegal;

.field public prohibited_app:Lcom/android/launcher3/db/model/Illegal;

.field public usb_to_pc:Lcom/android/launcher3/db/model/Illegal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlready_root()Lcom/android/launcher3/db/model/Illegal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/TacticsIllegal;->already_root:Lcom/android/launcher3/db/model/Illegal;

    return-object v0
.end method

.method public getChange_simcard()Lcom/android/launcher3/db/model/Illegal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/TacticsIllegal;->change_simcard:Lcom/android/launcher3/db/model/Illegal;

    return-object v0
.end method

.method public getProhibited_app()Lcom/android/launcher3/db/model/Illegal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/TacticsIllegal;->prohibited_app:Lcom/android/launcher3/db/model/Illegal;

    return-object v0
.end method

.method public getUsb_to_pc()Lcom/android/launcher3/db/model/Illegal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/TacticsIllegal;->usb_to_pc:Lcom/android/launcher3/db/model/Illegal;

    return-object v0
.end method

.method public setAlready_root(Lcom/android/launcher3/db/model/Illegal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/TacticsIllegal;->already_root:Lcom/android/launcher3/db/model/Illegal;

    return-void
.end method

.method public setChange_simcard(Lcom/android/launcher3/db/model/Illegal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/TacticsIllegal;->change_simcard:Lcom/android/launcher3/db/model/Illegal;

    return-void
.end method

.method public setProhibited_app(Lcom/android/launcher3/db/model/Illegal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/TacticsIllegal;->prohibited_app:Lcom/android/launcher3/db/model/Illegal;

    return-void
.end method

.method public setUsb_to_pc(Lcom/android/launcher3/db/model/Illegal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/TacticsIllegal;->usb_to_pc:Lcom/android/launcher3/db/model/Illegal;

    return-void
.end method
