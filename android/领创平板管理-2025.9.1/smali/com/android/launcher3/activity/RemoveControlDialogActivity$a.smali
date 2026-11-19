.class public Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;
.super Ljava/lang/Object;
.source "RemoveControlDialogActivity.java"

# interfaces
.implements Lcom/huawei/hem/g3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/RemoveControlDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/RemoveControlDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;->a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 2

    const-string v0, "RemoveControlDialogActivity  downLoadFail"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;->a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->f(Lcom/android/launcher3/activity/RemoveControlDialogActivity;I)V

    return-void
.end method

.method public synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/RemoveControlDialogActivity$a;->a:Lcom/android/launcher3/activity/RemoveControlDialogActivity;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/launcher3/activity/RemoveControlDialogActivity;->f(Lcom/android/launcher3/activity/RemoveControlDialogActivity;I)V

    return-void
.end method
