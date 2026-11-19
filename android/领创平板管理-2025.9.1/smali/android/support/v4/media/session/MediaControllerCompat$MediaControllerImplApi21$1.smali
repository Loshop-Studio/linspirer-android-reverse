.class public Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    const-string v0, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2
    invoke-static {p2, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$202(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$300(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$300(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 6
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$400(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p2, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z

    .line 9
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-static {p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$200(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Dead object in registerCallback. "

    const-string v0, "MediaControllerCompat"

    .line 10
    invoke-static {p2, p1, v0}, Lcom/huawei/hem/f6;->w(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$1;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->access$302(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
