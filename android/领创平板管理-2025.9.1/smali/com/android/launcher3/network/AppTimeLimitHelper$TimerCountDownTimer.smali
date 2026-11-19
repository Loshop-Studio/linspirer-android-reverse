.class public Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "AppTimeLimitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/network/AppTimeLimitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerCountDownTimer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/network/AppTimeLimitHelper;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;->this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/network/AppTimeLimitHelper$TimerCountDownTimer;->this$0:Lcom/android/launcher3/network/AppTimeLimitHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/network/AppTimeLimitHelper;->checkTimeLimit()V

    return-void
.end method
