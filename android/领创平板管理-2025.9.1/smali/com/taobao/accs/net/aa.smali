.class public Lcom/taobao/accs/net/aa;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# instance fields
.field public final synthetic a:Lcom/taobao/accs/net/w;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/taobao/accs/net/aa;->a:Lcom/taobao/accs/net/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 0

    .line 1
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->a()[B

    move-result-object p1

    return-object p1
.end method
