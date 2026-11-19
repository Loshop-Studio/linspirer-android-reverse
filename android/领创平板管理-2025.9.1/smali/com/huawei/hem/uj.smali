.class public interface abstract Lcom/huawei/hem/uj;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lcom/huawei/hem/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/dj;->b:Lcom/huawei/hem/dj;

    sput-object v0, Lcom/huawei/hem/uj;->a:Lcom/huawei/hem/uj;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
