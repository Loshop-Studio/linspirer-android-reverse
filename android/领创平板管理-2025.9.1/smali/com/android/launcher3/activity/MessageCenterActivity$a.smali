.class public Lcom/android/launcher3/activity/MessageCenterActivity$a;
.super Landroid/os/Handler;
.source "MessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/activity/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/MessageCenterActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/MessageCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/MessageCenterActivity$a;->a:Lcom/android/launcher3/activity/MessageCenterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/MessageCenterActivity$a;->a:Lcom/android/launcher3/activity/MessageCenterActivity;

    invoke-static {p1}, Lcom/android/launcher3/activity/MessageCenterActivity;->f(Lcom/android/launcher3/activity/MessageCenterActivity;)V

    return-void
.end method
