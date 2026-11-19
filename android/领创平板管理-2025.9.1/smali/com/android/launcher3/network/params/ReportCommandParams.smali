.class public Lcom/android/launcher3/network/params/ReportCommandParams;
.super Lcom/android/launcher3/network/params/Params;
.source "ReportCommandParams.java"


# instance fields
.field public active:I

.field public command:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/network/params/ReportCommandParams;->active:I

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ReportCommandParams;->command:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/network/params/ReportCommandParams;->active:I

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ReportCommandParams;->command:Ljava/lang/String;

    return-void
.end method
