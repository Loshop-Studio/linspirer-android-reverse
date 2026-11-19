.class public Lcom/android/launcher3/receiver/EduAppReceiver$a;
.super Ljava/lang/Object;
.source "EduAppReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/receiver/EduAppReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/receiver/EduAppReceiver;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/receiver/EduAppReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/receiver/EduAppReceiver$a;->a:Lcom/android/launcher3/receiver/EduAppReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/receiver/EduAppReceiver$a;->a:Lcom/android/launcher3/receiver/EduAppReceiver;

    invoke-virtual {v0}, Lcom/android/launcher3/receiver/EduAppReceiver;->f()V

    return-void
.end method
