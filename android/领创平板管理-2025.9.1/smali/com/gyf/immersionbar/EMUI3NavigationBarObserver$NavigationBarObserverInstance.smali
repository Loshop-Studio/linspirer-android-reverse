.class public Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;
.super Ljava/lang/Object;
.source "EMUI3NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationBarObserverInstance"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;-><init>(Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$1;)V

    sput-object v0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;->INSTANCE:Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;->INSTANCE:Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    return-object v0
.end method
