.class public Lorg/android/spdy/ProtectedPointer;
.super Ljava/lang/Object;
.source "ProtectedPointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;
    }
.end annotation


# static fields
.field public static final CLOSED:J = 0x3L

.field public static final INIT:J = 0x1L

.field public static final WAIT_CLOSE:J = 0x2L


# instance fields
.field public data2protected:Ljava/lang/Object;

.field public how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

.field public referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public enter()Z
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    .line 2
    iget-object v4, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public exit()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;->close(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    return-object v0
.end method

.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->referAndstatus:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;->close(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/android/spdy/ProtectedPointer;->data2protected:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setHow2close(Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/android/spdy/ProtectedPointer;->how2close:Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;

    return-void
.end method
