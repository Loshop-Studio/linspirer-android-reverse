.class public final synthetic Lcom/huawei/hem/al;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/huawei/hem/gl;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/hem/gl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/al;->a:Lcom/huawei/hem/gl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/al;->a:Lcom/huawei/hem/gl;

    invoke-virtual {v0}, Lcom/huawei/hem/gl;->c()V

    return-void
.end method
