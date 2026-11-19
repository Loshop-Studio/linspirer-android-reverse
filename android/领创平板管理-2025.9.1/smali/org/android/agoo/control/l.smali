.class public Lorg/android/agoo/control/l;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lorg/android/agoo/control/BaseIntentService;


# direct methods
.method public constructor <init>(Lorg/android/agoo/control/BaseIntentService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/android/agoo/control/l;->b:Lorg/android/agoo/control/BaseIntentService;

    iput-object p2, p0, Lorg/android/agoo/control/l;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/android/agoo/control/l;->b:Lorg/android/agoo/control/BaseIntentService;

    iget-object v1, p0, Lorg/android/agoo/control/l;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lorg/android/agoo/control/BaseIntentService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method
