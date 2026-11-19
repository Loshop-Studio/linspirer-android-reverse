.class public Lcom/huawei/hem/yc$a;
.super Ljava/lang/Object;
.source "JichengshixunImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/yc;->V(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/yc;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/huawei/hem/yc$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -N  user_ip"

    .line 2
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -F user"

    .line 4
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -F user_ip"

    .line 6
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -D OUTPUT -j user_ip"

    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -I OUTPUT  4  -j user_ip"

    .line 10
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    const-string v1, "iptables  -A user -j REJECT"

    .line 12
    invoke-virtual {v0, v1}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/yc$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 14
    iget-object v2, p0, Lcom/huawei/hem/yc$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 15
    invoke-static {v2}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "#"

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/huawei/hem/de;->q(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/huawei/hem/de;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".0/24"

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".0.0/16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    const-string v4, "."

    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\\."

    .line 18
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v0

    .line 19
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 20
    array-length v7, v2

    if-ne v6, v7, :cond_1

    .line 21
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 22
    :cond_1
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    const-string v8, "0"

    invoke-static {v8, v7}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    :cond_2
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move v4, v6

    goto :goto_1

    :cond_3
    const-string v2, "iptables -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT"

    .line 26
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    :goto_3
    const-string v3, "iptables -A user_ip -d # -j ACCEPT"

    .line 27
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 29
    sget-object v3, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    .line 30
    invoke-virtual {v3, v2}, Lcom/huawei/hem/c6;->d(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
