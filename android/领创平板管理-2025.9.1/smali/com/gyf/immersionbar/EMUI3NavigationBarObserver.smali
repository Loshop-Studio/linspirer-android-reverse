.class public final Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
.super Landroid/database/ContentObserver;
.source "EMUI3NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;
    }
.end annotation


# instance fields
.field public mApplication:Landroid/app/Application;

.field public mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gyf/immersionbar/ImmersionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mIsRegister:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;->access$000()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_is_min"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gyf/immersionbar/ImmersionCallback;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    .line 6
    :goto_1
    invoke-interface {v2, v3}, Lcom/gyf/immersionbar/OnNavigationBarListener;->onNavigationBarChange(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public register(Landroid/app/Application;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "navigationbar_is_min"

    .line 3
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public removeOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
