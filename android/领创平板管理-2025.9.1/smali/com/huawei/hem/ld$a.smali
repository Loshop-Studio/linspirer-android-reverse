.class public Lcom/huawei/hem/ld$a;
.super Ljava/lang/Object;
.source "ZXKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/ld;->V(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ld;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/huawei/hem/ld$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -t filter -N  user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -F user"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -F user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -D OUTPUT -j user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -I OUTPUT  4  -j user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v1, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    const-string v2, "iptables -w -A user -j REJECT"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/ld$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 8
    iget-object v2, p0, Lcom/huawei/hem/ld$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 9
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

    .line 10
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

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\\."

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v0

    .line 13
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 14
    array-length v7, v2

    if-ne v6, v7, :cond_1

    .line 15
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_1
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    const-string v8, "0"

    invoke-static {v8, v7}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
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
    const-string v2, "iptables -w -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT"

    .line 20
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    :goto_3
    const-string v3, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 21
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 23
    sget-object v3, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    sget-object v4, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/huawei/hem/yi;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
