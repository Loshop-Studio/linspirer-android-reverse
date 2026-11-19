.class public Lcom/huawei/hem/hc$d;
.super Ljava/lang/Thread;
.source "FileLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/io/BufferedWriter;

.field public b:Ljava/lang/String;

.field public c:J

.field public final synthetic d:Lcom/huawei/hem/hc;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/hc;Lcom/huawei/hem/hc$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/hc$d;->d:Lcom/huawei/hem/hc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "close writer exception:"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    :cond_0
    return-void
.end method

.method public final b(Lcom/huawei/hem/hc$c;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/huawei/hem/hc$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "]"

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/hc$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/hc$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/huawei/hem/hc$c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "failed to delete file that occupies log dir path: ["

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "failed to create log dir: ["

    .line 12
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 13
    invoke-static {v3}, Lcom/huawei/hem/bc;->v(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    return-void

    .line 14
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/huawei/hem/hc$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/huawei/hem/hc$c;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    const-string v5, "\n"

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/hem/hc$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    iget-object v1, p1, Lcom/huawei/hem/hc$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 19
    iget-boolean p1, p1, Lcom/huawei/hem/hc$c;->g:Z

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    const-string v0, "file log server ioexception:"

    .line 21
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hem/hc$d;->a()V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to delete directory that occupies log file path: ["

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    :goto_2
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 27
    iput-object v1, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/hc$d;->b:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    iget-object v1, p1, Lcom/huawei/hem/hc$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 31
    iget-boolean p1, p1, Lcom/huawei/hem/hc$c;->g:Z

    if-eqz p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/huawei/hem/hc$d;->a:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "file log server io exception 2:"

    .line 33
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "invalid directory path: ["

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/huawei/hem/hc$c;->b:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "invalid file name: ["

    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/huawei/hem/hc$c;->a:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/huawei/hem/f6;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/huawei/hem/hc$d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/huawei/hem/hc$d;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 7
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    cmp-long v5, v2, v0

    if-gtz v5, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    sget-object v5, Lcom/huawei/hem/hc;->c:Ljava/util/Comparator;

    .line 9
    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    array-length v5, v4

    move-wide v7, v2

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v9, v4, v6

    .line 11
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 12
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_5

    sub-long/2addr v7, v10

    cmp-long v9, v7, v0

    if-gtz v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "house keeping complete: total size ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 14
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "invalid max total size: "

    invoke-static {v3, v0, v1}, Lcom/huawei/hem/f6;->M(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/huawei/hem/hc$d$a;

    invoke-direct {v1, p0}, Lcom/huawei/hem/hc$d$a;-><init>(Lcom/huawei/hem/hc$d;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->d:Lcom/huawei/hem/hc;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/hc;->a:Ljava/util/concurrent/BlockingQueue;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/hc$c;

    .line 6
    invoke-virtual {p0, v0}, Lcom/huawei/hem/hc$d;->b(Lcom/huawei/hem/hc$c;)V

    .line 7
    iget-wide v0, v0, Lcom/huawei/hem/hc$c;->f:J

    iput-wide v0, p0, Lcom/huawei/hem/hc$d;->c:J

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->d:Lcom/huawei/hem/hc;

    .line 9
    iget-object v0, v0, Lcom/huawei/hem/hc;->a:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x2

    .line 10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/hc$c;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcom/huawei/hem/hc$d;->b(Lcom/huawei/hem/hc$c;)V

    .line 12
    iget-wide v0, v0, Lcom/huawei/hem/hc$c;->f:J

    iput-wide v0, p0, Lcom/huawei/hem/hc$d;->c:J

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/hc$d;->a()V

    .line 14
    invoke-virtual {p0}, Lcom/huawei/hem/hc$d;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "file logger service thread is interrupted"

    .line 15
    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    const-string v0, "file logger service thread stopped"

    .line 16
    invoke-static {v0}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/huawei/hem/hc$d;->d:Lcom/huawei/hem/hc;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/huawei/hem/hc;->b:Z

    return-void
.end method
