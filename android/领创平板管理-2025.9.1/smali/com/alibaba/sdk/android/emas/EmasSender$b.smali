.class public Lcom/alibaba/sdk/android/emas/EmasSender$b;
.super Ljava/lang/Object;
.source "EmasSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/EmasSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/emas/EmasSender;

.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final d:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->b:J

    .line 3
    iput-object p4, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->d:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->d:I

    .line 5
    iput-object p6, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->e:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->f:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->g:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$2300(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    .line 2
    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$2300(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/j;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/SendService;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->b:J

    iget-object v5, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->d:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->d:I

    iget-object v7, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Ljava/util/Map;

    .line 3
    invoke-static/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UTF-8"

    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    .line 6
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    invoke-static {v2}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$2400(Lcom/alibaba/sdk/android/emas/EmasSender;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 7
    new-instance v1, Lcom/alibaba/sdk/android/emas/g;

    iget v2, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/alibaba/sdk/android/emas/EmasSender$b;->b:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/alibaba/sdk/android/emas/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    invoke-static {}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$2500()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmasSender send failed. build data is exceed limit. current length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "EmasSender send failed. build data is null."

    .line 10
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
