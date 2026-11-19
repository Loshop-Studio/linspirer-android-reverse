.class public Lcom/alibaba/sdk/android/tbrest/rest/c;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/rest/c$a;,
        Lcom/alibaba/sdk/android/tbrest/rest/c$b;
    }
.end annotation


# static fields
.field public static a:Lcom/alibaba/sdk/android/tbrest/rest/c;


# instance fields
.field public final a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

.field public final a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/c$b;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    .line 3
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/c$a;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/sdk/android/tbrest/rest/c;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/tbrest/rest/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/rest/c;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/tbrest/rest/c;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;

    .line 3
    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    array-length v0, p1

    if-lez v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
