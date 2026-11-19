.class public final Lcom/huawei/hem/rn;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/rn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/rn;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/huawei/hem/zn;)Lcom/huawei/hem/in;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/un;

    invoke-direct {v0, p0}, Lcom/huawei/hem/un;-><init>(Lcom/huawei/hem/zn;)V

    return-object v0
.end method

.method public static b(Lcom/huawei/hem/ao;)Lcom/huawei/hem/jn;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/vn;

    invoke-direct {v0, p0}, Lcom/huawei/hem/vn;-><init>(Lcom/huawei/hem/ao;)V

    return-object v0
.end method

.method public static c(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Ljava/net/Socket;)Lcom/huawei/hem/zn;
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/huawei/hem/sn;

    invoke-direct {v0, p0}, Lcom/huawei/hem/sn;-><init>(Ljava/net/Socket;)V

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hem/qn;

    invoke-direct {v1, v0, p0}, Lcom/huawei/hem/qn;-><init>(Lcom/huawei/hem/bo;Ljava/io/OutputStream;)V

    .line 5
    new-instance p0, Lcom/huawei/hem/dn;

    invoke-direct {p0, v0, v1}, Lcom/huawei/hem/dn;-><init>(Lcom/huawei/hem/fn;Lcom/huawei/hem/zn;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/io/File;)Lcom/huawei/hem/ao;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    new-instance p0, Lcom/huawei/hem/bo;

    invoke-direct {p0}, Lcom/huawei/hem/bo;-><init>()V

    invoke-static {v0, p0}, Lcom/huawei/hem/rn;->f(Ljava/io/InputStream;Lcom/huawei/hem/bo;)Lcom/huawei/hem/ao;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/io/InputStream;Lcom/huawei/hem/bo;)Lcom/huawei/hem/ao;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/huawei/hem/rn$a;

    invoke-direct {v0, p1, p0}, Lcom/huawei/hem/rn$a;-><init>(Lcom/huawei/hem/bo;Ljava/io/InputStream;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/net/Socket;)Lcom/huawei/hem/ao;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hem/sn;

    invoke-direct {v0, p0}, Lcom/huawei/hem/sn;-><init>(Ljava/net/Socket;)V

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/huawei/hem/rn;->f(Ljava/io/InputStream;Lcom/huawei/hem/bo;)Lcom/huawei/hem/ao;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/huawei/hem/en;

    invoke-direct {v1, v0, p0}, Lcom/huawei/hem/en;-><init>(Lcom/huawei/hem/fn;Lcom/huawei/hem/ao;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
