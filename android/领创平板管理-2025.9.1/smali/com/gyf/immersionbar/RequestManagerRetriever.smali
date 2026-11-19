.class public Lcom/gyf/immersionbar/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/RequestManagerRetriever$Holder;
    }
.end annotation


# static fields
.field public static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field public static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mPendingFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/gyf/immersionbar/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingSupportFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/gyf/immersionbar/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingFragments:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingSupportFragments:Ljava/util/Map;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gyf/immersionbar/RequestManagerRetriever$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/RequestManagerRetriever;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/RequestManagerFragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getFragment(Landroid/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/RequestManagerFragment;

    move-result-object p1

    return-object p1
.end method

.method private getFragment(Landroid/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/RequestManagerFragment;
    .locals 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/RequestManagerFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingFragments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/RequestManagerFragment;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/gyf/immersionbar/RequestManagerFragment;

    invoke-direct {v0}, Lcom/gyf/immersionbar/RequestManagerFragment;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingFragments:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    iget-object p2, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/gyf/immersionbar/RequestManagerRetriever;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/RequestManagerRetriever$Holder;->access$100()Lcom/gyf/immersionbar/RequestManagerRetriever;

    move-result-object v0

    return-object v0
.end method

.method private getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/SupportRequestManagerFragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    move-result-object p1

    return-object p1
.end method

.method private getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/SupportRequestManagerFragment;
    .locals 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingSupportFragments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    invoke-direct {v0}, Lcom/gyf/immersionbar/SupportRequestManagerFragment;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingSupportFragments:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    iget-object p2, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public destroy(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->get(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->onDestroy()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getFragment(Landroid/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/RequestManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/gyf/immersionbar/RequestManagerFragment;->get(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->onDestroy()V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    return-void
.end method

.method public get(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    const-string v0, "activity is null"

    .line 1
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->get(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/RequestManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/RequestManagerFragment;->get(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    const-string v0, "activity is null"

    .line 22
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog is null"

    .line 23
    invoke-static {p2, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 26
    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->get(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/RequestManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gyf/immersionbar/RequestManagerFragment;->get(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    const-string v0, "fragment is null"

    .line 14
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.getActivity() is null"

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "fragment.getDialog() is null"

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 19
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/RequestManagerFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gyf/immersionbar/RequestManagerFragment;->get(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/support/v4/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    const-string v0, "fragment is null"

    .line 6
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "fragment.getActivity() is null"

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p1, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 9
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "fragment.getDialog() is null"

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/RequestManagerRetriever;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getSupportFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/gyf/immersionbar/SupportRequestManagerFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gyf/immersionbar/SupportRequestManagerFragment;->get(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/FragmentManager;

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingSupportFragments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/FragmentManager;

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/RequestManagerRetriever;->mPendingFragments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1
.end method
