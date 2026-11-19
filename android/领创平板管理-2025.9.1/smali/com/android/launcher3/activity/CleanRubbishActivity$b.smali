.class public Lcom/android/launcher3/activity/CleanRubbishActivity$b;
.super Ljava/lang/Object;
.source "CleanRubbishActivity.java"

# interfaces
.implements Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/CleanRubbishActivity;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/activity/CleanRubbishActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/CleanRubbishActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$b;->b:Lcom/android/launcher3/activity/CleanRubbishActivity;

    iput p2, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCancelButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$b;->a:I

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordClearEvent()V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$b;->b:Lcom/android/launcher3/activity/CleanRubbishActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/CleanRubbishActivity;->g(Lcom/android/launcher3/activity/CleanRubbishActivity;)V

    :cond_0
    return-void
.end method
