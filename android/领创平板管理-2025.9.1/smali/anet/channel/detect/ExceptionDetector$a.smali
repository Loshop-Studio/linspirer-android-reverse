.class public Lanet/channel/detect/ExceptionDetector$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/detect/ExceptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/android/netutil/PingResponse;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/android/netutil/PingResponse;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/android/netutil/PingResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lanet/channel/detect/ExceptionDetector;


# direct methods
.method public constructor <init>(Lanet/channel/detect/ExceptionDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lanet/channel/detect/ExceptionDetector$a;->g:Lanet/channel/detect/ExceptionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lanet/channel/detect/ExceptionDetector;Lanet/channel/detect/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lanet/channel/detect/ExceptionDetector$a;-><init>(Lanet/channel/detect/ExceptionDetector;)V

    return-void
.end method
