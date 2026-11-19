.class public Lcom/android/launcher3/db/model/SougouSetting;
.super Ljava/lang/Object;
.source "SougouSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;
    }
.end annotation


# instance fields
.field public inputMethodSet:Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputMethodSet()Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/db/model/SougouSetting;->inputMethodSet:Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    return-object v0
.end method

.method public setInputMethodSet(Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/db/model/SougouSetting;->inputMethodSet:Lcom/android/launcher3/db/model/SougouSetting$InputMethodSetBean;

    return-void
.end method
