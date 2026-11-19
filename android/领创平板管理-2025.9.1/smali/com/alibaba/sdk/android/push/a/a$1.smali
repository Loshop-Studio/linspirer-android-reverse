.class public Lcom/alibaba/sdk/android/push/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/push/a/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/a/a$1;->a:Lcom/alibaba/sdk/android/push/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/beacon/Beacon$Config;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/a/a$1;->a:Lcom/alibaba/sdk/android/push/a/a;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/push/a/a;->a(Lcom/alibaba/sdk/android/push/a/a;Ljava/util/List;)V

    return-void
.end method
